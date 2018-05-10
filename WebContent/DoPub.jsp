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
<link rel="stylesheet" href="css/manager.css" />
<script src="js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstable.js" type="text/javascript" charset="utf-8"></script>
<script src="dist/summernote.js"></script>
<script src="dist/lang/summernote-zh-CN.js"></script>
<script src="js/fileinput.min.js" type="text/javascript"></script>
</head>

<body>
	<div class="container">
		<div class="header">
			<img src="img/manager-logo.png" />
		</div>

		<div class="tabbable">
			<div class="col-md-2 column">
				<ul class="list-group" id="ltitle">
					<li class="list-group-item active"><a href="DoPub">发布管理</a></li>
					<li class="list-group-item"><a href="DoMember">会员单位</a></li>
					<li class="list-group-item"><a href="DoUser">用户管理</a></li>
					<li class="list-group-item"><a href="DoLink">友情链接</a></li>
					<li class="list-group-item"><a href="DoFile">下载管理</a></li>
				</ul>
			</div>
			<div class="col-md-10 column">
			<div>
							尊敬的<span style="color:red">${name}</span> ,您好！
							<a href="Logout">注销并返回首页</a>
							
						</div>
				<div>
					<div>
																
							<div class="input-group">
								
									<button class="btn btn-success" data-toggle="modal" data-target="#publishModal">新加</button>																									
									
							</div>
							<div class="edit-content alltable">
								<form action="DeletePub" method="POST">
								<table class="table table-bordered" class="pt">
									<thead>
										<tr style="height:50px;">
											<th><div style="width:120px"><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除</button></div></th>
											<th><div style="width:180px">标题</div></th>
											<th><div style="width:120px"><select id="types">
																<option value="0" selected="selected">显示全部</option>
																<option value="政策法规">政策法规</option>
																<option value="新闻中心">新闻中心</option>
																<option value="办事指南">办事指南</option>
																<option value="事业单位招聘">事业单位招聘</option>
																<option value="职称资格考试">职称资格考试</option>
																<option value="常见问题">常见问题</option>
																<option value="举报投诉">举报投诉</option>
															</select></div></th>
											<th><div style="width:80px">发布人</div></th>
											<th><div style="width:100px">发布时间</div></th>
											<th><div style="width:150px">发布内容</div></th>
											<th><div style="width:150px">图片名</div></th>
											<th><div style="width:50px">编辑</div></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="tr" items="${pubs}">
											<tr class="pubtr">
												<td><div style="width:120px" class="ht"><input type="checkbox" name="pid" value="${tr.pid}" /></div></td>
												<td><div style="width:180px"  class="ht">${tr.pubTitle }</div></td>
												<td class="ptype"><div style="width:120px"  class="ht">${tr.pubType }</div></td>
												<td><div style="width:80px"  class="ht">${tr.pubUser }</div></td>
												<td><div style="width:100px"  class="ht">${tr.pubTime }</div></td>
												<td><div style="width:150px"  class="ht">${tr.pubContent }</div></td>
												<td><div style="width:150px"  class="ht">${tr.imgName }</div></td>
												<td><div style="width:50px"  class="ht"><a href="EditPub?id=${tr.pid}">修改</a></div></td>
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
												<form method="post" enctype="multipart/form-data"  action="InsertPub"
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
													<div class="form-group">
														<label class="col-md-2 control-label">上传图片：</label>
														<div class="col-md-10">
															<input type="file" name="txt_file" multiple  id="uploadFile" />
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
					

					</div>
				</div>
			</div>
		</div>





	<footer>
				<p class="text-center">&copy; 2018-2035 All Rights Reserved. </p>
			</footer>


	<script type="text/javascript">
	
	

	$(function(){
		 $('.summernote').summernote({
		        height: 200,
		        tabsize: 2,
		        lang: 'zh-CN'
		    });
		});
		
	$("#types").change(
			function() {					
				var types = $("#types").val();
				$(".ptype").each(function() {
					var pt = $(this).find('div').get(0);
					ptype = $(pt).html();
					if(types==0){
						$(".ptype").parents('tr').show();
						consolr.log("a");
					}
					if(ptype==types) {
					$(this).parent('tr').show();
				}else {
					$(this).parent('tr').hide();
				}
					})
				
			});
	

		
		
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