package com.feng.dao;

import java.util.Vector;

import com.feng.entity.FileManage;

public interface FileDao {


	// 添加
	public int insert(FileManage file);
	
	
	//显示
	public FileManage findFileByID(String fid);
	public Vector<FileManage> getFile();
	public int delFileByFid(int fid);
}
