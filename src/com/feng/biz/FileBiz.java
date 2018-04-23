package com.feng.biz;

import java.util.List;

import com.feng.entity.FileManage;
import com.feng.entity.Page;

public interface FileBiz {
	
	public int insert(String fileName, String path, int downNum, String user);
	
	
	public FileManage findFileByID(String fid);
	
	public List<Integer> delFileByFid(List<Integer> fids);
	
	public Page findPage(int page,int count);
}
