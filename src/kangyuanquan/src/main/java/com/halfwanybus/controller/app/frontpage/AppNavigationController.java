package com.halfwanybus.controller.app.frontpage;

import com.halfwanybus.service.pagemanage.activitymanage.ActivityManageManager;
import com.halfwanybus.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.halfwanybus.controller.base.BaseController;

import javax.annotation.Resource;


/**@author liangzhilin
 * 前台页面链接跳转类
 */
@RequestMapping(value="/app_index")
@Controller
public class AppNavigationController extends BaseController {
	@Resource(name="activitymanageService")
	private ActivityManageManager activitymanageService;
	
	/**去首页
	 * @return
	 */
	@RequestMapping(value="/goindex")
	@ResponseBody
	public ModelAndView goIndex(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("frontpage/homepage");
		return mv;
	}
	/**跳转到活动详情
	 * @return
	 */
	@RequestMapping(value="/goatdetail")
	@ResponseBody
	public ModelAndView goAtDetail(
			@RequestParam(value="image",required=false) String ACTIVITYMANAGE_ID
	) throws Exception {
		ACTIVITYMANAGE_ID = "1";
		PageData pd = new PageData();
		pd.put("ACTIVITYMANAGE_ID",ACTIVITYMANAGE_ID);
		pd = activitymanageService.findById(pd);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pd",pd);
		mv.setViewName("frontpage/text");
		return mv;
	}

	
}
	
 