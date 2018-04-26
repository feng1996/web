package com.feng.biz.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import com.feng.biz.MemberBiz;
import com.feng.dao.impl.MemberDaoImpl;
import com.feng.entity.Member;

public class MemberBizImpl implements MemberBiz {

	MemberDaoImpl memberDaoImpl = new MemberDaoImpl();

	//private PubDao pubDao = new PubDaoImpl();
	
	@Override
	public int insert(String memberName, String memberCode, String memberType, String memberAddr,
			String memberPerson, String memberID, String memberContact, String memberPhone, String memberIntro,
			String memberURL) {
		Member member = new Member(memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL);
		return memberDaoImpl.insert(member);
	}

	
	@Override
	public Member findMemberByID(String mid) {
		Member member = memberDaoImpl.findMemberByID(mid);
		return member;
	}
	
	@Override
	public List<Integer> delMemberByMid(List<Integer> mids) {
		Iterator<Integer> it = mids.iterator();
		List<Integer> errors = new ArrayList<Integer>();
		while(it.hasNext()) {
			int id = it.next();
			if(memberDaoImpl.delMemberByMid(id)==0) {
				errors.add(id);
			}
		}
		return errors;
	}
	
	@Override
	public int update(String memberName, String memberCode, String memberType, String memberAddr,
			String memberPerson, String memberID, String memberContact, String memberPhone, String memberIntro,
			String memberURL, int mid) {
		Member member = new Member(mid,memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL);
		return memberDaoImpl.update(member);
	}
}
