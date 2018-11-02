package com.lc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.bean.News;
import com.lc.dao.NewsDao;

@Service
public class NewsServiceImpl implements NewsService {


	@Autowired
	private NewsDao dao;

	@Override
	public List<News> findNews() {
		return dao.selectNews();
	}

}
