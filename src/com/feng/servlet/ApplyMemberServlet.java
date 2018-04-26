package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.MemberBiz;
import com.feng.biz.impl.MemberBizImpl;


public class ApplyMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberName = request.getParameter("memberName");
		String memberCode = request.getParameter("memberCode");
		String memberType = request.getParameter("memberType");
		String memberAddr = request.getParameter("memberAddr");
		String memberPerson = request.getParameter("memberPerson");
		String memberID = request.getParameter("memberID");
		String memberContact = request.getParameter("memberContact");
		String memberPhone = request.getParameter("memberPhone");
		String memberIntro = request.getParameter("memberIntro");
		String memberURL = request.getParameter("memberURL");
		MemberBiz memberBiz = new MemberBizImpl();
		memberBiz.insert(memberName,memberCode,memberType,memberAddr,memberPerson,memberID,memberContact,memberPhone,memberIntro,memberURL);
		request.getRequestDispatcher("ShowMember").forward(request, response);
		
	}

}
