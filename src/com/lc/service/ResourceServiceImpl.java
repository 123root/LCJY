package com.lc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.Resource;
import com.lc.dao.ResourceDao;


@Service
public class ResourceServiceImpl implements ResourceService {


	@Autowired
	private ResourceDao dao;
	
	@Override
	public List<Resource> findResource() {
		return dao.selectResources();
	}
}
