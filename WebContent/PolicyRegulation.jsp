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
							<form method="post" action="PolicySearch">
							<div class="input-group" id="search">
                    			<input type="text" class="form-control" name="searchWord">
                   				<span class="input-group-btn">
                   	    			<button class="btn btn-default" type="submit">
                        				<span class="glyphicon glyphicon-search"></span>
                       				</button>
                   			 	</span>
                			</div> 
                			</form>							
						</div>
					</div>
					<!--导航栏-->
					<ul class="nav nav-pills" style="background: rgba(100,100,100,0.2);">
						<li>
							<a href="ShowHome">首页</a>
						</li>
						<li>
							<a href="Introduction.jsp">协会简介</a>
						</li>
						<li>
							<a href="ShowNews">新闻中心</a>
						</li>
						<li class="active">
							<a href="ShowPolicy">政策法规</a>
						</li>
						<li>
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
								<a class="list-group-item list-group-item-danger">TOP5<span class="glyphicon glyphicon-fire"></span><span class="glyphicon glyphicon-fire"></span><span class="glyphicon glyphicon-fire"></span>热门下载</a>
								<c:forEach var="me" items="${hotFiles}">
										<c:url value="DownLoad" var="downurl">
											<c:param name="fileName" value="${me.fileName}"></c:param>
											<c:param name="fid" value="${me.fid}"></c:param>
										</c:url>
										
										<a href="${downurl}" class="list-group-item list-group-item-success">${me.fileName}(下载量：${me.downNum})</a>
									
								</c:forEach>
							</div>
						</div>
						<div class="col-md-9 column">
							<div class="panel panel-success">
								<div class="panel-heading">
									<h3 class="panel-title">
            							政策法规
       								</h3>
								</div>
								<div class="panel-body">
									<ul class="NewsList">
										<c:forEach var="shownews" items="${page.pubs}">
										<c:url value="PubDetails" var="pubInfo">
											<c:param name="pid" value="${shownews.pid}"></c:param>											
										</c:url>
											<c:if test="${shownews.pubType == '政策法规' }">
												<li>
													<span class="data-span">${shownews.pubTime }</span>
													<a href="${pubInfo}">${shownews.pubTitle }</a>
												</li>
											</c:if>
										</c:forEach>
									</ul>

									<!--<div align="center">-->
									<nav class="pagenav">
									<ul class="pagination pagination-lg">
										<c:if test="${page.currentPage>1 }">
											<li><a href="${pageContext.request.contextPath }/ShowPolicy?page=${page.currentPage-1}">&laquo;</a></li>
										</c:if>
										<li><a href="${pageContext.request.contextPath }/ShowPolicy?page=${1}">首页</a></li>
										<c:forEach begin="1" end="${page.totalPage }" step="1" var="i">
											<c:if test="${page.currentPage==i }">
												<li><a href="${pageContext.request.contextPath }/ShowPolicy?page=${i}">${i}
													
												</a></li>
											</c:if>
											<c:if test="${page.currentPage!=i }">
												<li><a href="${pageContext.request.contextPath }/ShowPolicy?page=${i}">${i}</a></li>
											</c:if>
										</c:forEach>
										<li><a href="${pageContext.request.contextPath }/ShowPolicy?page=${page.totalPage}">末页</a></li>
										<c:if test="${page.currentPage< page.totalPage }">
											<li><a href="${pageContext.request.contextPath }/ShowPolicy?page=${page.currentPage+1}">&raquo;</a></li>
										</c:if>
									</ul>
									</nav>
									</div>

									<!--<nav class="pagenav">
									<ul class="pagination pagination-lg">
										<li>
											<a href="#">&laquo;</a>
										</li>
										<li>
											<a href="#">1</a>
										</li>
										<li>
											<a href="#">2</a>
										</li>
										<li>
											<a href="#">3</a>
										</li>
										<li>
											<a href="#">4</a>
										</li>
										<li>
											<a href="#">5</a>
										</li>
										<li>
											<a href="#">&raquo;</a>
										</li>
									</ul>
									</nav>  -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer>
				<p class="text-center">&copy; 四川师范大学 计算机科学学院 软件工程 冯嘉玲
					<a href="login.jsp">管理员登录</a>
				</p>
			</footer>
		</div>
	</body>

</html>