<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>网站首页</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/Home.css" />
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="container">
			<!--公共头部-->
			<div class="row clearfix" style="background: url(img/header-bg.jpg) no-repeat;margin-top: 0px;">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<img alt="" src="img/header-logo1.png" />
							<img alt="" src="img/header-logo2.png" />
						</div>
						<div class="col-md-4 column">
							
						</div>
					</div>
					<!--导航栏-->
					<ul class="nav nav-pills" style="background: rgba(100,100,100,0.2);">
						<li class="active">
							<a href="ShowHome">首页</a>
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
							<a href=Interaction.jsp>互动交流</a>
						</li>
					</ul>
				</div>
			</div>
			<!--轮播图和选项卡-->
			<div class="row clearfix">
				<!--轮播图-->
				<div class="col-md-8 column">
					<div class="carousel slide" id="carousel-657132">
						<ol class="carousel-indicators">
							<li data-slide-to="0" data-target="#carousel-657132">
							</li>
							<li data-slide-to="1" data-target="#carousel-657132" class="active">
							</li>
							<li data-slide-to="2" data-target="#carousel-657132">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item">
								<img alt="" src="img/p1.jpg" style="width: 800px;height: 334px;" />
								<div class="carousel-caption">
									<h4>
										市人社局机关党支部利用党员活动日上好新年廉政教育第一课
									</h4>
								</div>
							</div>
							<div class="item active">
								<img alt="" src="img/p2.jpg" style="width: 800px;height: 334px;" />
								<div class="carousel-caption">
									<h4>
										市人社局召开学习贯彻党的十九大精神第三次中心组学习（扩大）会
									</h4>
								</div>
							</div>
							<div class="item">
								<img alt="" src="img/p3.jpg" style="width: 800px;height: 334px;" />
								<div class="carousel-caption">
									<h4>
										市人社局开展党建述职测评活动
									</h4>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-657132" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
						<a class="right carousel-control" href="#carousel-657132" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
				<!--选项卡-->
				<div class="col-md-4 column">
					<div class="tabbable" id="tabs-396134">
						<ul class="nav nav-tabs">
							<li>
								<a href="#panel-816093" data-toggle="tab">新闻中心</a>
							</li>
							<li class="active">
								<a href="#panel-565510" data-toggle="tab">相关文件</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="panel-816093">
								<ul class="ahidden">
									<c:forEach var="news" items="${news}">
										<c:url value="PubDetails" var="pubInfo">
										<c:param name="pid" value="${news.pid}"></c:param>											
										</c:url>											
												<li>													
													<a href="${pubInfo}">${news.pubTitle }</a>
												</li>										
										</c:forEach>
								</ul>
							</div>
							<div class="tab-pane active" id="panel-565510">
								<ul class="ahidden">
								
									<c:forEach var="me" items="${files}">
										<c:url value="DownLoad" var="downurl">
											<c:param name="fileName" value="${me.fileName}"></c:param>
											<c:param name="fid" value="${me.fid}"></c:param>
										</c:url>
										<li>
										<a href="${downurl}">${me.fileName}</a></li>
									
									</c:forEach>
								</ul>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<div class="stitle">
								<h3>
									政策解读
								</h3>
							</div>
						</div>
						<div class="col-md-4 column" style="margin-top: 25px;">
							<!--<button type="button" class="btn btn-default">更多</button>-->
							<a href="ShowPolicy">更多<span class="glyphicon glyphicon-play-circle"></span></a>
						</div>
					</div>
					<ul class="ahidden">
						<c:forEach var="policys" items="${policys}">
										<c:url value="PubDetails" var="pubInfo">
										<c:param name="pid" value="${policys.pid}"></c:param>											
										</c:url>											
												<li>													
													<a href="${pubInfo}">${policys.pubTitle }</a>
												</li>										
										</c:forEach>
					
					</ul>
				</div>
				<div class="col-md-4 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<div class="stitle">
								<h3>
									招聘信息
								</h3>
							</div>
						</div>
						<div class="col-md-4 column" style="margin-top: 25px;">
							<!--<button type="button" class="btn btn-default">更多</button>-->
							<a href="ShowService">更多<span class="glyphicon glyphicon-play-circle"></span></a>
						</div>
					</div>
					<ul class="ahidden">
						<c:forEach var="sydwzps" items="${sydwzps}">
										<c:url value="PubDetails" var="pubInfo">
										<c:param name="pid" value="${sydwzps.pid}"></c:param>											
										</c:url>											
												<li>													
													<a href="${pubInfo}">${sydwzps.pubTitle }</a>
												</li>										
										</c:forEach>						
					</ul>
				</div>
				<div class="col-md-4 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<div class="stitle">
								<h3>
									相关考试
								</h3>
							</div>
						</div>
						<div class="col-md-4 column" style="margin-top: 25px;">
							<!--<button type="button" class="btn btn-default">更多</button>-->
							<a href="ShowService">更多<span class="glyphicon glyphicon-play-circle"></span></a>
						</div>
					</div>
					<ul class="ahidden">
					<c:forEach var="zczhkss" items="${zczhkss}">
										<c:url value="PubDetails" var="pubInfo">
										<c:param name="pid" value="${zczhkss.pid}"></c:param>											
										</c:url>											
												<li>													
													<a href="${pubInfo}">${zczhkss.pubTitle }</a>
												</li>										
										</c:forEach>						
					</ul>
				</div>
			</div>

			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="row clearfix">
								<div class="col-md-2 column" style="background: rgb(44,66,54);text-align: center;">
									<h3>
										便民查询
									</h3>
									<span class="glyphicon glyphicon-hand-right" style="font-size: 45px;"></span>
								</div>
								<div class="col-md-2 column">
									<a href="http://www.chashebao.com/info/dazhou.html" class="btn btn-info btn-lg" style="width: 100%;">
										<span class="glyphicon glyphicon-eye-open" style="font-size: 45px;"></span>
										<div style="font-size: 16px;text-align: center;">
											社保查询
										</div>
									</a>

								</div>
								<div class="col-md-2 column">
									<a href="http://www.wangxiao.cn/sichuan/dazhou.html" class="btn btn-info btn-lg" style="width: 100%;">
										<span class="glyphicon glyphicon-pencil" style="font-size: 45px;"></span>
										<div style="font-size: 16px;text-align: center;">
											考试成绩查询
										</div>
									</a>
								</div>
								<div class="col-md-2 column">
									<a href="http://www.dzsdaj.gov.cn/" class="btn btn-info btn-lg" style="width: 100%;">
										<span class="glyphicon glyphicon-education" style="font-size: 45px;"></span>
										<div style="font-size: 16px;text-align: center;">
											高校档案查询
										</div>
									</a>
								</div>
								<div class="col-md-2 column">
									<a href="https://www.51test.net/jszg/sichuan/dazhou/" class="btn btn-info btn-lg" style="width: 100%;">
										<span class="glyphicon glyphicon-book" style="font-size: 45px;"></span>
										<div style="font-size: 16px;text-align: center;">
											资格证书查询
										</div>
									</a>
								</div>
								<div class="col-md-2 column">
									<a href="http://www.scdzyb.com/" class="btn btn-info btn-lg" style="width: 100%;">
										<span class="glyphicon glyphicon-heart" style="font-size: 45px;"></span>
										<div style="font-size: 16px;text-align: center;">
											医保查询
										</div>
									</a>
								</div>

							</div>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="row clearfix">
								<div class="col-md-2 column" style="background: rgb(195,167,55);text-align: center;">
									<h3>
										最新工作动态
									</h3>
									<span class="glyphicon glyphicon-hand-right" style="font-size: 45px;"></span>
								</div>
								<div class="col-md-5 column">
									<ul class="ahidden">
									<c:forEach var="news" items="${news}">
										<c:url value="PubDetails" var="pubInfo">
										<c:param name="pid" value="${news.pid}"></c:param>											
										</c:url>											
												<li>	
													<span class="data-span">${news.pubTime }</span>												
													<a href="${pubInfo}">${news.pubTitle }</a>
												</li>										
										</c:forEach>						
									</ul>
								</div>
								<div class="col-md-5 column">
									<ul class="ahidden">
									<c:forEach var="bszns" items="${bszns}">
										<c:url value="PubDetails" var="pubInfo">
										<c:param name="pid" value="${bszns.pid}"></c:param>											
										</c:url>											
												<li>	
													<span class="data-span">${bszns.pubTime }</span>												
													<a href="${pubInfo}">${bszns.pubTitle }</a>
												</li>										
										</c:forEach>										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix" style="margin-bottom: 10px;">
				<div class="col-md-12 column">					
							<div class="row clearfix">
								<div class="col-md-3 column">
									<a href="http://www.scdzjy.gov.cn/"><img alt="" src="img/y1.png" /></a>
								</div>
								<div class="col-md-3 column">
									<a href="http://www.dzpta.gov.cn/"><img alt="" src="img/y2.png" /></a>
								</div>
								<div class="col-md-3 column">
									<a href="http://dz.sc91.org.cn/"><img alt="" src="img/y3.png" /></a>
								</div>
								<div class="col-md-3 column">
									<a href="http://www.scdzyb.com/"><img alt="" src="img/y4.png" /></a>
								</div>
							</div>															
				</div>
			</div>
			<div class="row clearfix" style="margin-bottom: 10px;">
				<div class="col-md-12 column">					
							<div class="row clearfix">
								<div class="col-md-3 column">
									<a href="http://0818.weizhangwang.com/"><img alt="" src="img/y5.png" /></a>
								</div>
								<div class="col-md-3 column">
									<a href="http://www.dzgaj.gov.cn/"><img alt="" src="img/y6.png" /></a>
								</div>
								<div class="col-md-3 column">
									<a href="http://www.dzxw.net/"><img alt="" src="img/y7.png" /></a>
								</div>
								<div class="col-md-3 column">
									<a href="http://www.cdhrss.gov.cn/index.action"><img alt="" src="img/y8.png" /></a>
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