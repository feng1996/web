package com.feng.biz;

import java.util.List;

import com.feng.entity.Page;
import com.feng.entity.PubManage;

public interface PubBiz {
	
	public int insert(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent, String imgName, String imgURL);
	
	
	public PubManage findPubByID(String pid);
	
	public List<Integer> delPubByPid(List<Integer> pids);
	
	public int update(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent, String imgName, String imgURL, int pid);
	
    public Page findPolicyPage(int page,int count,String pubType);
    
    public Page findNewsPage(int page,int count,String pubType);
}
