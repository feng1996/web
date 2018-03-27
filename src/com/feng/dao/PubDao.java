package com.feng.dao;

import java.util.Vector;

import com.feng.entity.PubManage;

public interface PubDao {


	// 添加
	public int insert(PubManage pub);
	
	// 删除
	public int delPubByTitle(String pubTitle);
	
	//显示
	public PubManage findPubByID(String pid);
	public Vector<PubManage> getPub();
}
