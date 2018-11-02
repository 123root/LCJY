package com.lc.bean;

import org.springframework.stereotype.Component;

@Component
public class Teacher {
	private int id;
	private String username;
	private String password;
	private String name;
	private int age;
	private String phone;
	private String experience;
	private String workingage;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getWorkingage() {
		return workingage;
	}

	public void setWorkingage(String workingage) {
		this.workingage = workingage;
	}

	@Override
	public String toString() {
		return "Teacher [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", age="
				+ age + ", phone=" + phone + ", experience=" + experience + ", workingage=" + workingage + "]";
	}
	
}
