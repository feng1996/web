package com.feng.biz;

import java.io.File;

import com.feng.entity.PubManage;

public interface PubBiz {
	
	public int insert(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent);
	
	public boolean delPubByTitle(String pubTitle);
	
	public PubManage getPubByTitle(String pubTitle);
	
}
