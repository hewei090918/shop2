package com.web.shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.shop.service.UserService;
import com.web.shop.util.StringUtil;

/**
 * 
 * 包名：com.web.shop.controller <br/>
 * 类名：LoginController.java <br/>
 * 版本：version 1.0 <br/>
 * 作者：HeWei <br/>
 * 描述：登录管理控制层
 */
@Controller
@RequestMapping("/access")
public class LoginController {

	/**
     * 登录界面
     */
    private final String LOGIN_URL = "/login/login";
    /**
     * 主界面
     */
    private final String MAIN_URL = "/main/main";

    /**
     * 404界面
     */
    private final String PAGE_NOT_FOUND_URL = "/error/404";
    
    @Autowired
    private UserService userService;
    
    @RequestMapping("login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	if(StringUtil.equals(username, "hew") && StringUtil.equals(password, "123456")) {
    		return "redirect:/access/index.html";
    	}
        return LOGIN_URL;
    }
    
    @RequestMapping("index")
    public String index(HttpServletRequest request, HttpServletResponse response) {
        return MAIN_URL;
    }
    
    @RequestMapping("404")
    public String toPageNotFound() {
        return PAGE_NOT_FOUND_URL;
    }
    
}
