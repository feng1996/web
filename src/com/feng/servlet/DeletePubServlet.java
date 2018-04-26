package com.feng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.PubBizImpl;

public class DeletePubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String db = request.getParameter("delbtn");
		String p = request.getParameter("pid");
		System.out.println("deletepub"+p);
		if (db != null) {
			String[] values = request.getParameterValues("pid");
			if (values == null) {
				System.out.println("null");
			} else {

				List<Integer> pids = new ArrayList<Integer>();
				for (int i = 0; i < values.length; i++) {
					pids.add(Integer.parseInt(values[i]));
				}
				PubBiz pubBiz = new PubBizImpl();
				pubBiz.delPubByPid(pids);

			}
		}
		request.getRequestDispatcher("DoPub").forward(request, response);
	}

}
