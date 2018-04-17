package com.feng.dao;

import java.util.List;
import java.util.Vector;

import com.feng.entity.PubManage;

public interface PubDao {


	// 添加
	public int insert(PubManage pub);
	
	
	//显示
	public PubManage findPubByID(String pid);
	public Vector<PubManage> getPub();
	public Vector<PubManage> getPolicyPub();
	public int delPubByPid(int pid);
	public int update(PubManage pub);
	
	public List<PubManage> findPubs(int page , int count);

    public int count();
    
    public Vector<PubManage> getPolicySearch(String sw);
}
