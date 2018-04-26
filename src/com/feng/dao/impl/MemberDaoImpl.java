package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.feng.dao.BaseDao;
import com.feng.dao.MemberDao;
import com.feng.dao.RSProcessor;
import com.feng.entity.Member;

public class MemberDaoImpl extends BaseDao implements MemberDao {

	

	@Override
	public int insert(Member member) {
		System.out.println("insert");
		String sql = "insert member (memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL) values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params = { member.getMemberName(), member.getMemberCode(), member.getMemberType(),member.getMemberAddr(), member.getMemberPerson(), member.getMemberID(), member.getMemberContact(), member.getMemberPhone(),member.getMemberIntro(), member.getMemberURL() };
		return this.executeUpdate(sql, params);
	}

	@Override
	public Member findMemberByID(String mid) {
		String sql = "select * from member where mid = ?";
		Object[] params = { mid };

		RSProcessor getUserByNameProcessor = new RSProcessor() {

			public Object process(ResultSet rs) throws SQLException {
				Member member = null;

				if (rs != null) {
					if (rs.next()) {
						int mid = rs.getInt("mid");
						String memberName = rs.getString("memberName");
						String memberCode = rs.getString("memberCode");
						String memberType = rs.getString("memberType");
						String memberAddr = rs.getString("memberAddr");
						String memberPerson = rs.getString("memberPerson");
						String memberID = rs.getString("memberID");
						String memberContact = rs.getString("memberContact");
						String memberPhone = rs.getString("memberPhone");
						String memberIntro = rs.getString("memberIntro");
						String memberURL = rs.getString("memberURL");
						member = new Member(mid,memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL);
					}
				}

				return member;

			}
		};

		return (Member) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<Member> getMember() {
		String sql = "select * from member order by mid desc";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<Member> members = new Vector<Member>();
				while (rs.next()) {	
					int mid = rs.getInt("mid");
					String memberName = rs.getString("memberName");
					String memberCode = rs.getString("memberCode");
					String memberType = rs.getString("memberType");
					String memberAddr = rs.getString("memberAddr");
					String memberPerson = rs.getString("memberPerson");
					String memberID = rs.getString("memberID");
					String memberContact = rs.getString("memberContact");
					String memberPhone = rs.getString("memberPhone");
					String memberIntro = rs.getString("memberIntro");
					String memberURL = rs.getString("memberURL");
					Member member = new Member(mid,memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL);
					members.add(member);
				}
				return members;
			}
		};

		return (Vector<Member>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	
	@Override
	public int delMemberByMid(int mid) {
		String sql = "delete from member where mid = ?";
		Object[] params = {mid};
		return this.executeUpdate(sql,params);
	}
	
	
	@Override
	public int update(Member member) {
		System.out.println("update");
		String sql = "update member set memberName=?,memberCode=?,memberType=?,memberAddr=?,memberPerson=?,memberID=?,memberContact=?,memberPhone=?,memberIntro=?,memberURL=? where mid=?";
		Object[] params = { member.getMemberName(), member.getMemberCode(), member.getMemberType(),member.getMemberAddr(), member.getMemberPerson(), member.getMemberID(), member.getMemberContact(), member.getMemberPhone(),member.getMemberIntro(), member.getMemberURL(), member.getMid() };
		return this.executeUpdate(sql, params);
	}
	
	@Override
	public Vector<Member> getMemberSearch(String sw) {
		String sql = "select * from member where memberName like ?";
		Object[] params = {'%'+sw+'%' };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<Member> members = new Vector<Member>();
				while (rs.next()) {	
					int mid = rs.getInt("mid");
					String memberName = rs.getString("memberName");
					String memberCode = rs.getString("memberCode");
					String memberType = rs.getString("memberType");
					String memberAddr = rs.getString("memberAddr");
					String memberPerson = rs.getString("memberPerson");
					String memberID = rs.getString("memberID");
					String memberContact = rs.getString("memberContact");
					String memberPhone = rs.getString("memberPhone");
					String memberIntro = rs.getString("memberIntro");
					String memberURL = rs.getString("memberURL");
					Member member = new Member(mid,memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL);
					members.add(member);
				}
				return members;
			}
		};

		return (Vector<Member>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
}
