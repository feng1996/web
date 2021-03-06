package com.feng.dao;

import java.util.List;
import java.util.Vector;

import com.feng.entity.Link;

public interface LinkDao {


	// 添加
	public int insert(Link link);
	
	
	//显示
	public Link findLinkByID(String lid);
	public Vector<Link> getLink();
	public int delLinkByLid(int lid);
	
	public Vector<Link> getLinkSearch(String sw);
	public List<String> getLinkKeyword(String keyword);
}
