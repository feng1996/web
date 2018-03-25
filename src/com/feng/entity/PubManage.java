package com.feng.entity;

public class PubManage {
	private String pubTitle = "";
	private String pubType = "";
	private String pubUser = "";
	private String pubTime = "";
	private String pubContent = "";
	// 构造文件
	public PubManage(String pubTitle, String pubType, String pubUser, String pubTime, String pubContent) {
		super();
		this.pubTitle = pubTitle;
		this.pubType = pubType;
		this.pubUser = pubUser;
		this.pubTime = pubTime;
		this.pubContent = pubContent;
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
	

}
