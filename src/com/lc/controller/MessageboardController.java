package com.lc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.bean.Messageboard;
import com.lc.service.MessageboardService;

@Controller
@RequestMapping("mes")
public class MessageboardController {

//	自动注入service对象
	@Autowired
	private MessageboardService service;
	@Autowired
	private Messageboard messageboard;
	
	@RequestMapping("messageboards.do")
	@ResponseBody
	public Object messageboardList() {
//		调用service对象的方法
		List<Messageboard> list = service.findMessageboard();
//		返回JSON数据
		return list;
	}
	
	@RequestMapping("mess.do")
	public String insertMessage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");	

		messageboard.setUsername(request.getParameter("username"));
		messageboard.setContent(request.getParameter("content"));
		messageboard.setTime(request.getParameter("time"));
		boolean b = service.insertMessageboard(messageboard);
		
		request.setAttribute("isSuccess", b);
		//request.getRequestDispatcher("/WEB-INF/jsp/mess.jsp").forward(request, response);
		
		return "mess";
	}
}
