package com.halfwanybus.controller.app.frontpage;

import com.halfwanybus.entity.Page;
import com.halfwanybus.service.pagemanage.activitymanage.ActivityManageManager;
import com.halfwanybus.service.pagemanage.insiderecommended.InsiderecommendedManager;
import com.halfwanybus.service.pagemanage.message.MessageManager;
import com.halfwanybus.service.shopmanage.goods.GoodsManager;
import com.halfwanybus.service.shopmanage.stopmanage.StopManageManager;
import com.halfwanybus.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.halfwanybus.controller.base.BaseController;

import javax.annotation.Resource;
import java.util.Date;
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
	@Resource(name="messageService")
	private MessageManager messageService;//留言
	@Resource(name="stopmanageService")
	private StopManageManager stopmanageService;//商铺
	@Resource(name="goodsService")
	private GoodsManager goodsService;//商品
	
	/**去首页
	 * @return
	 */
	@RequestMapping(value="/goindex")
	public ModelAndView goIndex() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<PageData> insiderList =  insiderecommendedService.listAll(null);//查询站内推荐轮播图
		mv.addObject("insiderList",insiderList);
		mv.setViewName("frontpage/homepage");
		return mv;
	}
	/**跳转到订单页面
	 * @return
	 */
	@RequestMapping(value="/goshopline")
	public ModelAndView goShopLine() throws Exception {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("frontpage/shop_line");
		return mv;
	}
	/**跳转到店内页面
	 * @return
	 */
	@RequestMapping(value="/goshopping")
	public ModelAndView goShopping() throws Exception {
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("STOP_ID");				//查询该店铺的上品
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords);
		}
		Page page = new Page();
		page.setPd(pd);
        List<PageData> goodsList= goodsService.list(page);
		mv.addObject("goodsList",goodsList);
		mv.setViewName("frontpage/shopping");
		return mv;
	}


	/**去店铺列表
	 * @return
	 */
	@RequestMapping(value="/goshop")
	public ModelAndView goShop() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<PageData> shopList = stopmanageService.listAll(null);
		mv.addObject("shopList",shopList);
		mv.setViewName("frontpage/shop");
		return mv;
	}
	/**跳转到活动公告列表
	 * @return
	 */
	@RequestMapping(value="/goatlist")
	public ModelAndView goAtList() throws Exception {
		PageData pd = new PageData();
		List<PageData> varList= activitymanageService.listAll(pd);
		ModelAndView mv = new ModelAndView();
		mv.addObject("varList",varList);
		mv.setViewName("frontpage/live");
		return mv;
	}
	/**跳转到活动详情
	 * @return
	 */
	@RequestMapping(value="/goatdetail")
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
	/**跳转到联系我们
	 * @return
	 */
	@RequestMapping(value="/goConnectUs")
	public ModelAndView goConnectUs(
	) throws Exception {
		PageData pd = new PageData();
		pd = this.getPageData();
		ModelAndView mv = new ModelAndView();
		mv.addObject("pd",pd);
		mv.setViewName("frontpage/connect_us");
		return mv;
	}
	@RequestMapping(value="/setMessage")
	@ResponseBody
	public Object SetMessage() throws Exception {
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("MESSAGE_ID",this.get32UUID());
		pd.put("MESSAGETIME",new Date());
		messageService.save(pd);
		pd.put("saveResult","success");
		return pd;
	}
}
	
 