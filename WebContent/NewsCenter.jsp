<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>新闻中心</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/NewPolice.css" />
		<link rel="stylesheet" type="text/css" href="css/keysearch.css" />
		<script src="js/Nkeysearch.js" type="text/javascript" charset="utf-8"></script>
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
							<form method="post" action="NewsSearch">
							<div class="input-group" id="search">
                    			<input type="text" class="form-control" name="searchWord" id="keyword"  onblur="keywordBlur()" onkeyup="getMore()" onfocus="getMore()"/>
                   				<span class="input-group-btn">
                   	    			<button class="btn btn-default" type="submit">
                        				<span class="glyphicon glyphicon-search"></span>
                       				</button>
                   			 	</span>
                			</div> 
                			</form>	
                			<div id="popDiv">
   <table id="contentTable" border="0" cellpadding="0" cellspacing="0">
    <tbody id="content_table_body">
   
    </tbody>
   </table>
  </div>	
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
						<li   class="active">
							<a href="ShowNews">新闻中心</a>
						</li>
						<li>
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
            							新闻中心
       								</h3>
								</div>
								<div class="panel-body">
									<ul class="NewsList">
										<c:forEach var="shownews" items="${page.pubs}">	
										<c:url value="PubDetails" var="pubInfo">
											<c:param name="pid" value="${shownews.pid}"></c:param>											
										</c:url>													
										<c:if test="${shownews.pubType == '新闻中心' }">												
										<li>
											<span class="data-span">${shownews.pubTime }</span>
											<a href="${pubInfo}">${shownews.pubTitle }</a>
										</li>
										</c:if>
										</c:forEach>										
									</ul>
									<nav class="pagenav">
									<div>当前在第<span class="pagespan">${page.currentPage }</span> 页</div>
									<ul class="pagination pagination-lg">
										<c:if test="${page.currentPage>1 }">
											<li><a href="${pageContext.request.contextPath }/ShowNews?page=${page.currentPage-1}">&laquo;</a></li>
										</c:if>
										<li><a href="${pageContext.request.contextPath }/ShowNews?page=${1}">首页</a></li>
										<c:forEach begin="1" end="${page.totalPage }" step="1" var="i">
											<c:if test="${page.currentPage==i }">
												<li><a href="${pageContext.request.contextPath }/ShowNews?page=${i}">${i}
													
												</a></li>
											</c:if>
											<c:if test="${page.currentPage!=i }">
												<li><a href="${pageContext.request.contextPath }/ShowNews?page=${i}">${i}</a></li>
											</c:if>
										</c:forEach>
										<li><a href="${pageContext.request.contextPath }/ShowNews?page=${page.totalPage}">末页</a></li>
										<c:if test="${page.currentPage< page.totalPage }">
											<li><a href="${pageContext.request.contextPath }/ShowNews?page=${page.currentPage+1}">&raquo;</a></li>
										</c:if>
									</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer>
				<p class="text-center">&copy; 2018-2035 All Rights Reserved. 
					<a href="login.jsp">管理员登录</a>
				</p>
			</footer>
		</div>
	</body>

</html>