package com.feng.biz.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import com.feng.biz.UserBiz;
import com.feng.dao.impl.UserDaoImpl;
import com.feng.entity.User;

public class UserBizImpl implements UserBiz {

	UserDaoImpl userDaoImpl = new UserDaoImpl();

	//private PubDao pubDao = new PubDaoImpl();
	
	@Override
	public int insert(String userName, String pwd) {
		User user = new User(userName,pwd);
		return userDaoImpl.insert(user);
	}
	
	@Override
	public User findUserByID(String id) {
		User user = userDaoImpl.findUserByID(id);
		return user;
	}
	
	@Override
	public List<Integer> delUsersByid(List<Integer> ids) {
		Iterator<Integer> it = ids.iterator();
		List<Integer> errors = new ArrayList<Integer>();
		while(it.hasNext()) {
			int id = it.next();
			if(userDaoImpl.delUserByid(id)==0) {
				errors.add(id);
			}
		}
		return errors;
	}
	
}
