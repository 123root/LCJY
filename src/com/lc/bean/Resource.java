package com.lc.bean;

import org.springframework.stereotype.Component;

@Component
public class Resource {
	
	private int id;
	private String title;
	private String address;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Resource [id=" + id + ", title=" + title + ", address=" + address + "]";
	}
	

}
