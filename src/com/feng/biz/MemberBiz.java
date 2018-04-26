package com.feng.biz;

import java.util.List;

import com.feng.entity.Member;

public interface MemberBiz {
	
	public int insert(String memberName, String memberCode, String memberType, String memberAddr,
			String memberPerson, String memberID, String memberContact, String memberPhone, String memberIntro,
			String memberURL);
	
	public Member findMemberByID(String mid);
	
	public List<Integer> delMemberByMid(List<Integer> mids);
	
	public int update(String memberName, String memberCode, String memberType, String memberAddr,
			String memberPerson, String memberID, String memberContact, String memberPhone, String memberIntro,
			String memberURL, int mid);
}
