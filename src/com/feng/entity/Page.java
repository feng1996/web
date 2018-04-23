package com.feng.entity;

import java.util.List;

public class Page {
	private int currentPage;//当前页
    private int totalPage;//总页数
    private int count;//一页多少条数据
    private List<PubManage> pubs;//当前页的图书数据
    private List<FileManage> files;
    private int totalCount;//数据总条数
    
    
    
	public Page() {
		super();
	}
	public Page(int currentPage, int totalPage, int count, List<PubManage> pubs,List<FileManage> files, int totalCount) {
		super();
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.count = count;
		this.pubs = pubs;
		this.files = files;
		this.totalCount = totalCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<PubManage> getPubs() {
		return pubs;
	}
	public void setPubs(List<PubManage> pubs) {
		this.pubs = pubs;
	}
	public List<FileManage> getFiles() {
		return files;
	}
	public void setFiles(List<FileManage> files) {
		this.files = files;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
    
    
}
