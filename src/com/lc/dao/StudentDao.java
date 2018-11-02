package com.lc.dao;

import java.util.List;

import com.lc.bean.Student;

public interface StudentDao {
//对应学员的增删改查方法名，要于DAO.xml的ID一致
	List<Student> selectStudents();
}
