package com.halfwanybus.controller.shopmanage.goods;

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
import com.halfwanybus.service.shopmanage.goods.GoodsManager;

/** 
 * 说明：商品管理
 * 创建人：liangzhilin
 * 创建时间：2016-12-07
 */
@Controller
@RequestMapping(value="/goods")
public class GoodsController extends BaseController {
	
	String menuUrl = "goods/list.do"; //菜单地址(权限用)
	@Resource(name="goodsService")
	private GoodsManager goodsService;
	@Resource(name="singleImgService")
	private SingleImgManager singleImgService;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(
			@RequestParam(value="image",required=false) CommonsMultipartFile image,
			HttpSession session,
			@RequestParam(value="STOP_ID",required=false) String STOP_ID,
			@RequestParam(value="NAME",required=false) String NAME,
			@RequestParam(value="PRICE",required=false) String PRICE,
			@RequestParam(value="DETAIL",required=false) String DETAIL
	) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("GOODS_ID", this.get32UUID());	//主键
		String imageUrl = null;
		String uploadPath ="/static/images";
		if(image.getSize()>0){
			String realUploadPath = session.getServletContext().getRealPath(uploadPath);
			imageUrl = singleImgService.uploadImage(image, uploadPath, realUploadPath,this.get32UUID());
			session.removeAttribute("image");
		}
		pd.put("IMG_PATH",imageUrl);
		pd.put("STOP_ID",STOP_ID);
		pd.put("NAME",NAME);
		pd.put("PRICE",PRICE);
		pd.put("DETAIL",DETAIL);
		goodsService.save(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"删除Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		goodsService.delete(pd);
		out.write("success");
		out.close();
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{

		logBefore(logger, Jurisdiction.getUsername()+"修改Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		goodsService.edit(pd);
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
		logBefore(logger, Jurisdiction.getUsername()+"列表Goods");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("STOP_ID");				//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords);
		}
		page.setPd(pd);
		List<PageData>	varList = goodsService.list(page);	//列出Goods列表
		mv.setViewName("shopmanage/goods/goods_list");
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
		mv.setViewName("shopmanage/goods/goods_edit");
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
		pd = goodsService.findById(pd);	//根据ID读取
		mv.setViewName("shopmanage/goods/goods_edit");
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
		logBefore(logger, Jurisdiction.getUsername()+"批量删除Goods");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			goodsService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出Goods到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("店铺ID");	//1
		titles.add("商品ID");	//2
		titles.add("价格");	//3
		titles.add("描述");	//4
		titles.add("照片");	//5
		dataMap.put("titles", titles);
		List<PageData> varOList = goodsService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("STOP_ID"));	//1
			vpd.put("var2", varOList.get(i).getString("GOODS_ID"));	//2
			vpd.put("var3", varOList.get(i).getString("PRICE"));	//3
			vpd.put("var4", varOList.get(i).getString("DETAIL"));	//4
			vpd.put("var5", varOList.get(i).getString("IMG_PATH"));	//5
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
