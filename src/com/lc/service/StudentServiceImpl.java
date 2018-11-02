package com.lc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.Student;
import com.lc.dao.StudentDao;


@Service
public class StudentServiceImpl implements StudentService {
	

	@Autowired
	private StudentDao dao;
	
	@Override
	public List<Student> findStudents() {
		return dao.selectStudents();
	}
	
}
