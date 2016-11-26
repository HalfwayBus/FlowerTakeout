package com.halfwanybus.controller.app.frontpage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.halfwanybus.controller.base.BaseController;


/**@author liangzhilin
 * 前台页面链接跳转类
 */
@RequestMapping(value="/app_index")
@Controller
public class AppNavigationController extends BaseController {
    
	
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

	
}
	
 