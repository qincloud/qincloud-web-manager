package com.qincloud.console.controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qincloud.console.controller.BaseController;
import com.qincloud.console.service.ProductService;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月12日 上午2:55:46
 */

@Controller
@RequestMapping("list")
public class ListpageController extends BaseController {
	@Autowired
	private ProductService productService;

	@RequestMapping("all")
	@ResponseBody
	public Object ProductAll() {
		return productService.findAll();
	}
}
