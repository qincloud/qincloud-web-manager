package com.qincloud.console.controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qincloud.console.data.Product_Entity;
import com.qincloud.console.data.Result;
import com.qincloud.console.service.ProductService;

/**
 * @author 作者: 廖振钦
 * @Xemail 作者 E-mail: 996298643@qq.com
 * @create 创建时间: 2017年1月10日 上午6:28:56
 */

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "addproductpage")
	public String addPage() {

		return "product/addproduct";
	}

	@RequestMapping(value = "listpage")
	public String listpage() {
		return "product/productlist";
	}

	@RequestMapping(value = "addproduct", method = RequestMethod.POST)
	@ResponseBody
	public Result addProduct(Product_Entity product) {
		productService.insert(product);
		return Result.ok();
	}

}
