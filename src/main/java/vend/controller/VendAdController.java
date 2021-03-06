package vend.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import vend.entity.VendAd;
import vend.service.CodeLibraryService;
import vend.service.VendAdService;

@Controller
@RequestMapping("/ad")
public class VendAdController{
	public static Logger logger = Logger.getLogger(VendAdController.class);
	
	@Autowired
	VendAdService vendAdService;
	@Autowired
	CodeLibraryService codeLibraryService;
	/**
	 * 根据输入信息条件查询广告列表，并分页显示
	 * @param model
	 * @param vendAd
	 * @param page
	 * @param request
	 * @return
	 */
	@RequiresPermissions({"ad:ads"})
	@RequestMapping(value="/ads")
	public String listVendAd(Model model,@ModelAttribute VendAd vendAd, @ModelAttribute Page page,HttpServletRequest request) {
		String currentPageStr = request.getParameter("currentPage");
		logger.info(currentPageStr + "===========");
		if(currentPageStr != null){
			int currentPage = Integer.parseInt(currentPageStr);
			page.setCurrentPage(currentPage);
		}
		logger.info(page.toString());
		logger.info(vendAd.toString());
		List<CodeLibrary> adscreens=codeLibraryService.selectByCodeNo("ADSCREEN");
		model.addAttribute("adscreens", adscreens);
		List<VendAd> vendAds = vendAdService.listVendAd(vendAd, page);
		model.addAttribute("vendAds",vendAds);
		return "manage/ad/ad_list";
	}
	/**
	 * 跳转广告信息添加界面
	 * @param model
	 * @return
	 */
	@RequiresPermissions({"ad:add"})
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		List<CodeLibrary> adscreens=codeLibraryService.selectByCodeNo("ADSCREEN");
		model.addAttribute("adscreens", adscreens);
		List<CodeLibrary> uppictypes=codeLibraryService.selectByCodeNo("UPPICTYPE");
		model.addAttribute("uppictypes", uppictypes);
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
		model.addAttribute(new VendAd());
		return "manage/ad/ad_add";
	}
   /**
    * 添加广告信息
    * @param request
    * @param model
    * @param vendAd
    * @param br
    * @return
    */
	@RequiresPermissions({"ad:add"})
    @RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(HttpServletRequest request,Model model,@Validated VendAd vendAd,BindingResult br){
		List<CodeLibrary> adscreens=codeLibraryService.selectByCodeNo("ADSCREEN");
		model.addAttribute("adscreens", adscreens);
    	List<CodeLibrary> uppictypes=codeLibraryService.selectByCodeNo("UPPICTYPE");
		model.addAttribute("uppictypes", uppictypes);
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
    	if(br.hasErrors()){
    		return "manage/ad/ad_add";
    	}
    	vendAdService.insertVendAd(vendAd);
    	return "redirect:ads";
	}
    /**
	 * 跳转广告修改界面
	 * @param model
	 * @return
	 */
	@RequiresPermissions({"ad:edit"})
	@RequestMapping(value="/{id}/edit",method=RequestMethod.GET)
	public String edit(Model model,@PathVariable int id){
		List<CodeLibrary> adscreens=codeLibraryService.selectByCodeNo("ADSCREEN");
		model.addAttribute("adscreens", adscreens);
		List<CodeLibrary> uppictypes=codeLibraryService.selectByCodeNo("UPPICTYPE");
		model.addAttribute("uppictypes", uppictypes);
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
		VendAd vendAd=vendAdService.getOne(id);
		model.addAttribute(vendAd);
		return "manage/ad/ad_edit";
	}
	/**
	 * 修改广告信息
	 * @param request
	 * @param model
	 * @param vendAd
	 * @param br
	 * @return
	 */
	@RequiresPermissions({"ad:edit"})
    @RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(HttpServletRequest request,Model model,@Validated VendAd vendAd,BindingResult br){
		List<CodeLibrary> adscreens=codeLibraryService.selectByCodeNo("ADSCREEN");
		model.addAttribute("adscreens", adscreens);
    	List<CodeLibrary> uppictypes=codeLibraryService.selectByCodeNo("UPPICTYPE");
		model.addAttribute("uppictypes", uppictypes);
		List<CodeLibrary> upvideotypes=codeLibraryService.selectByCodeNo("UPVIDEOTYPE");
		model.addAttribute("upvideotypes", upvideotypes);
    	if(br.hasErrors()){
    		return "manage/ad/ad_edit";
    	}
    	vendAdService.editVendAd(vendAd);
		return "redirect:ads";
	}
    /**
     * 删除广告信息
     * @param user
     * @param br
     * @return
     */
	@RequiresPermissions({"ad:del"})
    @RequestMapping(value="/{id}/del")
 	public String del(@PathVariable Integer id){
    	vendAdService.delVendAd(id);;
 		return "redirect:/ad/ads";
 	}
    /**
     * 批量删除广告信息
     * @param ids
     * @return
     */
	@RequiresPermissions({"ad:dels"})
    @RequestMapping(value="/dels")
  	public String dels(HttpServletRequest request){
    	String ids=request.getParameter("ids");
    	String idArray[]=ids.split(",");
    	int[] idArray1=new int[idArray.length];
    	for(int i=0;i<idArray.length;i++){
    		idArray1[i]=Function.getInt(idArray[i], 0);
    	}
    	vendAdService.delVendAds(idArray1);
  		return "redirect:/ad/ads";
  	}
}
