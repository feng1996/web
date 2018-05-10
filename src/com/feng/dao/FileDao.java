package com.feng.dao;

import java.util.List;
import java.util.Vector;

import com.feng.entity.FileManage;

public interface FileDao {


	// 添加
	public int insert(FileManage file);
	
	
	//显示
	public FileManage findFileByID(String fid);
	public Vector<FileManage> getFile();
	
	public Vector<FileManage> getFileLimit();
	
	public int delFileByFid(int fid);
	public List<FileManage> findFiles(int page , int count);
	public int count();
	
	public Vector<FileManage> getFileSearch(String sw);
	
	public List<String> getFileKeyword(String keyword);
	
	public int updateDownloadByFid(String fid);
	
	public Vector<FileManage> getHotFile();
}
