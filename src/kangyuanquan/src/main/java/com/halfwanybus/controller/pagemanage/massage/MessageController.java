package com.halfwanybus.controller.pagemanage.massage;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.halfwanybus.controller.base.BaseController;
import com.halfwanybus.entity.Page;
import com.halfwanybus.util.AppUtil;
import com.halfwanybus.util.ObjectExcelView;
import com.halfwanybus.util.PageData;
import com.halfwanybus.util.Jurisdiction;
import com.halfwanybus.util.SortUtil;
import com.halfwanybus.util.Tools;
import com.halfwanybus.service.pagemanage.message.MessageManager;

/** 
 * 说明：留言管理
 * 创建人：liangzhilin
 * 创建时间：2016-08-16
 */
@Controller
@RequestMapping(value="/message")
public class MessageController extends BaseController {
	

}
