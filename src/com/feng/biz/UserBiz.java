package com.feng.biz;

import java.util.List;

import com.feng.entity.User;

public interface UserBiz {
	
	public int insert(String userName, String pwd);	
	
	public User findUserByID(String id);
	
	public List<Integer> delUsersByid(List<Integer> ids);
	
}
