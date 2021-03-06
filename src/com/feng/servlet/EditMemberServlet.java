package com.feng.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.impl.MemberBizImpl;
import com.feng.entity.Member;


public class EditMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String mid = request.getParameter("id");
		System.out.println("editM"+mid);
		MemberBizImpl memberBizImpl = new MemberBizImpl();
		Member member = memberBizImpl.findMemberByID(mid);
		request.setAttribute("member", member);
		request.getRequestDispatcher("editMember.jsp").forward(request, response);
		
	}

}
