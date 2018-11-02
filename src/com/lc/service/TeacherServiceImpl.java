package com.lc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.Teacher;
import com.lc.dao.TeacherDao;


@Service
public class TeacherServiceImpl implements TeacherService {


	@Autowired
	private TeacherDao dao;
	
	@Override
	public List<Teacher> findTeacher() {
		return dao.selectTeachers();
	}
}
