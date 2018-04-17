package com.feng.biz.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Vector;

import com.feng.biz.FileBiz;
import com.feng.dao.FileDao;
import com.feng.dao.impl.FileDaoImpl;
import com.feng.entity.FileManage;

public class FileBizImpl implements FileBiz {

	FileDaoImpl fileDaoImpl = new FileDaoImpl();

	//private PubDao pubDao = new PubDaoImpl();
	
	@Override
	public int insert(String fileName, String path, int downNum, String userName) {
		FileManage file = new FileManage(fileName,path,downNum,userName);
		return fileDaoImpl.insert(file);
	}
	
	
	@Override
	public FileManage findFileByID(String fid) {
		FileManage file = fileDaoImpl.findFileByID(fid);
		return file;
	}
	
	@Override
	public List<Integer> delFileByFid(List<Integer> fids) {
		Iterator<Integer> it = fids.iterator();
		List<Integer> errors = new ArrayList<Integer>();
		while(it.hasNext()) {
			int id = it.next();
			if(fileDaoImpl.delFileByFid(id)==0) {
				errors.add(id);
			}
		}
		return errors;
	}
	
}