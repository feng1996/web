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
					<li class="list-group-item active"><a href="DoMember">会员单位</a></li>
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
								<button class="btn btn-success" data-toggle="modal" data-target="#memberModal">新加</button>										
							</div>
							<div class="edit-content alltable">
								<form action="DeleteMember" method="POST">
								<table class="table table-bordered" class="pt">
									<thead>
										<tr style="height:50px;">
											<th><div style="width:100px"><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除</button></div></th>
											<th><div style="width:100px">单位名称</div></th>
											<th><div style="width:100px">组织机构代码</div></th>
											<th><div style="width:100px">单位性质</div></th>
											<th><div style="width:100px">单位地址</div></th>
											<th><div style="width:100px">法人姓名</div></th>
											<th><div style="width:100px">身份证号</div></th>
											<th><div style="width:100px">联系人</div></th>
											<th><div style="width:100px">联系电话</div></th>
											<th><div style="width:100px">单位简介</div></th>
											<th><div style="width:100px">单位网址</div></th>
											<th><div style="width:50px">编辑</div></th>
										</tr>									
									</thead>
									<tbody>
										<c:forEach var="mtr" items="${members }">
											<tr>
												<td><div style="width:100px" class="ht"><input type="checkbox" name="mid" value="${mtr.mid }" /></div></td>
												<td><div style="width:100px" class="ht">${mtr.memberName }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberCode }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberType }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberAddr }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberPerson }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberID }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberContact }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberPhone }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberIntro }</div></td>
												<td><div style="width:100px" class="ht">${mtr.memberURL }</div></td>
												<td><div style="width:100px" class="ht"><a href="EditMember?id=${mtr.mid }">修改</a></div></td>
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