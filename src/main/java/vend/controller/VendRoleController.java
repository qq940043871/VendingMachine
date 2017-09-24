package vend.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import base.util.CacheUtils;
import base.util.DateUtil;
import base.util.Function;
import base.util.Page;
import net.sf.json.JSONArray;
import vend.entity.VendRole;
import vend.entity.VendRolePermission;
import vend.entity.VendUser;
import vend.entity.ZNode;
import vend.service.VendRolePermissionService;
import vend.service.VendRoleService;

@Controller
@RequestMapping("/role")
public class VendRoleController{
	public static Logger logger = Logger.getLogger(VendRoleController.class);
	
	@Autowired
	VendRoleService vendRoleService;
	@Autowired
	VendRolePermissionService vendRolePermissionService;
	/**
	 * 根据输入信息条件查询角色列表，并分页显示
	 * @param model
	 * @param vendRole
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/roles")
	public String listVendRole(Model model,@ModelAttribute VendRole vendRole, @ModelAttribute Page page,HttpServletRequest request) {
		String currentPageStr = request.getParameter("currentPage");
		logger.info(currentPageStr + "===========");
		if(currentPageStr != null){
			int currentPage = Integer.parseInt(currentPageStr);
			page.setCurrentPage(currentPage);
		}
		logger.info(page.toString());
		logger.info(vendRole.toString());
		HttpSession session=request.getSession();
    	VendUser user=(VendUser)session.getAttribute("vendUser");
    	if(user!=null){
    		model.addAttribute("roleId", user.getRoleId());
    	}else{
    		model.addAttribute("roleId", 1);
    	}
		List<VendRole> vendRoles = vendRoleService.listVendRole(vendRole, page);
		model.addAttribute("vendRoles",vendRoles);
		return "manage/role/role_list";
	}
	/**
	 * 得到菜单Json数据
	 * @param model
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/getJson",method=RequestMethod.POST)
	public void getJson(Model model,HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
    	VendUser user=(VendUser)session.getAttribute("vendUser");
		List<VendRole> vendRoles = vendRoleService.findNextAll(user.getRoleId());
		List<ZNode> list=new ArrayList<ZNode>();
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
		for(VendRole vendRole:vendRoles){
			ZNode zNode=new ZNode();
			zNode.setId(vendRole.getId());
			zNode.setpId(vendRole.getParentId());
			zNode.setName(vendRole.getRoleName());
			zNode.setFile(basePath+"/role/"+vendRole.getId()+"/edit");
		    zNode.setOpen(true);
		    list.add(zNode);
		}
		JSONArray json = JSONArray.fromObject(list);
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		out.print(json);
	}
	/**
	 * 跳转角色权限添加界面
	 * @return
	 */
	@RequestMapping(value="/{id}/{pid}/addpermission",method=RequestMethod.GET)
	public String addpermission(Model model,@PathVariable int id,@PathVariable int pid){
		VendRole vendRole=new VendRole();
		vendRole.setId(id);
		vendRole.setParentId(pid);
		model.addAttribute(vendRole);
		return "manage/role/role_permission_add";
	}
	/**
	 * 角色权限添加
	 * @return
	 */
	@RequestMapping(value="/addpermission",method=RequestMethod.POST)
	public String addpermission(HttpServletRequest request){
		String roleId=request.getParameter("id");
		int roleId1=Function.getInt(roleId, 0);	
		String pid=request.getParameter("pid");
		int pid1=Function.getInt(pid, 0);
		List<VendRolePermission> vendRolePermissions=vendRolePermissionService.selectByRoleId(roleId1);
		Map<Integer,Integer> map=new HashMap<Integer,Integer>();//上次设置的权限
		for(VendRolePermission vendRolePermission:vendRolePermissions){
			map.put(vendRolePermission.getPermissionId(), vendRolePermission.getId());
		}
		
		Date createTime=DateUtil.parseDateTime(DateUtil.getCurrentDateTimeStr());//创建时间
		String permissionId=request.getParameter("nodeIds");
		String permissionIdArray[]=Function.stringSpilit(permissionId, ",");//本次设置的权限
		for(String id:permissionIdArray){
	  		int id1=Integer.parseInt(id);
	  		boolean iscontain=map.containsKey(id1);
	  		if(iscontain){
	  			map.remove(id1);
	  		}else{
	  			VendRolePermission vendRolePermission1=new VendRolePermission();
	  			vendRolePermission1.setRoleId(roleId1);
	  			vendRolePermission1.setPermissionId(id1);
	  			vendRolePermission1.setCreateTime(createTime);
	  			vendRolePermission1.setUpdateTime(createTime);
	  			vendRolePermissionService.insertVendRolePermission(vendRolePermission1);
	  		}
	  	}
		
		 for (Integer in : map.keySet()) {
		    	//map.keySet()返回的是所有key的值
	            int upid = map.get(in);//得到每个key多对用value的值
	            vendRolePermissionService.deleteVendRolePermission(upid);//上一次选中这一次没选中的删掉
	     }
		 
		 CacheUtils.remove("userCache", "key_getRoles"+roleId1);//移除缓存
		 
		 return "redirect:"+roleId1+"/"+pid1+"/addpermission";
	}
	  /**
	    * 跳转到菜单设置界面
	    * @param model
	    * @param id
	    * @return
	    */
	  @RequestMapping(value="/{id}/{pid}/addmenuitem",method=RequestMethod.GET)
	  public String setmenu(Model model,@PathVariable Integer id,@PathVariable int pid){
		VendRole vendRole=new VendRole();
		vendRole.setId(id);
		vendRole.setParentId(pid);
		model.addAttribute(vendRole);
	 	return "manage/role/role_menuitem_add";
	  }
	  /**
	   * 角色菜单设置
	   * @param model
	   * @param id
	   * @return
	   */
	 @RequestMapping(value="/addmenuitem",method=RequestMethod.POST)
	 public String setmenu(HttpServletRequest request){
		String id=request.getParameter("id");
		Integer roleId1=Integer.valueOf(id);
		String menuList=request.getParameter("nodeIds");
		
		VendRole vendRole=vendRoleService.getOne(roleId1);
		if(vendRole!=null){
			vendRole.setExtend1(menuList);
			vendRoleService.editVendRole(vendRole);
		}
		return "redirect:/role/roles";
	 }
	/**
	 * 跳转角色信息添加界面
	 * @param model
	 * @param pid
	 * @return
	 */
	@RequestMapping(value="/{pid}/add",method=RequestMethod.GET)
	public String add(Model model,@PathVariable int pid){
		model.addAttribute("pid", pid);
		model.addAttribute(new VendRole());
		return "manage/role/role_add";
	}
   /**
    * 添加角色信息
    * @param model
    * @param vendRole
    * @param br
    * @return
    */
    @RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Model model,@Validated VendRole vendRole,BindingResult br){
    	VendRole vendRole1= vendRoleService.selectByRoleName(vendRole.getRoleName());
    	if(vendRole1!=null){
    		br.rejectValue("roleName", "NotRepeat", "角色名重复");
    	}
    	if(br.hasErrors()){
    		return "manage/role/role_add";
    	}
    	vendRoleService.insertVendRole(vendRole);
    	return "redirect:roles";
	}
    /**
	 * 跳转角色修改界面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{id}/edit",method=RequestMethod.GET)
	public String edit(Model model,@PathVariable int id){
		VendRole vendRole=vendRoleService.getOne(id);
		model.addAttribute(vendRole);
		return "manage/role/role_edit";
	}
	/**
	 * 修改角色信息
	 * @param model
	 * @param vendRole
	 * @param br
	 * @return
	 */
    @RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Model model,@Validated VendRole vendRole,BindingResult br){
    	if(br.hasErrors()){
    		return "manage/role/role_edit";
    	}
    	vendRoleService.editVendRole(vendRole);
		return "redirect:roles";
	}
    /**
     * 删除角色信息
     * @param user
     * @param br
     * @return
     */
    @RequestMapping(value="/{id}/del")
 	public String del(@PathVariable Integer id){
    	vendRoleService.delVendRole(id);;
 		return "redirect:/role/roles";
 	}
    /**
     * 批量删除角色信息
     * @param ids
     * @return
     */
    @RequestMapping(value="/dels")
  	public String dels(HttpServletRequest request){
    	String ids=request.getParameter("ids");
    	String idArray[]=ids.split(",");
    	int[] idArray1=new int[idArray.length];
    	for(int i=0;i<idArray.length;i++){
    		idArray1[i]=Function.getInt(idArray[i], 0);
    	}
    	vendRoleService.delVendRoles(idArray1);
  		return "redirect:/role/roles";
  	}
}
