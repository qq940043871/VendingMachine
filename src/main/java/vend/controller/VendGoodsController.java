package vend.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.bind.annotation.ResponseBody;

import base.util.FileUploadUtils;
import base.util.Function;
import base.util.Page;
import vend.entity.VendGoods;
import vend.service.VendGoodsService;
import vend.service.VendParaService;

@Controller
@RequestMapping("/goods")
public class VendGoodsController{
	public static Logger logger = Logger.getLogger(VendGoodsController.class);
	
	@Autowired
	VendGoodsService vendGoodsService;
	@Autowired
	VendParaService vendParaService;
	/**
	 * 根据输入信息条件查询商品列表，并分页显示
	 * @param model
	 * @param vendGoods
	 * @param page
	 * @param request
	 * @return
	 */
	@RequiresPermissions({"goods:goodss"})
	@RequestMapping(value="/goodss")
	public String listVendGoods(Model model,@ModelAttribute VendGoods vendGoods, @ModelAttribute Page page,HttpServletRequest request) {
		
		
		String currentPageStr = request.getParameter("currentPage");
		logger.info(currentPageStr + "===========");
		if(currentPageStr != null){
			int currentPage = Integer.parseInt(currentPageStr);
			page.setCurrentPage(currentPage);
		}
		logger.info(page.toString());
		logger.info(vendGoods.toString());
		List<VendGoods> vendGoodss = vendGoodsService.listVendGoods(vendGoods, page);
		model.addAttribute("vendGoodss",vendGoodss);
		return "manage/goods/goods_list";
	}
	/**
	 * 得到商品Json数据
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/jgoodss",method=RequestMethod.GET,produces = "application/json;charset=UTF-8")
	//@RequestMapping(value="/jgoodss",method=RequestMethod.GET)
	public @ResponseBody List<VendGoods> getJson(HttpServletRequest request,HttpServletResponse response) throws IOException {
		List<VendGoods> vendGoodss = vendGoodsService.findAll();
		String path = vendParaService.selectByParaCode("basePath");
		if(vendGoodss.size()>3){
			vendGoodss=vendGoodss.subList(0, 3);
		}
		for(VendGoods vendGoods:vendGoodss){
			if(vendGoods.getPic()!=null&&vendGoods.getPic().indexOf("http")==-1){
				vendGoods.setPic(path+vendGoods.getPic());
			}
		}
		return vendGoodss;
		//JSONArray json = JSONArray.fromObject(vendGoodss);
		//response.setCharacterEncoding("UTF-8");
		//PrintWriter out=response.getWriter();
		//out.print(json);
	}
	/**
	 * 跳转商品信息添加界面
	 * @param model
	 * @return
	 */
	@RequiresPermissions({"goods:add"})
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		model.addAttribute(new VendGoods());
		return "manage/goods/goods_add";
	}
   /**
    * 添加商品信息
    * @param request
    * @param model
    * @param vendGoods
    * @param br
    * @return
    */
	@RequiresPermissions({"goods:add"})
    @RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(HttpServletRequest request,Model model,@Validated VendGoods vendGoods,BindingResult br){
    	if(br.hasErrors()){
    		return "manage/goods/goods_add";
    	}
    	vendGoodsService.insertVendGoods(vendGoods);
    	return "redirect:goodss";
	}
    /**
	 * 跳转商品修改界面
	 * @param model
	 * @return
	 */
	@RequiresPermissions({"goods:edit"})
	@RequestMapping(value="/{id}/edit",method=RequestMethod.GET)
	public String edit(Model model,@PathVariable int id){
		VendGoods vendGoods=vendGoodsService.getOne(id);
		model.addAttribute(vendGoods);
		return "manage/goods/goods_edit";
	}
	/**
	 * 修改商品信息
	 * @param request
	 * @param model
	 * @param vendGoods
	 * @param br
	 * @return
	 */
	@RequiresPermissions({"goods:edit"})
    @RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(HttpServletRequest request,Model model,@Validated VendGoods vendGoods,BindingResult br){
    	if(br.hasErrors()){
    		return "manage/goods/goods_edit";
    	}
    	vendGoodsService.editVendGoods(vendGoods);
		return "redirect:goodss";
	}
    /**
     * 删除商品信息
     * @param user
     * @param br
     * @return
     */
	@RequiresPermissions({"goods:del"})
    @RequestMapping(value="/{id}/del")
 	public String del(@PathVariable Integer id){
    	vendGoodsService.delVendGoods(id);;
 		return "redirect:/goods/goodss";
 	}
    /**
     * 批量删除商品信息
     * @param ids
     * @return
     */
	@RequiresPermissions({"goods:dels"})
    @RequestMapping(value="/dels")
  	public String dels(HttpServletRequest request){
    	String ids=request.getParameter("ids");
    	String idArray[]=ids.split(",");
    	int[] idArray1=new int[idArray.length];
    	for(int i=0;i<idArray.length;i++){
    		idArray1[i]=Function.getInt(idArray[i], 0);
    	}
    	vendGoodsService.delVendGoodss(idArray1);
  		return "redirect:/goods/goodss";
  	}
}
