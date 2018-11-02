package com.lc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.bean.Course;
import com.lc.service.CourseService;


@Controller
@RequestMapping("cou")
public class CourseController {
//	自动注入service对象
	@Autowired
	private CourseService service;
	
	@RequestMapping("courses.do")
	@ResponseBody
	public Object courseList() {
//		调用service对象的方法
		List<Course> list = service.findCourse();
//		返回JSON数据
		return list;
	}

}
