package com.qincloud.console.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qincloud.console.service.UserService;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月12日 下午12:12:44
 */

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("page")
	public String page() {
		return "user/userlist";
	}

	@RequestMapping("list")
	@ResponseBody
	public Object all() {
		return userService.findAll();
	}

}
