package com.lc.bean;

import org.springframework.stereotype.Component;

@Component
public class Messageboard {
	
	private int id;
	private String time;
	private String username;
	private String content;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Messageboard [id=" + id + ", time=" + time + ", username=" + username + ", content=" + content + "]";
	}
	
	

}
