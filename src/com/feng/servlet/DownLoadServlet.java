package com.feng.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.feng.dao.impl.FileDaoImpl;

@SuppressWarnings("serial")
public class DownLoadServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		//获得请求文件名
		String fileName = req.getParameter("fileName");
		String path = req.getParameter("path");
		String url = req.getParameter("url");
		
		
		if(url == null) {
			// 下载文件
			url = this.getServletContext().getRealPath("/WEB-INF/Drive/"+path+"/"+fileName);
		} else {
			System.out.println("下载文件");
			
			url = this.getServletContext().getRealPath("/WEB-INF/Drive/"+url+"/"+fileName);
			

		}
		String fid = req.getParameter("fid");
		FileDaoImpl fileDaoImpl = new FileDaoImpl();
		fileDaoImpl.updateDownloadByFid(fid);
		System.out.println("fid:" + fid);
		System.out.println("url:" + url);
		//File file = new File(url);
//		if(!file.exists()) {
//			req.setAttribute("message", "资源已被删除");
//			req.getRequestDispatcher("/message.jsp").forward(req, resp);
//			return ;
//		}
		String realName = fileName.substring(fileName.indexOf("_")+1);
		resp.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realName, "UTF-8"));
		
		FileInputStream in = new FileInputStream(url);
		OutputStream out = resp.getOutputStream();
		
		byte buffer[] = new byte[1024];
		int len = 0;
		
		while((len=in.read(buffer))>0) {
			out.write(buffer,0,len);
		}
		in.close();
		out.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
