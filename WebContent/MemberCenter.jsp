<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>政策法规</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/NewPolice.css" />
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="container">
			<!--公共头部-->
			<div class="row clearfix" style="background: url(img/header-bg.jpg) no-repeat">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<img alt="" src="img/header-logo1.png" />
							<img alt="" src="img/header-logo2.png" />
						</div>
						<div class="col-md-4 column">
							<!--搜索栏-->
							<div class="input-group" id="search">
								<input type="text" class="form-control">
								<span class="input-group-btn">
                   	    			<button class="btn btn-default" type="button">
                        				<span class="glyphicon glyphicon-search"></span>
								</button>
								</span>
							</div>
						</div>
					</div>
					<!--导航栏-->
					<ul class="nav nav-pills" style="background: rgba(100,100,100,0.2);">
						<li>
							<a href="Home.jsp">首页</a>
						</li>
						<li>
							<a href="Introduction.jsp">协会简介</a>
						</li>
						<li>
							<a href="ShowNews">新闻中心</a>
						</li>
						<li>
							<a href="ShowPolicy">政策法规</a>
						</li>
						<li>
							<a href="ShowService">服务大厅</a>
						</li>
						<li class="active">
							<a href="ShowMember">会员中心</a>
						</li>
						<li>
							<a href="ShowDownload">资料下载</a>
						</li>
						<li>
							<a href="ShowLink">友情链接</a>
						</li>
						<li>
							<a href="Interaction.jsp">互动交流</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-3 column">
							<div class="list-group">
								<a class="list-group-item list-group-item-danger">TOP10<span class="glyphicon glyphicon-fire"></span><span class="glyphicon glyphicon-fire"></span><span class="glyphicon glyphicon-fire"></span>热门点击</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源 </a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源 </a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源 </a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源</a>
								<a href="#" class="list-group-item list-group-item-success">达州市人力资源 </a>
							</div>
						</div>
						<div class="col-md-9 column">
							<div class="panel panel-success">
								<div class="panel-heading">
									<h3 class="panel-title">
            							会员中心
       								</h3>
								</div>
								<div class="panel-body">
									<button type="button" class="btn btn-success" data-toggle="collapse" data-target="#c1">
										会员展示
									</button>
									<button class="btn btn-success" data-toggle="modal" data-target="#memberModal">会员申请</button>
									<div id="c1" class="collapse in">
										<ul class="NewsList">
											<c:forEach var="showmember" items="${members}">
										<li><a href="${showmember.memberURL }">${showmember.memberName }</a></li>
									</c:forEach>																					
										</ul>
									</div>
									<!-- 模态框（Modal） -->
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
												<form method="post" action="ApplyMember"
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
														<button type="submit" class="btn btn-success">提交</button>
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
				<p class="text-center">&copy; 四川师范大学 计算机科学学院 软件工程 冯嘉玲 <a href="login.jsp">管理员登录</a></p>		
			</footer>
		</div>
	</body>

</html>