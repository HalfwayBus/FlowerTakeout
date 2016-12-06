package com.halfwanybus.controller.app.frontpage;

import com.halfwanybus.controller.base.BaseController;
import com.halfwanybus.service.pagemanage.message.MessageManager;
import com.halfwanybus.util.AppUtil;
import com.halfwanybus.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 提交留言
 * Created by Administrator on 2016/12/6.
 */
@RequestMapping(value="/frontMessage")
@Controller
public class MessageSubmitController extends BaseController{
    @Resource(name="messageService")
    private MessageManager messageService;

    @RequestMapping(value="/setMessage")
    @ResponseBody
    public Object SetMessage() throws Exception {
        PageData pd = new PageData();
        pd = this.getPageData();
        pd.put("MESSAGE_ID",this.get32UUID());
        messageService.save(pd);
        pd.put("saveResult","success");
        return pd;
    }


}
