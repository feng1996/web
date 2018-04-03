package com.feng.dao;

import java.util.Vector;

import com.feng.entity.User;

public interface UserDao {
	public User findUserByName(String name);
	// 添加
	public int insert(User user);
	
	
	//显示
	public User findUserByID(String id);
	public Vector<User> getUser();
	public int delUserByid(int id);
}
