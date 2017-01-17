package com.qincloud.console.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月8日 下午11:27:57
 */
@Controller
public class LoginController extends BaseController {

	@RequestMapping("list")
	@ResponseBody
	public Object list() {
		List<String> list = new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		list.add("d");
		list.add("e");
		return list;
	}
}
