package com.halfwanybus.controller.app.frontpage;

import com.halfwanybus.service.pagemanage.activitymanage.ActivityManageManager;
import com.halfwanybus.service.pagemanage.insiderecommended.InsiderecommendedManager;
import com.halfwanybus.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.halfwanybus.controller.base.BaseController;

import javax.annotation.Resource;
import java.util.List;


/**@author liangzhilin
 * 前台页面链接跳转类
 */
@RequestMapping(value="/app_index")
@Controller
public class AppNavigationController extends BaseController {
	@Resource(name="activitymanageService")
	private ActivityManageManager activitymanageService;//活动公告
	@Resource(name="insiderecommendedService")
	private InsiderecommendedManager insiderecommendedService;//站内推荐
	
	/**去首页
	 * @return
	 */
	@RequestMapping(value="/goindex")
	@ResponseBody
	public ModelAndView goIndex() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<PageData> insiderList =  insiderecommendedService.listAll(null);//查询站内推荐轮播图
		mv.addObject("insiderList",insiderList);
		mv.setViewName("frontpage/homepage");
		return mv;
	}
	/**跳转到活动公告列表
	 * @return
	 */
	@RequestMapping(value="/goatlist")
	@ResponseBody
	public ModelAndView goAtList() throws Exception {
		PageData pd = new PageData();
		List<PageData> varList= activitymanageService.listAll(pd);
		ModelAndView mv = new ModelAndView();
		mv.addObject("varList",varList);
		mv.setViewName("frontpage/atlist");
		return mv;
	}
	/**跳转到活动详情
	 * @return
	 */
	@RequestMapping(value="/goatdetail")
	@ResponseBody
	public ModelAndView goAtDetail(
	) throws Exception {
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ACTIVITYMANAGE_ID",pd.getString("ACTIVITYMANAGE_ID"));
		pd = activitymanageService.findById(pd);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pd",pd);
		mv.setViewName("frontpage/text");
		return mv;
	}
}
	
 