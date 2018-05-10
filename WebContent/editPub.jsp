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
<script src="js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="dist/summernote.js"></script>
<script src="dist/lang/summernote-zh-CN.js"></script>
</head>

<body>
	<div class="modal-header">
		
		<h4 class="modal-title" id="myModalLabel">发布管理</h4>
	</div>
	<div class="modal-body">
		<form method="post" action="UpdatePub"  enctype="multipart/form-data" class="form-horizontal"
			role="form">
			<div class="form-group">

				<div class="col-md-10">
					<input name="pid" type="hidden" class="form-control"
						value="${pub.pid }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">标题：</label>
				<div class="col-md-10">
					<input name="pubTitle" type="text" class="form-control"
						value="${pub.pubTitle }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">所属类别：</label>
				<div class="col-md-10">
					<c:set var="type" value="${pub.pubType }"></c:set>
					<c:choose>
						<c:when test="${type == '政策法规' }">
							<select name="pubType" class="form-control">
								<option value="政策法规" selected="selected">政策法规</option>
								<option value="新闻中心">新闻中心</option>
								<option value="办事指南">办事指南</option>
								<option value="事业单位招聘">事业单位招聘</option>
								<option value="职称资格考试">职称资格考试</option>
								<option value="常见问题">常见问题</option>
								<option value="举报投诉">举报投诉</option>
							</select>
						</c:when>
						<c:when test="${type == '新闻中心' }">
							<select name="pubType" class="form-control">
								<option value="政策法规">政策法规</option>
								<option value="新闻中心" selected="selected">新闻中心</option>
								<option value="办事指南">办事指南</option>
								<option value="事业单位招聘">事业单位招聘</option>
								<option value="职称资格考试">职称资格考试</option>
								<option value="常见问题">常见问题</option>
								<option value="举报投诉">举报投诉</option>
							</select>
						</c:when>
						<c:when test="${type == '办事指南' }">
							<select name="pubType" class="form-control">
								<option value="政策法规">政策法规</option>
								<option value="新闻中心">新闻中心</option>
								<option value="办事指南" selected="selected">办事指南</option>
								<option value="事业单位招聘">事业单位招聘</option>
								<option value="职称资格考试">职称资格考试</option>
								<option value="常见问题">常见问题</option>
								<option value="举报投诉">举报投诉</option>
							</select>
						</c:when>
						<c:when test="${type == '事业单位招聘' }">
							<select name="pubType" class="form-control">
								<option value="政策法规">政策法规</option>
								<option value="新闻中心">新闻中心</option>
								<option value="办事指南">办事指南</option>
								<option value="事业单位招聘" selected="selected">事业单位招聘</option>
								<option value="职称资格考试">职称资格考试</option>
								<option value="常见问题">常见问题</option>
								<option value="举报投诉">举报投诉</option>
							</select>
						</c:when>
						<c:when test="${type == '职称资格考试' }">
							<select name="pubType" class="form-control">
								<option value="政策法规">政策法规</option>
								<option value="新闻中心">新闻中心</option>
								<option value="办事指南">办事指南</option>
								<option value="事业单位招聘">事业单位招聘</option>
								<option value="职称资格考试" selected="selected">职称资格考试</option>
								<option value="常见问题">常见问题</option>
								<option value="举报投诉">举报投诉</option>
							</select>
						</c:when>
						<c:when test="${type == '常见问题' }">
							<select name="pubType" class="form-control">
								<option value="政策法规">政策法规</option>
								<option value="新闻中心">新闻中心</option>
								<option value="办事指南">办事指南</option>
								<option value="事业单位招聘">事业单位招聘</option>
								<option value="职称资格考试">职称资格考试</option>
								<option value="常见问题" selected="selected">常见问题</option>
								<option value="举报投诉">举报投诉</option>
							</select>
						</c:when>
						<c:otherwise>
							<select name="pubType" class="form-control">
								<option value="政策法规">政策法规</option>
								<option value="新闻中心">新闻中心</option>
								<option value="办事指南">办事指南</option>
								<option value="事业单位招聘">事业单位招聘</option>
								<option value="职称资格考试">职称资格考试</option>
								<option value="常见问题">常见问题</option>
								<option value="举报投诉" selected="selected">举报投诉</option>
							</select>
						</c:otherwise>
					</c:choose>


				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">发布人：</label>
				<div class="col-md-10">
					<input name="pubUser" type="text" class="form-control"
						value="${pub.pubUser }" placeholder="${name}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">发布时间：</label>
				<div class="col-md-10">
					<input name="pubTime" type="text" class="form-control"
						value="${pub.pubTime }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">发布内容：</label>
				<div class="col-md-10">
					<textarea name="pubContent" class="form-control" rows="3">${pub.pubContent }</textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">上传图片：</label>
					<div class="col-md-10">
						<input type="file" name="txt_file" multiple  id="uploadFile" value="${pub.imgName }" />
					</div>
			</div>
			<div class="modal-footer">
				
				<a href="DoPub" class="text-info btn btn-danger">取消</a>
				
				<button type="submit" class="btn btn-success">确认</button>
			</div>

		</form>
	</div>
	<script type="text/javascript">
	$(function(){
		 $('.summernote').summernote({
		        height: 200,
		        tabsize: 2,
		        lang: 'zh-CN'
		    });
		});
	</script>
</body>

</html>