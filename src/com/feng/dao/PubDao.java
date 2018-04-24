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
	public Vector<PubManage> getNewsPub();
	public Vector<PubManage> getBsznPub();
	public Vector<PubManage> getSydwzpPub();
	public Vector<PubManage> getZczgksPub();
	public Vector<PubManage> getCjwtPub();
	public Vector<PubManage> getJbtsPub();
	
	public Vector<PubManage> getPolicyPubLimit();
	public Vector<PubManage> getNewsPubLimit();
	public Vector<PubManage> getSydwzpPubLimit();
	public Vector<PubManage> getZczgksPubLimit();
	public Vector<PubManage> getBsznsPubLimit();
	
	public int delPubByPid(int pid);
	public int update(PubManage pub);
	
	public List<PubManage> findPolicyPubs(int page , int count);
	public List<PubManage> findNewsPubs(int page , int count);

    public int count(String pubType);
    
    public Vector<PubManage> getPolicySearch(String sw);
    public Vector<PubManage> getNewsSearch(String sw);
    public Vector<PubManage> getHallSearch(String sw);
}
