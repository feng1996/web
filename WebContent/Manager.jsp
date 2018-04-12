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
<script src="js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/dcalendar.picker.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstable.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<div class="container">
		<div class="header">
			<img src="img/manager-logo.png" />
		</div>

		<div class="tabbable">
			<div class="col-md-2 column">
				<ul class="list-group">
					<li class="list-group-item"><a href="#panel-1"
						data-toggle="tab">发布管理</a></li>
					<li class="list-group-item"><a href="#panel-2"
						data-toggle="tab">会员单位</a></li>
					<li class="list-group-item"><a href="#panel-3"
						data-toggle="tab">用户管理</a></li>
					<li class="list-group-item"><a href="#panel-4"
						data-toggle="tab">友情链接</a></li>
					<li class="list-group-item"><a href="#panel-5"
						data-toggle="tab">下载管理</a></li>
				</ul>
			</div>
			<div class="col-md-10 column">
				<div class="tab-content">
					<div class="tab-pane active" id="panel-1">


						<div class="function">
							<label for="">起始时间：</label> <input class='mydatepicker2'
								type='text' /> <label for="">截止时间:</label> <input
								class='mydatepicker2' type='text' />
							<button type="button" class="btn btn-primary">编辑信息正文</button>
							<button type="button" class="btn btn-primary">上传图片</button>
							<button type="button" class="btn btn-primary">导出Excel</button>
						</div>
						<div class="func-table">
						
							<div class="input-group">
								
									<button class="btn btn-success" data-toggle="modal" data-target="#publishModal">新加</button>																									
									<span class="input-group-btn">
										<button class="btn btn-default" type="button">清除</button>
									</span> <input type="text" class="form-control"
										placeholder="全文搜索内容..."> <span class="input-group-btn">
										<button class="btn btn-default" type="button">
											<span class="glyphicon glyphicon-search"></span>搜索
										</button>
									</span>
							</div>
							<div class="edit-content alltable">
								<form action="DeletePub" method="POST">
								<table class="table table-bordered" id="pt">
									<thead>
										<tr>
											<th><input type="checkbox" class="all" />全选 <button type="submit" class="btn btn-warning" name="delbtn">删除所选</button></th>
											<th>标题</th>
											<th>所属类别</th>
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
												<td>${tr.pubType }</td>
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
																placeholder="">
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

					</div>
					<div class="tab-pane" id="panel-2">
						<div class="function">
							<label for="">起始时间：</label> <input class='mydatepicker2'
								type='text' /> <label for="">截止时间:</label> <input
								class='mydatepicker2' type='text' />
							<button type="button" class="btn btn-primary">编辑信息正文</button>
							<button type="button" class="btn btn-primary">上传图片</button>
							<button type="button" class="btn btn-primary">导出Excel</button>
						</div>
						<div class="func-table">
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#memberModal">新加</button>
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">清除</button>
								</span> <input type="text" class="form-control" placeholder="全文搜索内容...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<span class="glyphicon glyphicon-search"></span>搜索
									</button>
								</span>
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
					</div>
					<div class="tab-pane" id="panel-3">
						<div class="function">
							<label for="">起始时间：</label> <input class='mydatepicker2'
								type='text' /> <label for="">截止时间:</label> <input
								class='mydatepicker2' type='text' />
							<button type="button" class="btn btn-primary">编辑信息正文</button>
							<button type="button" class="btn btn-primary">上传图片</button>
							<button type="button" class="btn btn-primary">导出Excel</button>
						</div>
						<div class="func-table">
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#userModal">新加</button>
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">清除</button>
								</span> <input type="text" class="form-control" placeholder="全文搜索内容...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<span class="glyphicon glyphicon-search"></span>搜索
									</button>
								</span>
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

					</div>
														
					<div class="tab-pane" id="panel-4">
						<div class="function">
							<label for="">起始时间：</label> <input class='mydatepicker2'
								type='text' /> <label for="">截止时间:</label> <input
								class='mydatepicker2' type='text' />
							<button type="button" class="btn btn-primary">编辑信息正文</button>
							<button type="button" class="btn btn-primary">上传图片</button>
							<button type="button" class="btn btn-primary">导出Excel</button>
						</div>
						<div class="func-table">
							<div class="input-group">
								<button class="btn btn-success" data-toggle="modal" data-target="#linkModal">新加</button>
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">清除</button>
								</span> <input type="text" class="form-control" placeholder="全文搜索内容...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<span class="glyphicon glyphicon-search"></span>搜索
									</button>
								</span>
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

					</div>														
					<div class="tab-pane" id="panel-5">
						<div class="function">
							<label for="">起始时间：</label> <input class='mydatepicker2'
								type='text' /> <label for="">截止时间:</label> <input
								class='mydatepicker2' type='text' />
							<button type="button" class="btn btn-primary">编辑信息正文</button>
							<button type="button" class="btn btn-primary">上传图片</button>
							<button type="button" class="btn btn-primary">导出Excel</button>
						</div>
						<div class="func-table">
							<div class="input-group">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">清除</button>
								</span> <input type="text" class="form-control" placeholder="全文搜索内容...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<span class="glyphicon glyphicon-search"></span>搜索
									</button>
								</span>
							</div>
							<div class="edit-content">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><button class="btn btn-success" type="button">新加</button></th>
											<th>标题</th>
											<th>所属类别</th>
											<th>发布人</th>
											<th>发布时间</th>
											<th>发布内容</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><button type="button" class="btn btn-warning">删除</button></td>
											<td>市人社局召开学习贯彻党的十九大精神第三次中心组学习（扩大）会</td>
											<td>行业动态</td>
											<td>fjl</td>
											<td>2018/1/1</td>
											<td>用文字还是用链接？</td>
										</tr>

									</tbody>
								</table>
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
	</div>

	<script type="text/javascript">
		$('.mydatepicker2').dcalendarpicker({
			format : 'yyyy-mm-dd'
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