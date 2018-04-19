package com.feng.dao;

import java.util.Vector;

import com.feng.entity.Member;
import com.feng.entity.PubManage;

public interface MemberDao {


	// 添加
	public int insert(Member member);
	
	
	//显示
	public Member findMemberByID(String mid);
	public Vector<Member> getMember();
	public int delMemberByMid(int mid);
	public int update(Member member);
	
	public Vector<Member> getMemberSearch(String sw);
}
