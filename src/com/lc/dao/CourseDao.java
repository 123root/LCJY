package com.lc.dao;

import java.util.List;

import com.lc.bean.Course;


public interface CourseDao {
	
	List<Course> selectCourses();
}
