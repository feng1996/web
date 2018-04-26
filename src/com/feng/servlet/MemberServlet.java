package com.feng.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feng.biz.impl.MemberBizImpl;
import com.feng.dao.impl.MemberDaoImpl;
import com.feng.entity.Member;

public class MemberServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("UTF-8");
			
			String mid = req.getParameter("mid");
			System.out.println("domember"+mid);
			MemberBizImpl memberBizImpl = new MemberBizImpl();
			Member member = memberBizImpl.findMemberByID(mid);
			
			MemberDaoImpl memberDaoImpl = new MemberDaoImpl();
			Vector<Member> members = memberDaoImpl.getMember();
			req.setAttribute("members", members);
			req.setAttribute("member", member);
			
			String Id="1";
			HttpSession session=req.getSession();
			session.setAttribute("Id",Id);
					
			req.getRequestDispatcher("Manager.jsp").forward(req, resp);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}
