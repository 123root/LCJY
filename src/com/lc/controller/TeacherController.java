package com.lc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.bean.Teacher;
import com.lc.service.TeacherService;

@Controller
@RequestMapping("tea")
public class TeacherController {

//	自动注入service对象
	@Autowired
	private TeacherService service;
	
	@RequestMapping("teachers.do")
	@ResponseBody
	public Object teacherList() {
//		调用service对象的方法
		List<Teacher> list = service.findTeacher();
//		返回JSON数据
		return list;
	}
}
