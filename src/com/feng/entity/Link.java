package com.feng.entity;

public class Link {
	private int lid;
	private String linkName;
	private String linkURL;
	private String addTime;
	private String note;
	public Link(int lid, String linkName, String linkURL, String addTime, String note) {
		super();
		this.lid = lid;
		this.linkName = linkName;
		this.linkURL = linkURL;
		this.addTime = addTime;
		this.note = note;
	}
	public Link(String linkName, String linkURL, String addTime, String note) {
		super();
		this.linkName = linkName;
		this.linkURL = linkURL;
		this.addTime = addTime;
		this.note = note;
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getLinkName() {
		return linkName;
	}
	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}
	public String getLinkURL() {
		return linkURL;
	}
	public void setLinkURL(String linkURL) {
		this.linkURL = linkURL;
	}
	public String getAddTime() {
		return addTime;
	}
	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}

}
