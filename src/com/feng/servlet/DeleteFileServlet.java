package com.feng.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feng.biz.FileBiz;
import com.feng.biz.LinkBiz;
import com.feng.biz.PubBiz;
import com.feng.biz.impl.FileBizImpl;
import com.feng.biz.impl.LinkBizImpl;
import com.feng.biz.impl.PubBizImpl;

public class DeleteFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String db = request.getParameter("delbtn");
		String fid = request.getParameter("fid");
		System.out.println("deletefile"+fid);
		if (db != null) {
			String[] values = request.getParameterValues("fid");
			if (values == null) {
				System.out.println("null");
			} else {

				List<Integer> fids = new ArrayList<Integer>();
				for (int i = 0; i < values.length; i++) {
					fids.add(Integer.parseInt(values[i]));
				}
				FileBiz fileBiz = new FileBizImpl();
				fileBiz.delFileByFid(fids);

			}
		}
		request.getRequestDispatcher("DoFile").forward(request, response);
	}

}
