package com.feng.biz.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import com.feng.biz.LinkBiz;
import com.feng.dao.impl.LinkDaoImpl;
import com.feng.entity.Link;

public class LinkBizImpl implements LinkBiz {

	LinkDaoImpl linkDaoImpl = new LinkDaoImpl();

	
	@Override
	public int insert(String linkName, String linkURL, String addTime, String note) {
		Link link = new Link(linkName,linkURL,addTime,note);
		return linkDaoImpl.insert(link);
	}
	
	
	@Override
	public Link findLinkByID(String lid) {
		Link link = linkDaoImpl.findLinkByID(lid);
		return link;
	}
	
	@Override
	public List<Integer> delLinkByLid(List<Integer> lids) {
		Iterator<Integer> it = lids.iterator();
		List<Integer> errors = new ArrayList<Integer>();
		while(it.hasNext()) {
			int id = it.next();
			if(linkDaoImpl.delLinkByLid(id)==0) {
				errors.add(id);
			}
		}
		return errors;
	}
	
}
