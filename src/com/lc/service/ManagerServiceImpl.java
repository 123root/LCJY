package com.lc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.Manager;
import com.lc.dao.ManagerDao;


@Service
public class ManagerServiceImpl implements ManagerService {


	@Autowired
	private ManagerDao dao;
	
	@Override
	public List<Manager> findManager() {
		return dao.selectManagers();
	}
	
}
