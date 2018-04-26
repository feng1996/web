package com.feng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.UserBiz;
import com.feng.biz.impl.UserBizImpl;

public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String db = request.getParameter("delbtn");
		String uid = request.getParameter("id");
		System.out.println("deleteuser"+uid);
		if (db != null) {
			String[] values = request.getParameterValues("id");
			if (values == null) {
				System.out.println("null");
			} else {

				List<Integer> ids = new ArrayList<Integer>();
				for (int i = 0; i < values.length; i++) {
					ids.add(Integer.parseInt(values[i]));
				}
				UserBiz userBiz = new UserBizImpl();
				userBiz.delUsersByid(ids);

			}
		}
		request.getRequestDispatcher("DoUser").forward(request, response);
	}

}
