package com.lc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.bean.Resource;
import com.lc.service.ResourceService;


@Controller
@RequestMapping("res")
public class ResourceController {
	
//	自动注入service对象
	@Autowired
	private ResourceService service;
	
	@RequestMapping("resources.do")
	@ResponseBody
	public Object resourceList() {
//		调用service对象的方法
		List<Resource> list = service.findResource();
//		返回JSON数据
		return list;
	}
}
