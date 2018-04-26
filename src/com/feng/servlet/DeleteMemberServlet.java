package com.feng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.MemberBiz;
import com.feng.biz.impl.MemberBizImpl;

public class DeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String db = request.getParameter("delbtn");
		String m = request.getParameter("mid");
		System.out.println("huoqudemid"+m);
		if (db != null) {
			String[] values = request.getParameterValues("mid");
			if (values == null) {
				System.out.println("null");
			} else {

				List<Integer> mids = new ArrayList<Integer>();
				for (int i = 0; i < values.length; i++) {
					mids.add(Integer.parseInt(values[i]));
				}
				MemberBiz memberBiz = new MemberBizImpl();
				memberBiz.delMemberByMid(mids);

			}
		}
		request.getRequestDispatcher("DoMember").forward(request, response);
	}

}
