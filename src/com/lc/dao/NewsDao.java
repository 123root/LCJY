package com.lc.dao;

import java.util.List;

import com.lc.bean.News;

public interface NewsDao {
	
	List<News> selectNews();
}
