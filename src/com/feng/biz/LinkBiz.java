package com.feng.biz;

import java.util.List;

import com.feng.entity.Link;

public interface LinkBiz {
	
	public int insert(String linkName, String linkURL, String addTime, String note);
	
	
	public Link findLinkByID(String lid);
	
	public List<Integer> delLinkByLid(List<Integer> lids);
	
}
