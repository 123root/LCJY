package com.lc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.Course;
import com.lc.dao.CourseDao;

//创建service对象
@Service
public class CourseServiceImpl implements CourseService {

//	自动注入Dao对象
	@Autowired
	private CourseDao dao;
	//调用DAO实现学员的增删改查方法
	@Override
	public List<Course> findCourse() {
		return dao.selectCourses();
	}
	
}
