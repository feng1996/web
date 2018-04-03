package com.feng.dao;

import java.util.Vector;

import com.feng.entity.Member;

public interface MemberDao {


	// 添加
	public int insert(Member member);
	
	
	//显示
	public Member findMemberByID(String mid);
	public Vector<Member> getMember();
	public int delMemberByMid(int mid);
	public int update(Member member);
}
