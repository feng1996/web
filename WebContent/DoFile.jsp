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
<link href="dist/summernote.css" rel="stylesheet">
<link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/manager.css" />
<script src="js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstable.js" type="text/javascript" charset="utf-8"></script>
<script src="dist/summernote.js"></script>
<script src="dist/lang/summernote-zh-CN.js"></script>
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
					<li class="list-group-item active"><a href="DoFile">下载管理</a></li>
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
								<button class="btn btn-success" data-toggle="modal" data-target="#uploadModal">上传</button>								
							</div>
							
							<div class="edit-content alltable">
								<form action="DeleteFile" method="POST">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除</button></th>
											<th>文件标题</th>
											<th>下载数量</th>
											<th>上传人</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="ftr" items="${files}">
											<tr>
												<td><input type="checkbox" name="fid" value="${ftr.fid}" /></td>
												<td>${ftr.fileName }</td>
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