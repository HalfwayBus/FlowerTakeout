package com.halfwanybus.controller.app.frontpage;

import com.halfwanybus.controller.base.BaseController;
import com.halfwanybus.service.pagemanage.insiderecommended.InsiderecommendedManager;
import com.halfwanybus.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 登录 on 2016/12/8.
 */
@RequestMapping(value="/app_userlogin")
@Controller
public class UserLogin extends BaseController {
    @Resource(name="insiderecommendedService")
    private InsiderecommendedManager insiderecommendedService;//站内推荐
    /**跳转到登录页面
     * @return
     */
    @RequestMapping(value="/gosignin")
    public ModelAndView goSigin() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("frontpage/signin");
        return mv;
    }

    /**注销登陆
     * @return
     */
    @RequestMapping(value="/gosignout")
    public ModelAndView goSignout(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView();
        session.removeAttribute("kyUserName");//清空登录信息
        List<PageData> insiderList =  insiderecommendedService.listAll(null);//查询站内推荐轮播图
        mv.addObject("insiderList",insiderList);
        mv.setViewName("frontpage/homepage");
        return mv;
    }

    /**校验用户账号及密码
     * @return
     */
    @RequestMapping(value="/checkuser")
    @ResponseBody
    public Object checkUser(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        String username = pd.getString("username");
        String password = pd.getString("password");
        //由于用户注册的的绑定手机号及安全认证需要以企业的名义才能完成，这里没有进行数据库用户匹配，仅作测试使用
        if(username!=null&&password!=null){
            if(username.equals("kangyuanquan")&&password.equals("test")) {
                session.setAttribute("kyUserName",username);//注入登陆状态
                pd.put("longinResult", "success");
                return pd;
            }
        }
        pd.put("longinResult","error");
        return pd;
    }
}
