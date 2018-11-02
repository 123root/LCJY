package com.lc.bean;

import org.springframework.stereotype.Component;

@Component
public class News {
	
	private int id;
	private String title;
	private String content;
	private String time;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", content=" + content + ", time=" + time + "]";
	}
	
	
}
