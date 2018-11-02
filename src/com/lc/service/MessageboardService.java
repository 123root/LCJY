package com.lc.service;

import java.util.List;

import com.lc.bean.Messageboard;

public interface MessageboardService {

	List<Messageboard> findMessageboard();
	boolean insertMessageboard(Messageboard messageboard);
}
