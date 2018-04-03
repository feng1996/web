package com.feng.entity;

public class User {
	
	private int id;
	private String userName;
	private String pwd;
	
	public User(String userName, String pwd) {
		super();
		this.userName = userName;
		this.pwd = pwd;
	}
	public User(int id, String userName, String pwd) {
		super();
		this.id = id;
		this.userName = userName;
		this.pwd = pwd;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
}
