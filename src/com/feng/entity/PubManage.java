package com.feng.entity;

public class PubManage {
	private int pid;
	private String pubTitle = "";
	private String pubType = "";
	private String pubUser = "";
	private String pubTime = "";
	private String pubContent = "";
	private String imgName = "";
	private String imgURL = "";
	public PubManage(int pid, String pubTitle, String pubType, String pubUser, String pubTime, String pubContent,
			String imgName, String imgURL) {
		super();
		this.pid = pid;
		this.pubTitle = pubTitle;
		this.pubType = pubType;
		this.pubUser = pubUser;
		this.pubTime = pubTime;
		this.pubContent = pubContent;
		this.imgName = imgName;
		this.imgURL = imgURL;
	}
	public PubManage(String pubTitle, String pubType, String pubUser, String pubTime, String pubContent, String imgName,
			String imgURL) {
		super();
		this.pubTitle = pubTitle;
		this.pubType = pubType;
		this.pubUser = pubUser;
		this.pubTime = pubTime;
		this.pubContent = pubContent;
		this.imgName = imgName;
		this.imgURL = imgURL;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPubTitle() {
		return pubTitle;
	}
	public void setPubTitle(String pubTitle) {
		this.pubTitle = pubTitle;
	}
	public String getPubType() {
		return pubType;
	}
	public void setPubType(String pubType) {
		this.pubType = pubType;
	}
	public String getPubUser() {
		return pubUser;
	}
	public void setPubUser(String pubUser) {
		this.pubUser = pubUser;
	}
	public String getPubTime() {
		return pubTime;
	}
	public void setPubTime(String pubTime) {
		this.pubTime = pubTime;
	}
	public String getPubContent() {
		return pubContent;
	}
	public void setPubContent(String pubContent) {
		this.pubContent = pubContent;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getImgURL() {
		return imgURL;
	}
	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}
	
	
	

}
