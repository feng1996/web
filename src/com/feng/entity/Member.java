package com.feng.entity;

public class Member {
	private int mid;
	private String memberName = "";
	private String memberCode = "";
	private String memberType = "";
	private String memberAddr = "";
	private String memberPerson = "";
	private String memberID = "";
	private String memberContact = "";
	private String memberPhone = "";
	private String memberIntro = "";
	private String memberURL = "";
	public Member(int mid, String memberName, String memberCode, String memberType, String memberAddr,
			String memberPerson, String memberID, String memberContact, String memberPhone, String memberIntro,
			String memberURL) {
		super();
		this.mid = mid;
		this.memberName = memberName;
		this.memberCode = memberCode;
		this.memberType = memberType;
		this.memberAddr = memberAddr;
		this.memberPerson = memberPerson;
		this.memberID = memberID;
		this.memberContact = memberContact;
		this.memberPhone = memberPhone;
		this.memberIntro = memberIntro;
		this.memberURL = memberURL;
	}
	public Member(String memberName, String memberCode, String memberType, String memberAddr, String memberPerson,
			String memberID, String memberContact, String memberPhone, String memberIntro, String memberURL) {
		super();
		this.memberName = memberName;
		this.memberCode = memberCode;
		this.memberType = memberType;
		this.memberAddr = memberAddr;
		this.memberPerson = memberPerson;
		this.memberID = memberID;
		this.memberContact = memberContact;
		this.memberPhone = memberPhone;
		this.memberIntro = memberIntro;
		this.memberURL = memberURL;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberPerson() {
		return memberPerson;
	}
	public void setMemberPerson(String memberPerson) {
		this.memberPerson = memberPerson;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getMemberContact() {
		return memberContact;
	}
	public void setMemberContact(String memberContact) {
		this.memberContact = memberContact;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberIntro() {
		return memberIntro;
	}
	public void setMemberIntro(String memberIntro) {
		this.memberIntro = memberIntro;
	}
	public String getMemberURL() {
		return memberURL;
	}
	public void setMemberURL(String memberURL) {
		this.memberURL = memberURL;
	}
	
	
	
	

}
