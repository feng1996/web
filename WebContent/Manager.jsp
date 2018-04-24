<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>后台管理</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/dcalendar.picker.css" />
<link rel="stylesheet" href="css/manager.css" />
<link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<script src="js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstable.js" type="text/javascript" charset="utf-8"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
<script src="js/drive.js" type="text/javascript"></script>
</head>

<body>
	<div class="container">
		<div class="header">
			<img src="img/manager-logo.png" />
		</div>

		<div class="tabbable">
			<div class="col-md-2 column">
				<ul class="list-group" id="ltitle">
					<li class="list-group-item"><a href="DoPub">发布管理</a></li>
					<li class="list-group-item"><a href="DoMember">会员单位</a></li>
					<li class="list-group-item"><a href="DoUser">用户管理</a></li>
					<li class="list-group-item"><a href="DoLink">友情链接</a></li>
					<li class="list-group-item"><a href="DoFile">下载管理</a></li>
				</ul>
			</div>
			<div class="col-md-10 column">
			<div>
							尊敬的<span style="color:red">${name}</span> ,您好！
							<a href="ShowHome">返回首页</a>
							
						</div>
				<div class="tab-content">
					<div class="tab-pane active lbox">


						
						
						
							<div class="input-group">
								
									<button class="btn btn-success" data-toggle="modal" data-target="#publishModal">新加</button>																									
									
							</div>
							<div class="edit-content alltable">
								<form action="DeletePub" method="POST">
								<table class="table table-bordered" id="pt">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除所选</button></th>
											<th>标题</th>
											<th>所属类别<select id="types">
																<option value="0" selected="selected">显示全部</option>
																<option value="政策法规">政策法规</option>
																<option value="新闻中心">新闻中心</option>
																<option value="办事指南">办事指南</option>
																<option value="事业单位招聘">事业单位招聘</option>
																<option value="职称资格考试">职称资格考试</option>
																<option value="常见问题">常见问题</option>
																<option value="举报投诉">举报投诉</option>
															</select></th>
											<th>发布人</th>
											<th>发布时间</th>
											<th>发布内容</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="tr" items="${pubs}">
											<tr>
												<td><input type="checkbox" name="pid" value="${tr.pid}" /></td>
												<td>${tr.pubTitle }</td>
												<td class="ptype">${tr.pubType }</td>
												<td>${tr.pubUser }</td>
												<td>${tr.pubTime }</td>
												<td>${tr.pubContent }</td>
												<td><a href="EditPub?id=${tr.pid}">修改</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</form>
								<!-- 模态框1（Modal） -->
								<div class="modal fade" id="publishModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">发布管理</h4>
											</div>
											<div class="modal-body">
												<form method="post" action="InsertPub"
													class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-md-2 control-label">标题：</label>
														<div class="col-md-10">
															<input name="pubTitle" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">所属类别：</label>
														<div class="col-md-10">
															<select name="pubType" class="form-control">
																<option value="政策法规">政策法规</option>
																<option value="新闻中心">新闻中心</option>
																<option value="办事指南">办事指南</option>
																<option value="事业单位招聘">事业单位招聘</option>
																<option value="职称资格考试">职称资格考试</option>
																<option value="常见问题">常见问题</option>
																<option value="举报投诉">举报投诉</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">发布人：</label>
														<div class="col-md-10">
															<input name="pubUser" type="text" class="form-control"
																placeholder="${name}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">发布时间：</label>
														<div class="col-md-10">
															<input name="pubTime" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">发布内容：</label>
														<div class="col-md-10">
															<textarea name="pubContent" class="form-control" rows="3"></textarea>
														</div>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">取消</button>
														<button type="submit" class="btn btn-success"
															name="insbtn">提交</button>
													</div>
												</form>

											</div>

										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>															
							</div>
							
						

					</div>
					<div class="tab-pane lbox">			
				
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#memberModal">新加</button>										
							</div>
							<div class="edit-content alltable">
								<form action="DeleteMember" method="POST">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除所选</button></th>
											<th>单位名称</th>
											<th>组织机构代码</th>
											<th>单位性质</th>
											<th>单位地址</th>
											<th>法人姓名</th>
											<th>身份证号</th>
											<th>联系人</th>
											<th>联系电话</th>
											<th>单位简介</th>
											<th>单位网址</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="mtr" items="${members }">
											<tr>
												<td><input type="checkbox" name="mid" value="${mtr.mid }" /></td>
												<td>${mtr.memberName }</td>
												<td>${mtr.memberCode }</td>
												<td>${mtr.memberType }</td>
												<td>${mtr.memberAddr }</td>
												<td>${mtr.memberPerson }</td>
												<td>${mtr.memberID }</td>
												<td>${mtr.memberContact }</td>
												<td>${mtr.memberPhone }</td>
												<td>${mtr.memberIntro }</td>
												<td>${mtr.memberURL }</td>
												<td><a href="EditMember?id=${mtr.mid }">修改</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</form>
								<!-- 模态框2（Modal） -->
								<div class="modal fade" id="memberModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">会员单位</h4>
											</div>
											<div class="modal-body">
												<form method="post" action="InsertMember"
													class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-md-2 control-label">单位名称：</label>
														<div class="col-md-10">
															<input name="memberName" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">组织机构代码：</label>
														<div class="col-md-10">
															<input name="memberCode" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">单位性质：</label>
														<div class="col-md-10">
															<select name="memberType" class="form-control">
																<option value="非公企业和社会组织">非公企业和社会组织</option>
																<option value="国有企业">国有企业</option>
																<option value="事业单位">事业单位</option>
																<option value="党政机关">党政机关</option>
																<option value="部队">部队</option>
																<option value="其它">其它</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">单位地址：</label>
														<div class="col-md-10">
															<input name="memberAddr" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">法人姓名：</label>
														<div class="col-md-10">
															<input name="memberPerson" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">身份证号：</label>
														<div class="col-md-10">
															<input name="memberID" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">联系人：</label>
														<div class="col-md-10">
															<input name="memberContact" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">联系电话：</label>
														<div class="col-md-10">
															<input name="memberPhone" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">单位简介：</label>
														<div class="col-md-10">
															<textarea name="memberIntro" class="form-control" rows="3"></textarea>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">单位网址：</label>
														<div class="col-md-10">
															<input name="memberURL" type="text" class="form-control"
																placeholder="">
														</div>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">取消</button>
														<button type="submit" class="btn btn-success"
															name="insbtn">提交</button>
													</div>
												</form>

											</div>

										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>	
							</div>						
					</div>
					<div class="tab-pane lbox">
						
						
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#userModal">新加</button>
								
							</div>
							
							<div class="edit-content alltable">
								<form action="DeleteUser" method="POST">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除所选</button></th>
											<th>用户名</th>
											<th>密码</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="utr" items="${users}">
											<tr>
												<td><input type="checkbox" name="id" value="${utr.id}" /></td>
												<td>${utr.userName }</td>
												<td>${utr.pwd }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</form>
								<!-- 模态框3（Modal） -->
								<div class="modal fade" id="userModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">用户管理</h4>
											</div>
											<div class="modal-body">
												<form method="post" action="InsertUser"
													class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-md-2 control-label">用户名：</label>
														<div class="col-md-10">
															<input name="userName" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">密码：</label>
														<div class="col-md-10">
															<input name="pwd" type="text" class="form-control"
																placeholder="">
														</div>
													</div>												
													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">取消</button>
														<button type="submit" class="btn btn-success"
															name="insbtn">提交</button>
													</div>
												</form>

											</div>

										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>															
							</div>
							
						

					</div>
														
					<div class="tab-pane lbox">
						
						
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#linkModal">新加</button>
								
							</div>
							<div class="edit-content alltable">
								<form action="DeleteLink" method="POST">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除所选</button></th>
											<th>链接名称</th>
											<th>链接地址</th>
											<th>添加时间</th>
											<th>备注</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="ltr" items="${links}">
											<tr>
												<td><input type="checkbox" name="lid" value="${ltr.lid}" /></td>
												<td>${ltr.linkName }</td>
												<td>${ltr.linkURL }</td>
												<td>${ltr.addTime }</td>
												<td>${ltr.note }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</form>
								<!-- 模态框4（Modal） -->
								<div class="modal fade" id="linkModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">友情链接</h4>
											</div>
											<div class="modal-body">
												<form method="post" action="InsertLink"
													class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-md-2 control-label">链接名称：</label>
														<div class="col-md-10">
															<input name="linkName" type="text" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-2 control-label">链接地址：</label>
														<div class="col-md-10">
															<input name="linkURL" type="text" class="form-control"
																placeholder="">
														</div>
													</div>			
													<div class="form-group">
														<label class="col-md-2 control-label">添加时间：</label>
														<div class="col-md-10">
															<input name="addTime" type="text" class="form-control"
																placeholder="">
														</div>
													</div>		
													<div class="form-group">
														<label class="col-md-2 control-label">备注：</label>
														<div class="col-md-10">
															<input name="note" type="text" class="form-control"
																placeholder="">
														</div>
													</div>											
													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">取消</button>
														<button type="submit" class="btn btn-success"
															name="insbtn">提交</button>
													</div>
												</form>

											</div>

										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>															
							</div>
							
				

					</div>		
																	
					<div class="tab-pane lbox">
						
						
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#uploadModal">新加</button>								
							</div>
							
							<div class="edit-content alltable">
								<form action="DeleteFile" method="POST">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除所选</button></th>
											<th>文件标题</th>
											<th>文件路径</th>
											<th>下载数量</th>
											<th>上传人</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="ftr" items="${files}">
											<tr>
												<td><input type="checkbox" name="fid" value="${ftr.fid}" /></td>
												<td>${ftr.fileName }</td>
												<td>${ftr.path }</td>
												<td>${ftr.downNum }</td>
												<td>${ftr.userName }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</form>
								<!-- 文件上传 -->
	<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="uploadModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content" style="width:820px">
				<div class="modal-header">
					<h5 class="modal-title" id="uploadModalLabel">文件上传</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="file-loading">
						<input type="file" name="txt_file" multiple  id="uploadFile" />
					</div>
					<div id="kartik-file-errors"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>															
							</div>
							
						</div>

					</div>
				</div>
			</div>
		</div>





	<footer>
		<p class="text-center">&copy; 四川师范大学 计算机科学学院 软件工程 冯嘉玲</p>
	</footer>


	<script type="text/javascript">
	window.onload=function(){
		var a=document.getElementById("ltitle").getElementsByTagName("a");
		var items=document.getElementsByClassName("lbox");
		
		
		//for (var i=0;i<a.length;i++) {
		//	a[i].onclick=function(){		
				var Id= "<%=session.getAttribute("Id")%>";
				for (var i=0;i<items.length;i++) {
					items[i].style.display="none";
				}
				items[Id].style.display="block";
			//}
		//}
				
		
		
	}
		
	$("#types").change(
			function() {					
				var types = $("#types").val();
				$(".ptype").each(function() {
					var pt = $(this).get(0);
					ptype = $(pt).html();
					if(types==0){
						$(".ptype").parents('tr').show();
					}
					if(ptype==types) {
					$(this).parent('tr').show();
				}else {
					$(this).parent('tr').hide();
				}
					})
				
			})
	

		
		
		$(".all").change(
				function() {
					var checked = $(this).get(0).checked;
					if (checked) {
						$(".alltable tbody").find("[type=checkbox]").not(
								":checked").each(function() {
							$(this).get(0).checked = true;
						})
					} else {
						$(".alltable tbody").find("[type=checkbox]:checked").each(
								function() {
									$(this).get(0).checked = false;
								})
					}
				});
		
		
	</script>
</body>

</html>