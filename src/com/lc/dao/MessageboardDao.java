package com.lc.dao;

import java.util.List;

import com.lc.bean.Messageboard;
public interface MessageboardDao {

		List<Messageboard> selectMessageboards();
		boolean insertMessageboard(Messageboard messageboard);
}
