package vend.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import base.util.Function;
import base.util.Page;
import vend.entity.CodeLibrary;
import vend.entity.VendMachine;
import vend.entity.VendUser;
import vend.service.CodeLibraryService;
import vend.service.VendMachineService;

@Controller
@RequestMapping("/machine")
public class VendMachineController{
	public static Logger logger = Logger.getLogger(VendMachineController.class);
	
	@Autowired
	VendMachineService vendMachineService;
	@Autowired
	CodeLibraryService codeLibraryService;
	/**
	 * 根据输入信息条件查询广告列表，并分页显示
	 * @param model
	 * @param vendMachine
	 * @param page
	 * @param request
	 * @return
	 */
	@RequiresPermissions({"machine:machines"})
	@RequestMapping(value="/machines")
	public String listVendMachine(Model model,@ModelAttribute VendMachine vendMachine, @ModelAttribute Page page,HttpServletRequest request) {
		String currentPageStr = request.getParameter("currentPage");
		logger.info(currentPageStr + "===========");
		if(currentPageStr != null){
			int currentPage = Integer.parseInt(currentPageStr);
			page.setCurrentPage(currentPage);
		}
		logger.info(page.toString());
		logger.info(vendMachine.toString());
		HttpSession session=request.getSession();
		VendUser user=(VendUser)session.getAttribute("vendUser");
		if(user!=null){
			vendMachine.setUsercode(user.getUsercode());
		}
		List<CodeLibrary> usestatus=codeLibraryService.selectByCodeNo("USESTATUS");
		model.addAttribute("usestatus", usestatus);
		List<VendMachine> vendMachines = vendMachineService.listVendMachine(vendMachine, page);
		model.addAttribute("vendMachines",vendMachines);
		return "manage/machine/machine_list";
	}
	/**
	 * 开机
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}/open")
	public String openMachine(@PathVariable int id){
		VendMachine vendMachine=vendMachineService.getOne(id);
		if(vendMachine!=null){
			vendMachine.setUseStatus("1");
			vendMachineService.editVendMachine(vendMachine);
		}
		return "redirect:../machines"; 
	}
	/**
	 * 关机
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}/shutdown")
	public String shutDownMachine(@PathVariable int id){
		VendMachine vendMachine=vendMachineService.getOne(id);
		if(vendMachine!=null){
			vendMachine.setUseStatus("2");
			vendMachineService.editVendMachine(vendMachine);
		}
		return "redirect:../machines"; 
	}
	/**
	 * 重启
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}/reboot")
	public String reBootMachine(@PathVariable int id){
		//VendMachine vendMachine=vendMachineService.getOne(id);
		return "redirect:../machines"; 
	}
	/**
	 * 详情
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}/detail")
	public String detail(Model model,@PathVariable int id){
		VendMachine vendMachine=vendMachineService.getOne(id);
		model.addAttribute("vendMachine", vendMachine);
		return "manage/machine/machine_detail"; 
	}
	/**
	 * 跳转广告信息添加界面
	 * @param model
	 * @return
	 */
	@RequiresPermissions({"machine:add"})
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String machined(Model model){
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
		model.addAttribute(new VendMachine());
		return "manage/machine/machine_add";
	}
   /**
    * 添加广告信息
    * @param request
    * @param model
    * @param vendMachine
    * @param br
    * @return
    */
	@RequiresPermissions({"machine:add"})
    @RequestMapping(value="/add",method=RequestMethod.POST)
	public String machined(HttpServletRequest request,Model model,@Validated VendMachine vendMachine,BindingResult br){
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
    	if(br.hasErrors()){
    		return "manage/machine/machine_add";
    	}
    	vendMachineService.insertVendMachine(vendMachine);
    	return "redirect:machines";
	}
    /**
	 * 跳转广告修改界面
	 * @param model
	 * @return
	 */
	@RequiresPermissions({"machine:edit"})
	@RequestMapping(value="/{id}/edit",method=RequestMethod.GET)
	public String edit(Model model,@PathVariable int id){
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
		VendMachine vendMachine=vendMachineService.getOne(id);
		model.addAttribute(vendMachine);
		return "manage/machine/machine_edit";
	}
	/**
	 * 修改广告信息
	 * @param request
	 * @param model
	 * @param vendMachine
	 * @param br
	 * @return
	 */
	@RequiresPermissions({"machine:edit"})
    @RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(HttpServletRequest request,Model model,@Validated VendMachine vendMachine,BindingResult br){
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
    	if(br.hasErrors()){
    		return "manage/machine/machine_edit";
    	}
    	int isOk=vendMachineService.editVendMachine(vendMachine);
		return "redirect:machines";
	}
    /**
     * 删除广告信息
     * @param user
     * @param br
     * @return
     */
	@RequiresPermissions({"machine:del"})
    @RequestMapping(value="/{id}/del")
 	public String del(@PathVariable Integer id){
    	vendMachineService.delVendMachine(id);;
 		return "redirect:/machine/machines";
 	}
    /**
     * 批量删除广告信息
     * @param ids
     * @return
     */
	@RequiresPermissions({"machine:dels"})
    @RequestMapping(value="/dels")
  	public String dels(HttpServletRequest request){
    	String ids=request.getParameter("ids");
    	String idArray[]=ids.split(",");
    	int[] idArray1=new int[idArray.length];
    	for(int i=0;i<idArray.length;i++){
    		idArray1[i]=Function.getInt(idArray[i], 0);
    	}
    	int isOk=vendMachineService.delVendMachines(idArray1);
  		return "redirect:/machine/machines";
  	}
}