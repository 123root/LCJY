package com.lc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JumpController {
	
	@RequestMapping("jump.do")
	public String jump(String target) {
//视图解析器会将target加前缀和后缀，target是要跳转的地址/WEB-INF/jsp/target.jsp
		return target;
	}
}
