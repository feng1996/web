package com.feng.biz.impl;

import java.util.LinkedHashMap;
import java.util.Vector;

import com.feng.biz.PubBiz;
import com.feng.dao.PubDao;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.PubManage;

public class PubBizImpl implements PubBiz {

	

	private PubDao pubDao = new PubDaoImpl();
	
	@Override
	public int insert(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent) {
		PubManage pub = new PubManage(pubTitle,pubType,pubUser,pubTime,pubContent);
		return pubDao.insert(pub);
	}
	
	@Override
	public boolean delPubByTitle(String pubTitle) {
		pubDao.delPubByTitle(pubTitle);
		return false;
	}
	
	@Override
	public PubManage getPubByTitle(String pubTitle) {
		return PubDao.getPubByTitle(pubTitle);
	}
}
