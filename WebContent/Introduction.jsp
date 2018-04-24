<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>协会简介</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
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
							
						</div>
					</div>
					<!--导航栏-->
					<ul class="nav nav-pills" style="background: rgba(100,100,100,0.2);">
						<li>
							<a href="ShowHome">首页</a>
						</li>
						<li   class="active">
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
            							协会简介
       								</h3>
								</div>
								<div class="panel-body">
									<h1>达州市人力资源和社会保障协会简介</h2>
										<p>达州市人力资源和社会保障协会（以下简称协会）是由达州市从事人力资源和社会保障事业的单位和个人以及有关人士自愿组成的非营利性、专业性的社会组织。</p>
										<p>协会坚持党的基本路线和方针政策，遵守宪法、法律、法规和社会道德风尚，团结吸纳广大城乡企事业单位相关工作部门和工作者以及一切关心、热爱、有志于研究探讨人力资源和社会保障事业的专家、学者，通过学习、实践、研究和探讨，共同推动人力资源和社会保障理论的深化，促进人力资源和社会保障工作的开展，更好地满足用人单位和广大劳动者对人力资源和社会保障的需求，维护用人单位和劳动者的合法权益，为促进我市经济发展和社会稳定做贡献。</p>
										<p>协会在达州市人力资源和社会保障局的业务指导和达州市民政局的监督管理下，开展以下工作：</p>
										<p>一、积极组织和推动全市人力资源开发和社会保障的理论研究和问题探讨，增强企业与企业、企业与政府间的交流合作，提高人力资源和社会保障工作的管理水平；</p>
										<p>二、为全市人力资源服务行业产业化建设和实施，架设理论和信息服务平台，提供优质后勤保障服务体系；</p>
										<p>三、促进人力资源产业深化发展，搭建交流和理论实践平台；</p>
										<p>四、面向全市为企事业单位和劳动者提供人力资源和社会保障政策咨询、宣传、指导、策划；</p>
										<p>五、组织劳动保障法律工作者，为用人单位和劳动者提供法律咨询和法律援助；</p>
										<p>六、组织人力资源和社会保障学术研讨会、培训、讲座，引进、推广先进的人力资源和社会保障的管理方法和模式，提高本领域内的服务质量，加强和规范对从业单位和个人的管理；</p>
										<p>七、面向企业和个人开展创业培训及咨询服务工作；</p>
										<p>八、开展人才中介交流服务，加强对外横向联系合作、交流和学习，使人才合理流动，适应社会需求；</p>
										<p>九、总结研讨成果，统计各类用人单位人力资源和社会保障方面的工作数据和问题，为政府职能部门在制定相关政策时，提供建设性意见和建议；</p>
										<p>十、开展其他与本会相关民间活动。</p>
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