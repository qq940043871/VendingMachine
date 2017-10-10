package vend.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import base.util.CacheUtils;
import base.util.DateUtil;
import base.util.Page;
import vend.dao.VendAdMapper;
import vend.dao.VendMachineMapper;
import vend.dao.VendShopQrcodeMapper;
import vend.entity.VendAd;
import vend.entity.VendMachine;
import vend.entity.VendShopQrcode;
import vend.service.VendMachineService;

@Service
public class VendMachineServiceImpl implements VendMachineService {
	@Autowired
	VendMachineMapper vendMachineMapper;
	@Autowired
	VendAdMapper vendAdMapper;
	@Autowired
	VendShopQrcodeMapper vendShopQrcodeMapper;
	/**
	 * 根据输入信息条件查询机器列表，并分页显示
	 * @param vendMachine
	 * @param page
	 * @return
	 */
	public List<VendMachine> listVendMachine(VendMachine vendMachine,Page page){
		int totalNumber = vendMachineMapper.countVendMachine(vendMachine);
		page.setTotalNumber(totalNumber);
		
		String title=vendMachine.getUsercode()+vendMachine.getMachineCode()+vendMachine.getMachineName();
		String currentPage=Integer.toString(page.getCurrentPage());
		if(title==null){
			title="";
		}
		String key="key_listVendMachine"+title+currentPage;
		List<VendMachine> vendMachines=(List<VendMachine>)CacheUtils.get("machineCache", key);
		if(vendMachines==null){
			vendMachines=vendMachineMapper.listVendMachine(vendMachine, page);
			CacheUtils.put("machineCache",key, vendMachines);
		}
		return vendMachines;
	}
	/**
	 * 添加机器
	 * @param vendMachine
	 * @return
	 */
	public int insertVendMachine(VendMachine vendMachine){
		Date createTime=DateUtil.parseDateTime(DateUtil.getCurrentDateTimeStr());
		vendMachine.setCreateTime(createTime);
		vendMachine.setUpdateTime(createTime);
		vendMachine.setCleanStatus("0");
		vendMachine.setHeatStatus("0");
		vendMachine.setUseStatus("0");
		vendMachine.setWaterStatus("0");
		int isOk=vendMachineMapper.insertSelective(vendMachine);
		
		//添加该机器广告
		if(vendMachine.getMachineId()!=null){
			VendAd vendAd=vendAdMapper.selectByMachineId(vendMachine.getMachineId());
			if(vendAd==null){
				vendAd=new VendAd();
				vendAd.setMachineId(vendMachine.getMachineId());
				vendAd.setType("5");//机器广告
				vendAd.setUsercode(vendMachine.getUsercode());
				vendAd.setExtend3("0");//是否有效
				vendAd.setIsmachineuse("0");//是否单独投放改机器,0否，1是
				vendAd.setCreateTime(createTime);
				vendAd.setUpdateTime(createTime);
				vendAdMapper.insert(vendAd);
			}
		}
		//添加该机器二维码信息
		if(vendMachine.getMachineId()!=null){
			VendShopQrcode vendShopQrcode=vendShopQrcodeMapper.selectByMachineId(vendMachine.getMachineId());
			if(vendShopQrcode==null){
				vendShopQrcode=new VendShopQrcode();
				vendShopQrcode.setMachineId(vendMachine.getMachineId());
				vendShopQrcode.setExtend4("5");//机器单独设置的二维码级别
				vendShopQrcode.setUsercode(vendMachine.getUsercode());
				vendShopQrcode.setExtend1(vendMachine.getMachineId());
				vendShopQrcode.setExtend2("1");
				vendShopQrcode.setCreateTime(createTime);
				vendShopQrcodeMapper.insert(vendShopQrcode);
			}
		}
		if(isOk==1){
			CacheUtils.clear();
		}
		return isOk;
	}
	/**
	 * 修改机器
	 * @param vendMachine
	 * @return
	 */
	public int editVendMachine(VendMachine vendMachine){
		int isOk=vendMachineMapper.updateByPrimaryKeySelective(vendMachine);
		if(isOk==1){
			CacheUtils.clear();
		}
		return isOk;
	}
	/**
	 * 删除一个机器
	 * @param id
	 */
	public void delVendMachine(int id){
		int isOk=	vendMachineMapper.deleteByPrimaryKey(id);
		if(isOk==1){
			CacheUtils.clear();
		}
	}
	/**
	 * 批量删除机器
	 * @param id
	 */
	public int delVendMachines(int ids[]){
		int isOk=vendMachineMapper.deleteBatch(ids);
		if(isOk==1){
			CacheUtils.clear();
		}
		return isOk;
	}
	/**
	 * 根据ID查找一个机器
	 * @param id
	 * @return
	 */
	public VendMachine getOne(int id){
		return vendMachineMapper.selectByPrimaryKey(id);
	}
	/**
	 * 查找全部
	 */
	public List<VendMachine> findAll() {
		// TODO Auto-generated method stub
		String key="key_VendMachine_findAll";
		List<VendMachine> vendMachines=(List<VendMachine>)CacheUtils.get("machineCache", key);
		if(vendMachines==null){
			vendMachines= vendMachineMapper.findAll();
			CacheUtils.put("machineCache", key, vendMachines);
		}
		return vendMachines;
	}
	/**
	 * 按照machineCode查找
	 * @param machineCode
	 * @return
	 */
	public VendMachine selectByMachineCode(String machineCode){
		return vendMachineMapper.selectByMachineCode(machineCode);
	}
	/**
	 * 按照machineId查找
	 * @param machineCode
	 * @return
	 */
	public VendMachine selectByMachineId(String machineId){
		return vendMachineMapper.selectByMachineId(machineId);
	}
	/**
	 * 按照machineCode查找
	 * @param machineCode
	 * @return
	 */
	public List<VendMachine> selectByUsercode(String usercodelist[]){
		String key="key_machine_selectByUsercode"+usercodelist;
		List<VendMachine> vendMachines=(List<VendMachine>)CacheUtils.get("machineCache", key);
		if(vendMachines==null){
			if(usercodelist.length==0){
				vendMachines=vendMachineMapper.selectByUsercode1();
			}else{
				vendMachines=vendMachineMapper.selectByUsercode(usercodelist);
			}
			CacheUtils.put("machineCache", key, vendMachines);
		}
		return vendMachines;
	}
}
