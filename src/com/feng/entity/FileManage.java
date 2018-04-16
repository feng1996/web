package com.feng.entity;

public class FileManage {
	private int fid;
	private String fileName = "";
	private String path = "";
	private int downNum = 0;
	private String userName = "";
	public FileManage(int fid, String fileName, String path, int downNum, String userName) {
		super();
		this.fid = fid;
		this.fileName = fileName;
		this.path = path;
		this.downNum = downNum;
		this.userName = userName;
	}
	public FileManage(String fileName, String path, int downNum, String userName) {
		super();
		this.fileName = fileName;
		this.path = path;
		this.downNum = downNum;
		this.userName = userName;
	}
	
	public FileManage(String fileName, String path, String userName) {
		super();
		this.fileName = fileName;
		this.path = path;
		this.userName = userName;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getDownNum() {
		return downNum;
	}
	public void setDownNum(int downNum) {
		this.downNum = downNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	

}
