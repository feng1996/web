package com.feng.biz.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Vector;

import com.feng.biz.PubBiz;
import com.feng.dao.PubDao;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.PubManage;

public class PubBizImpl implements PubBiz {

	PubDaoImpl pubDaoImpl = new PubDaoImpl();

	//private PubDao pubDao = new PubDaoImpl();
	
	@Override
	public int insert(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent) {
		PubManage pub = new PubManage(pubTitle,pubType,pubUser,pubTime,pubContent);
		return pubDaoImpl.insert(pub);
	}
	
	@Override
	public boolean delPubByTitle(String pubTitle) {
		pubDaoImpl.delPubByTitle(pubTitle);
		return false;
	}
	
	@Override
	public PubManage findPubByID(String pid) {
		PubManage pub = pubDaoImpl.findPubByID(pid);
		return pub;
	}
	
	@Override
	public List<Integer> delPubByPid(List<Integer> pids) {
		Iterator<Integer> it = pids.iterator();
		List<Integer> errors = new ArrayList<Integer>();
		while(it.hasNext()) {
			int id = it.next();
			if(pubDaoImpl.delPubByPid(id)==0) {
				errors.add(id);
			}
		}
		return errors;
	}
}
