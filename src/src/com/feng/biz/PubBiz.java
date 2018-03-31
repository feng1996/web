package com.feng.biz;

import java.util.List;

import com.feng.entity.PubManage;

public interface PubBiz {
	
	public int insert(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent);
	
	public boolean delPubByTitle(String pubTitle);
	
	public PubManage findPubByID(String pid);
	
	public List<Integer> delPubByPid(List<Integer> pids);
	
	public int update(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent);
}
