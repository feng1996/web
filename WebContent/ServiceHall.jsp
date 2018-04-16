<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>服务大厅</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/NewPolice.css" />
		<link rel="stylesheet" href="css/ServiceHall.css" />
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
						<li   class="active">
							<a href="ShowService">服务大厅</a>
						</li>
						<li>
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
            							服务大厅
       								</h3>
								</div>
								<div class="panel-body">
									<div class="row clearfix">
										<nav class="col-sm-3" id="myScrollspy">
													<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="40" style="top: 20px;">
														<li>
															<a href="#section1">办事指南</a>
														</li>
														<li>
															<a href="#section2">事业单位招聘</a>
														</li>
														<li>
															<a href="#section3">职称资格考试</a>
														</li>
														<li class="dropdown">
															<a class="dropdown-toggle" data-toggle="dropdown" href="#">问题反馈<span class="caret"></span></a>
															<ul class="dropdown-menu">
																<li>
																	<a href="#section41">常见问题</a>
																</li>
																<li>
																	<a href="#section42">举报投诉</a>
																</li>
															</ul>
														</li>
													</ul>
												
										</nav>
										<div class="col-sm-9">
											<div id="section1">
												<a href=""><h4>办事指南</h4></a>												
												<ul class="NewsList">
													<c:forEach var="shownews" items="${pubs}">	
													<c:if test="${shownews.pubType == '办事指南' }">													
														<li>
															<span class="data-span">${shownews.pubTime }</span>
															<a href="${shownews.pubContent }">${shownews.pubTitle }</a>
														</li>
													</c:if>
													</c:forEach>
												</ul>
											</div>
											<div id="section2">
												<a href=""><h4>事业单位招聘</h4></a>
												<ul class="NewsList">
													<c:forEach var="shownews" items="${pubs}">	
													<c:if test="${shownews.pubType == '事业单位招聘' }">													
														<li>
															<span class="data-span">${shownews.pubTime }</span>
															<a href="${shownews.pubContent }">${shownews.pubTitle }</a>
														</li>
													</c:if>
													</c:forEach>
												</ul>
											</div>
											<div id="section3">
												<a href=""><h4>职称资格考试</h4></a>
												<ul class="NewsList">
													<c:forEach var="shownews" items="${pubs}">	
													<c:if test="${shownews.pubType == '职称资格考试' }">													
														<li>
															<span class="data-span">${shownews.pubTime }</span>
															<a href="${shownews.pubContent }">${shownews.pubTitle }</a>
														</li>
													</c:if>
													</c:forEach>
												</ul>
											</div>
											<div id="section41">
												<a href=""><h4>常见问题</h4></a>
												<ul class="NewsList">
													<c:forEach var="shownews" items="${pubs}">	
													<c:if test="${shownews.pubType == '常见问题' }">													
														<li>
															<span class="data-span">${shownews.pubTime }</span>
															<a href="${shownews.pubContent }">${shownews.pubTitle }</a>
														</li>
													</c:if>
													</c:forEach>
												</ul>
											</div>
											<div id="section42">
												<a href=""><h4>举报投诉</h4></a>
												<ul class="NewsList">
													<c:forEach var="shownews" items="${pubs}">	
													<c:if test="${shownews.pubType == '举报投诉' }">													
														<li>
															<span class="data-span">${shownews.pubTime }</span>
															<a href="${shownews.pubContent }">${shownews.pubTitle }</a>
														</li>
													</c:if>
													</c:forEach>
												</ul>
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
				<p class="text-center">&copy; 四川师范大学 计算机科学学院 软件工程 冯嘉玲 <a href="login.jsp">管理员登录</a></p>		
			</footer>
		</div>
	</body>

</html>