package com.lc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.bean.Manager;
import com.lc.service.ManagerService;


@Controller
@RequestMapping("man")
public class ManagerController {
//	自动注入service对象
	@Autowired
	private ManagerService service;
	
	@RequestMapping("managers.do")
	@ResponseBody
	public Object managerList() {
//		调用service对象的方法
		List<Manager> list = service.findManager();
//		返回JSON数据
		return list;
	}

}
