package com.feng.biz.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import com.feng.biz.PubBiz;
import com.feng.dao.impl.PubDaoImpl;
import com.feng.entity.Page;
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
	
	@Override
	public int update(String pubTitle, String pubType, String pubUser, String pubTime , String pubContent,int pid) {
		PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent);
		return pubDaoImpl.update(pub);
	}
	
	 @Override
	    public Page findPolicyPage(int page, int count,String pubType) {	       	       
	            	List<PubManage> pubs = pubDaoImpl.findPolicyPubs(page, count);
	                System.out.println(pubs);
	                int totle = pubDaoImpl.count(pubType);
	                System.out.println(totle);
	                Page p = new Page();
	                p.setPubs(pubs);
	                p.setCurrentPage(page);
	                p.setCount(count);
	                p.setTotalCount(totle);
	                int totlePage = totle%count==0?totle/count:(totle/count)+1;
	                p.setTotalPage(totlePage);
	                return p;
	            
	       
	    }
	 
	 @Override
	    public Page findNewsPage(int page, int count,String pubType) {	       	       
	            	List<PubManage> pubs = pubDaoImpl.findNewsPubs(page, count);
	                System.out.println(pubs);
	                int totle = pubDaoImpl.count(pubType);
	                System.out.println(totle);
	                Page p = new Page();
	                p.setPubs(pubs);
	                p.setCurrentPage(page);
	                p.setCount(count);
	                p.setTotalCount(totle);
	                int totlePage = totle%count==0?totle/count:(totle/count)+1;
	                p.setTotalPage(totlePage);
	                return p;
	            
	       
	    }
}
