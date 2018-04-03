package com.feng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.LinkBiz;
import com.feng.biz.PubBiz;
import com.feng.biz.impl.LinkBizImpl;
import com.feng.biz.impl.PubBizImpl;

public class DeleteLinkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String db = request.getParameter("delbtn");
		String lid = request.getParameter("lid");
		System.out.println("deletelink"+lid);
		if (db != null) {
			String[] values = request.getParameterValues("lid");
			if (values == null) {
				System.out.println("null");
			} else {

				List<Integer> lids = new ArrayList<Integer>();
				for (int i = 0; i < values.length; i++) {
					lids.add(Integer.parseInt(values[i]));
				}
				LinkBiz linkBiz = new LinkBizImpl();
				linkBiz.delLinkByLid(lids);

			}
		}
		request.getRequestDispatcher("DoLink").forward(request, response);
	}

}
