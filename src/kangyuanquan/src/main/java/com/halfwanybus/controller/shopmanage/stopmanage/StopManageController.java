package com.halfwanybus.controller.shopmanage.stopmanage;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.halfwanybus.service.system.tools.singleImg.SingleImgManager;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.halfwanybus.controller.base.BaseController;
import com.halfwanybus.entity.Page;
import com.halfwanybus.util.AppUtil;
import com.halfwanybus.util.ObjectExcelView;
import com.halfwanybus.util.PageData;
import com.halfwanybus.util.Jurisdiction;
import com.halfwanybus.util.Tools;
import com.halfwanybus.service.shopmanage.stopmanage.StopManageManager;

/** 
 * 说明：店铺管理
 * 创建人：liangzhilin
 * 创建时间：2016-11-29
 */
@Controller
@RequestMapping(value="/stopmanage")
public class StopManageController extends BaseController {
	
	String menuUrl = "stopmanage/list.do"; //菜单地址(权限用)
	@Resource(name="stopmanageService")
	private StopManageManager stopmanageService;
	@Resource(name="singleImgService")
	private SingleImgManager singleImgService;
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(
			@RequestParam(value="image",required=false) CommonsMultipartFile image,
			@RequestParam(value="image2",required=false) CommonsMultipartFile image2,
			HttpSession session,
			@RequestParam(value="STOPMANAGE_ID",required=false) String STOPMANAGE_ID,
			@RequestParam(value="OWNER",required=false) String OWNER,
			@RequestParam(value="STOPNAME",required=false) String STOPNAME,
			@RequestParam(value="INTRODUCTION",required=false) String INTRODUCTION,
			@RequestParam(value="ADDRESS",required=false) String ADDRESS,
			@RequestParam(value="PHONE",required=false) String PHONE,
			@RequestParam(value="LOGO",required=false) String LOGO,
			@RequestParam(value="STOPIMG",required=false) String STOPIMG
	) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增StopManage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd.put("STOPMANAGE_ID", this.get32UUID());	//主键
		pd.put("OWNER",OWNER);
		pd.put("STOPNAME",STOPNAME);
		pd.put("INTRODUCTION",INTRODUCTION);
		pd.put("ADDRESS",ADDRESS);
		pd.put("PHONE",PHONE);
		String imageUrl = null;
		String uploadPath ="/static/images";
		if(image.getSize()>0){
			String realUploadPath = session.getServletContext().getRealPath(uploadPath);
			imageUrl = singleImgService.uploadImage(image, uploadPath, realUploadPath,this.get32UUID());
			session.removeAttribute("image");
		}
		pd.put("LOGO",imageUrl);
		imageUrl = null;
		if(image2.getSize()>0){
			String realUploadPath = session.getServletContext().getRealPath(uploadPath);
			imageUrl = singleImgService.uploadImage(image2, uploadPath, realUploadPath,this.get32UUID());
			session.removeAttribute("image2");
		}
		pd.put("STOPIMG",imageUrl);
		stopmanageService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除StopManage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		stopmanageService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit(
			@RequestParam(value="image",required=false) CommonsMultipartFile image,
			@RequestParam(value="image2",required=false) CommonsMultipartFile image2,
			HttpSession session,
			@RequestParam(value="imgChange",required=false) String imgChange,
			@RequestParam(value="imgChange2",required=false) String imgChange2,
			@RequestParam(value="STOPMANAGE_ID",required=false) String STOPMANAGE_ID,
			@RequestParam(value="OWNER",required=false) String OWNER,
			@RequestParam(value="STOPNAME",required=false) String STOPNAME,
			@RequestParam(value="INTRODUCTION",required=false) String INTRODUCTION,
			@RequestParam(value="ADDRESS",required=false) String ADDRESS,
			@RequestParam(value="PHONE",required=false) String PHONE,
			@RequestParam(value="LOGO",required=false) String LOGO,
			@RequestParam(value="STOPIMG",required=false) String STOPIMG
	) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改StopManage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd.put("STOPMANAGE_ID",STOPMANAGE_ID);
		pd = stopmanageService.findById(pd);
		pd.put("OWNER",OWNER);
		pd.put("STOPNAME",STOPNAME);
		pd.put("INTRODUCTION",INTRODUCTION);
		pd.put("ADDRESS",ADDRESS);
		pd.put("PHONE",PHONE);
		//图片更新
		String imageUrl = null;
		if(image!=null){
			if(image.getSize()>0){
				String uploadPath ="/static/images";
				String realUploadPath = session.getServletContext().getRealPath(uploadPath);
				imageUrl = singleImgService.uploadImage(image, uploadPath, realUploadPath,this.get32UUID());
				pd.put("LOGO", imageUrl);//覆盖
				session.removeAttribute("image");
			}else {
				System.out.println(imgChange);
				if(imgChange!=null){//前台页面点击了重新选择图片，只是没有选图片
					pd.put("LOGO", null);//覆盖
				}
			}
		}
		//图片更新
		imageUrl = null;
		if(image2!=null){
			if(image2.getSize()>0){
				String uploadPath ="/static/images";
				String realUploadPath = session.getServletContext().getRealPath(uploadPath);
				imageUrl = singleImgService.uploadImage(image2, uploadPath, realUploadPath,this.get32UUID());
				pd.put("STOPIMG", imageUrl);//覆盖
				session.removeAttribute("image2");
			}else {
				System.out.println(imgChange2);
				if(imgChange!=null){//前台页面点击了重新选择图片，只是没有选图片
					pd.put("STOPIMG", null);//覆盖
				}
			}
		}
		stopmanageService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表StopManage");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = stopmanageService.list(page);	//列出StopManage列表
		mv.setViewName("shopmanage/stopmanage/stopmanage_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.setViewName("shopmanage/stopmanage/stopmanage_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**去修改页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = stopmanageService.findById(pd);	//根据ID读取
		mv.setViewName("shopmanage/stopmanage/stopmanage_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除StopManage");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			stopmanageService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	

	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
