package com.qincloud.console.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class BaseController {
	static final String SUCCESS = "success";
	static final String ERROR = "error";
	static final String EXCEPTION = "exception";

	/**
	 * 获取页面传递的某一个参数值,
	 */
	public String getParameter(String key) {
		return this.getRequest().getParameter(key);
	}

	/**
	 * 得到request对象
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		return request;
	}
}
