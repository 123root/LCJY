package com.lc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.bean.News;
import com.lc.service.NewsService;

@Controller
@RequestMapping("news")
public class NewsController {
	
//	自动注入service对象
	@Autowired
	private NewsService service;
	
	@RequestMapping("news.do")
	@ResponseBody
	public Object newsList() {
//		调用service对象的方法
		List<News> list = service.findNews();
//		返回JSON数据
		return list;
	}

}
