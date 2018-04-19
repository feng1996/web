package com.feng.dao;

import java.util.Vector;

import com.feng.entity.Link;
import com.feng.entity.Member;

public interface LinkDao {


	// 添加
	public int insert(Link link);
	
	
	//显示
	public Link findLinkByID(String lid);
	public Vector<Link> getLink();
	public int delLinkByLid(int lid);
	
	public Vector<Link> getLinkSearch(String sw);
}
