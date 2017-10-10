package vend.controller;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import base.util.Const;
import base.util.DateUtil;
import base.util.Function;
import vend.entity.UserCoupon;
import vend.entity.VendAccount;
import vend.entity.VendMachine;
import vend.entity.VendOrder;
import vend.entity.VendRole;
import vend.entity.VendSyslog;
import vend.entity.VendUser;
import vend.service.UserCouponService;
import vend.service.VendAccountService;
import vend.service.VendMachineService;
import vend.service.VendOrderService;
import vend.service.VendRoleService;
import vend.service.VendSyslogService;
import vend.service.VendUserService;

@Controller
public class LoginController extends LogoutFilter{
	public static Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	VendUserService vendUserService;
	@Autowired
	VendMachineService vendMachineService;
	@Autowired
	VendAccountService vendAccountService;
	@Autowired
	VendOrderService vendOrderService;
	@Autowired
	UserCouponService userCouponService;
	@Autowired
	VendSyslogService vendSyslogService;
	@Autowired
	VendRoleService vendRoleService;
	@RequestMapping(value="/login",method=RequestMethod.GET)
    public String login(){
		Subject subject=SecurityUtils.getSubject();
		if (subject.isAuthenticated()) {  
            return "redirect:welcome";  
        }else{
        	return "login";
        }
    }
	 /**
	  * 主界面
	  * @param request
	  * @param model
	  * @return
	  */
	@RequestMapping(value="/welcome",method=RequestMethod.GET)
    public String welcome(HttpServletRequest request,Model model){
		/**
		 * 每天销售统计
		 */
		HttpSession session=request.getSession();
	    VendUser vendUser=(VendUser)session.getAttribute("vendUser");
	    String usercodelist="";
	    if(vendUser!=null){
	    	usercodelist=vendUserService.getNextUsers(vendUser.getUsercode());
	    	if(usercodelist==null){
	    		usercodelist="";
	    	}
	    }
	    
	    String usercodeArray[]=Function.stringSpilit(usercodelist, ",");
	    List<VendMachine> vendMachines=vendMachineService.selectByUsercode(usercodeArray);
	    String mochinecodelist="";
	    for(VendMachine vendMachine:vendMachines){
	    	if(vendMachine!=null&&vendMachine.getMachineCode()!=null){
	    		mochinecodelist+=vendMachine.getMachineCode()+",";
	    	}
	    }
	    String mochinecodeArray[]=Function.stringSpilit(mochinecodelist, ",");
	    
	    //当天销售量
	    VendOrder vendOrder=new VendOrder();
	    vendOrder.setExtend1("1");
	    String beginTime=DateUtil.getCurrentDateStr();
	    String endTime=DateUtil.format(DateUtil.addDays(DateUtil.parseDate(beginTime),1));
	    List<VendOrder> vendOrders=new ArrayList();
	    if(mochinecodeArray.length==0){
	    	vendOrders =vendOrderService.selectByParams1(vendOrder,beginTime, endTime);
	    }else{
	    	vendOrders =vendOrderService.selectByParams(vendOrder,mochinecodeArray,beginTime, endTime);
	    }
	    
	    int user_num=0;//消费用户数
	    int sell_num=0;//销售量
	    double sell_amount=0.0;//销售金额
	    int free_num=0;//免费数量
	    String buyusers="";
	    for(VendOrder vendOrder1:vendOrders){
	    	if(vendOrder1!=null&&vendOrder1.getUsercode()!=null){
	    		if(buyusers.indexOf(vendOrder1.getUsercode()+",")==-1){
	    			buyusers+=vendOrder1.getUsercode()+",";
	    			user_num++;
	    		}
	    	}
	    	if(vendOrder1!=null&&vendOrder1.getNum()!=null){
	    		    sell_num+=vendOrder1.getNum();
	    	}
	    	if(vendOrder1!=null&&vendOrder1.getAmount()!=null){
	    		    sell_amount+=vendOrder1.getAmount().doubleValue();
	    	}
	    	if(vendOrder1!=null&&vendOrder1.getFreeStatus()!=null&&vendOrder1.getFreeStatus().equals("1")){
	    		    free_num++;
    	    }
	    }
	    Map<String,Object> map=new HashMap<String,Object>();
	    map.put("user_num", user_num);
	    map.put("sell_num", sell_num);
	    map.put("sell_amount", sell_amount);
	    map.put("free_num", free_num);
	    model.addAttribute("map", map);
	    
        return "welcome";
    }
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Model model, HttpServletRequest request) throws Exception{
		Subject subject=SecurityUtils.getSubject();
		String username = request.getParameter("userName");
		String wjmpassword=request.getParameter("password");
		if(wjmpassword==null){
			wjmpassword="000000";
		}
		logger.info("---------------未加密的密码wjmpassword----------------------"+wjmpassword);
		String password =Function.getEncrypt(wjmpassword);
		logger.info("---------------加密的密码password----------------------"+password);
		String verificode=request.getParameter("verificode");//验证码
		HttpSession session=request.getSession();
		String maskcode=(String)session.getAttribute(Const.SESSION_SECURITY_CODE);
		
		if("".equals(verificode)){
			 model.addAttribute("errorverificode", "请填写验证码");
			 return "login";
		}
		if(!maskcode.equals(verificode)){
			 model.addAttribute("errorverificode", "验证码不匹配");
			 return "login";
		}
		if("".equals(username)){
			 model.addAttribute("erroruserName", "请填写用户名");
			 return "login";
		}
		if("".equals(password)){
			 model.addAttribute("errorpassword", "请填写密码");
			 return "login";
		}
		VendUser user=vendUserService.selectByUsername(username);
		if(user==null){
			model.addAttribute("erroruserName", "用户名不正确");
			return "login";
		}
		if(!user.getPassword().equals(password)){
			model.addAttribute("errorpassword", "密码不正确");
			return "login";
		}
		if (subject.isAuthenticated()) {  
            return "welcome";  
        }  
		//logger.info(userService.getByUserName(username).getUserName() + "+" + password);
		
		UsernamePasswordToken token=new UsernamePasswordToken(username, password);
		
		subject.login(token);
		//try{
			//subject.login(token);
		//}catch(Exception e){
		 //   model.addAttribute("errorMsg", "用户名或密码错误");
		 //   return "login";
		//}
		VendUser vendUser = vendUserService.selectByUsername(username);
		/**
		 * 登录日志
		 */
		VendSyslog vendSyslog=new VendSyslog();
		vendSyslog.setUsercode(vendUser.getUsercode());
		vendSyslog.setUsername(username);
		vendSyslog.setExtend1("");
		vendSyslog.setOperIp(request.getRemoteAddr());
		if(vendUser.getRoleId()!=null){
			VendRole vendRole=vendRoleService.getOne(vendUser.getRoleId());
			if(vendRole!=null&&vendRole.getRoleName()!=null){
				vendSyslog.setExtend1(vendRole.getRoleName());
			}
		}
		vendSyslog.setOperDescription("登录成功");
		vendSyslogService.insertVendSyslog(vendSyslog);
		
		subject.getSession().setAttribute("vendUser", vendUser);
		return "redirect:welcome";
	}
    /**
     * 退出登录
     * @throws Exception 
     */
    @RequestMapping(value="/logout",method=RequestMethod.GET)
    public String logout(ServletRequest request, ServletResponse response) throws Exception {  
        Subject subject = SecurityUtils.getSubject();  
        if (subject.isAuthenticated()) {  
            subject.logout(); // session 会销毁，在SessionListener监听session销毁，清理权限缓存  
        }  
        return "redirect:login";
    }
    /**
     * 从微信小程序注册用户信息
     * @param usercode
     * @return
     */
    @RequestMapping(value="/wxreg",method=RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public @ResponseBody Map<String, String> wxreg(@RequestBody Map<String, String> map){
    	String username=map.get("nickname");
    	logger.info("username是"+username);
    	VendUser user=vendUserService.selectByUsernameXF(username);
    	logger.info("user");
    	Date createtime=DateUtil.parseDateTime(DateUtil.getCurrentDateTimeStr());//创建时间
    	if(user==null){
    		user=new VendUser();
    		user.setUsername(username);
    		String password=Function.getEncrypt("123456");
    		user.setPassword(password);
    		user.setAddress(map.get("address"));
    		user.setMobile(map.get("mobile"));
    		user.setRoleId(5);
    		int isOk=vendUserService.insertVendUser(user);
    		if(isOk==1){
    			map.put("success", "1");
    			map.put("msg", "注册成功");
    		}else{
    			map.put("success", "0");
    			map.put("msg", "注册失败");
    		}
    	}else{
    		map.put("success", "1");
			map.put("msg", "已经注册过");
    	}
    	return map;
    }
    /**
     * 微信小程序用户登录
     * @param request
     * @param map
     * @return
     */
    @RequestMapping(value="/wxlogin",method=RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public @ResponseBody Map<String, Object> wxlogin(HttpServletRequest request,@RequestBody Map<String, String> map){
    	logger.info("小程序开始登陆");
    	logger.info("小程序map"+map);
    	Map<String, Object> resultMap=new HashMap<String, Object>();
    	//存储状态信息
    	resultMap.put("avatarUrl", map.get("avatarUrl"));
    	resultMap.put("nickName", map.get("nickName"));
    	resultMap.put("usercode", "");
    	resultMap.put("success", "0");
    	resultMap.put("msg", "登录错误");
    	logger.info("小程序resultMap"+resultMap);
    	String username=map.get("nickName");
    	logger.info("小程序username"+username);
    	VendUser venduser=vendUserService.selectByUsernameXF(username);
    	logger.info("小程序venduser"+venduser);
    	if(venduser==null){
    		logger.info("小程序venduser是null");
    		resultMap.put("usercode", "");
    		resultMap.put("success", "0");
    		resultMap.put("msg", "您还没注册,请先进行注册");
    	}else{
    		logger.info("小程序venduser不是null");
    		List<UserCoupon> userCoupons=userCouponService.findByUsercode(venduser.getUsercode(),DateUtil.getCurrentDateStr());
    		logger.info("小程序userCoupons"+userCoupons);
    		VendAccount vendAccount = vendAccountService.getOne(venduser.getUsercode());
    		logger.info("小程序vendAccount"+vendAccount);
    		//List<CodeLibrary> ordertypes =codeLibraryService.selectByCodeNo("ORDERTYPE");
    		resultMap.put("vendAccount", vendAccount);
    		resultMap.put("userCoupons", userCoupons);
    		resultMap.put("usercode", venduser.getUsercode());
    		resultMap.put("success", "1");
    		resultMap.put("msg", "登录成功");
    		
    		VendSyslog vendSyslog=new VendSyslog();
    		logger.info("小程序vendSyslog"+vendSyslog);
    		vendSyslog.setUsercode(venduser.getUsercode());
    		vendSyslog.setUsername(username);
    		vendSyslog.setOperIp(request.getRemoteAddr());
    		vendSyslog.setExtend1("");
    		if(venduser.getRoleId()!=null){
    			VendRole vendRole=vendRoleService.getOne(venduser.getRoleId());
    			if(vendRole!=null&&vendRole.getRoleName()!=null){
    				vendSyslog.setExtend1(vendRole.getRoleName());
    			}
    		}
    		vendSyslog.setOperDescription("登录成功");
    		vendSyslogService.insertVendSyslog(vendSyslog);
    		logger.info("小程序vendSyslog登录成功");
    	}
    	return resultMap;
    }
}
