package com.lc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.Messageboard;
import com.lc.dao.MessageboardDao;


@Service
public class MessageboardServiceImpl implements MessageboardService {


	@Autowired
	private MessageboardDao dao;
	
	@Override
	public List<Messageboard> findMessageboard() {
		return dao.selectMessageboards();
	}

	@Override
	public boolean insertMessageboard(Messageboard messageboard) {
		return dao.insertMessageboard(messageboard);
	}
	
}
