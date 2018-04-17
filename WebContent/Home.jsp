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
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
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
							<!--搜索栏-->
							<form method="post" action="Search">
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
						<li  class="active">
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
								<img alt="" src="img/p1.jpg" style="width: 800px;height: 334px;"/>
								<div class="carousel-caption">
									<h4>
										市人社局机关党支部利用党员活动日上好新年廉政教育第一课
									</h4>
								</div>
							</div>
							<div class="item active">
								<img alt="" src="img/p2.jpg" style="width: 800px;height: 334px;"/>
								<div class="carousel-caption">
									<h4>
										市人社局召开学习贯彻党的十九大精神第三次中心组学习（扩大）会
									</h4>
								</div>
							</div>
							<div class="item">
								<img alt="" src="img/p3.jpg" style="width: 800px;height: 334px;"/>
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
								<a href="#panel-816093" data-toggle="tab">通知公告</a>
							</li>
							<li class="active">
								<a href="#panel-565510" data-toggle="tab">相关文件</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="panel-816093">
								<ul>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
								</ul>
							</div>
							<div class="tab-pane active" id="panel-565510">
								<ul>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
								</ul>
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
							<a href="">更多<span class="glyphicon glyphicon-play-circle"></span></a>
						</div>
					</div>
					<ul>
						<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
					</ul>
				</div>
				<div class="col-md-4 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<div class="stitle">
								<h3>
									领导讲话
								</h3>
							</div>
						</div>
						<div class="col-md-4 column" style="margin-top: 25px;">
							<!--<button type="button" class="btn btn-default">更多</button>-->
							<a href="">更多<span class="glyphicon glyphicon-play-circle"></span></a>
						</div>
					</div>
					<ul>
						<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
					</ul>
				</div>
				<div class="col-md-4 column">
					<div class="row clearfix">
						<div class="col-md-8 column">
							<div class="stitle">
								<h3>
									区乡动态
								</h3>
							</div>
						</div>
						<div class="col-md-4 column" style="margin-top: 25px;">
							<!--<button type="button" class="btn btn-default">更多</button>-->
							<a href="">更多<span class="glyphicon glyphicon-play-circle"></span></a>
						</div>
					</div>
					<ul>
						<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
									<li>
										<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
									</li>
					</ul>
				</div>
			</div>

			<div class="row clearfix">
				<div class="col-md-12 column">
					<!--<div class="row clearfix">
						<div class="col-md-12 column" style="border: solid 1px #CCCCCC;">
							
						</div>
					</div>-->
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="row clearfix">
								<div class="col-md-2 column" style="background: rgb(44,66,54);text-align: center;">
									<h3>
										便民查询
									</h3>
									<span class="glyphicon glyphicon-hand-right" style="font-size: 45px;"></span>
								</div>
								<div class="col-md-6 column">
									<div class="row clearfix">
										<div class="col-md-4 column">
											<a href="#" class="btn btn-info btn-lg" style="width: 180px;">
												<span class="glyphicon glyphicon-eye-open" style="font-size: 45px;"></span>
												<div style="font-size: 16px;text-align: center;">
													社保查询
												</div>
											</a>

										</div>
										<div class="col-md-4 column">
											<a href="#" class="btn btn-info btn-lg" style="width: 180px;">
												<span class="glyphicon glyphicon-pencil" style="font-size: 45px;"></span>
												<div>
													考试成绩查询
												</div>
											</a>
										</div>
										<div class="col-md-4 column">
											<a href="#" class="btn btn-info btn-lg" style="width: 180px;">
												<span class="glyphicon glyphicon-education" style="font-size: 45px;"></span>
												<div style="font-size: 16px;text-align: center;">
													高校毕业生档案查询
												</div>
											</a>
										</div>
									</div>
								</div>
								<div class="col-md-4 column">
									<div class="row clearfix">
										<div class="col-md-6 column">
											<a href="#" class="btn btn-info btn-lg" style="width: 180px;">
												<span class="glyphicon glyphicon-book" style="font-size: 45px;"></span>
												<div style="font-size: 16px;text-align: center;">
													职业资格证书查询
												</div>
											</a>
										</div>
										<div class="col-md-6 column">
											<a href="#" class="btn btn-info btn-lg" style="width: 180px;">
												<span class="glyphicon glyphicon-heart" style="font-size: 45px;"></span>
												<div style="font-size: 16px;text-align: center;">
													医保查询
												</div>
											</a>
										</div>
									</div>
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
									<ul>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
									</ul>
								</div>
								<div class="col-md-5 column">
									<ul>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
										<li>
											<span class="data-span">2018/1/23</span>
											<a href="">通川区就业扶贫放“大招” 四类人员可获交通补贴</a>
										
										</li>
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
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
							</div>
						</div>
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix" style="margin-bottom: 10px;">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
							</div>
						</div>
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
								</div>
								<div class="col-md-6 column">
									<img alt="" src="img/y3.png" />
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