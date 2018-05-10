package com.feng.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.feng.biz.PubBiz;
import com.feng.biz.impl.PubBizImpl;


public class UpdatePubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		
		//上传文件的存储路径（服务器文件系统上的绝对文件路径）
		String uploadFilePath = req.getSession().getServletContext()
				.getRealPath("upload/");

		boolean uploaded = false;
		String pid = "";
		String imgName = ""; //上传的文件名
		String imgURL = "";
		String fieldName = ""; //表单字段元素的name属性值
		String pubTitle = "";
		String pubType = "";
		HttpSession session = req.getSession();
		String pubUser = (String)session.getAttribute("name");
		String pubTime = "";
		String pubContent = "";

		//通过Arrays类的asList()方法创建固定长度的集合
		List<String> fileType = Arrays.asList("gif", "bmp", "jpg", "png");

		//请求信息中的内容是否是multipart类型
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);
		if (isMultipart) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				//解析form表单中所有文件
				List<FileItem> items = upload.parseRequest(req);
				Iterator<FileItem> iter = items.iterator();
				while (iter.hasNext()) { //依次处理每个文件
					FileItem item = (FileItem) iter.next();
					if (item.isFormField()) { //普通表单字段
						fieldName = item.getFieldName(); //表单字段的属性值
						if (fieldName.equals("pid")) {
							pid = item.getString("UTF-8");						
							//输出表单字段的值
							System.out.print("pid：" + pid);
						}else if (fieldName.equals("pubTitle")) {
							pubTitle = item.getString("UTF-8");
							//输出表单字段的值
							System.out.print("标题：" + pubTitle);
							
						}else if (fieldName.equals("pubType")) {
							pubType = item.getString("UTF-8");
							//输出表单字段的值
							System.out.print("类型：" + pubType);
						}else if (fieldName.equals("pubUser")) {							
							
							//输出表单字段的值
							System.out.print("发布人：" + pubUser);
						}else if (fieldName.equals("pubTime")) {
							pubTime = item.getString("UTF-8");
							//输出表单字段的值
							System.out.print("时间：" + pubTime);
						}else if (fieldName.equals("pubContent")) {
							pubContent = item.getString("UTF-8");
							//输出表单字段的值
							System.out.print("内容：" + pubContent);
						}
					} else { //文件表单字段

						String fileName = item.getName();
						if (fileName != null && !fileName.equals("")) {
							String ext = fileName.substring(fileName
									.lastIndexOf(".") + 1);
							if (!fileType.contains(ext)) { //判断文件类型是否在允许范围内
								System.out.print("更新失败，文件类型只能是gif、bmp、jpg");
							} else {
								File fullFile = new File(item.getName());
								File saveFile = new File(uploadFilePath,
										fullFile.getName());
								item.write(saveFile);
								uploaded = true;
								imgName = fullFile.getName();
								imgURL = uploadFilePath+imgName;
								System.out.print("更加成功后的文件名是：" + imgName);
								System.out.print("更新成功后的文件地址是：" + imgURL);
								
							}
						}
					}
					
				}
				int id = Integer.parseInt(pid);
				PubBiz pubBiz = new PubBizImpl();
				pubBiz.update(pubTitle, pubType, pubUser, pubTime, pubContent,imgName,imgURL,id);
				req.getRequestDispatcher("DoPub").forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	
		
	}

}
