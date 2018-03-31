<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>后台管理</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title" id="myModalLabel">发布管理</h4>
		</div>
		<form method="post" action="UpdatePub" class="form-horizontal" role="form">
			<div class="form-group">
				<label class="col-md-2 control-label">标题：</label>
				<div class="col-md-10">
					<input name="pubTitle" type="text" class="form-control" value="${pub.pubTitle }">
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
						<option value="服务大厅">服务大厅</option>
					</select>
 	</c:when>
	<c:otherwise>
		<select name="pubType" class="form-control">
						<option value="政策法规">政策法规</option>
						<option value="服务大厅" selected="selected">服务大厅</option>
					</select>
	</c:otherwise>
</c:choose >
					
				
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">发布人：</label>
				<div class="col-md-10">
					<input name="pubUser" type="text" class="form-control" value="${pub.pubUser }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">发布时间：</label>
				<div class="col-md-10">
					<input name="pubTime" type="text" class="form-control" value="${pub.pubTime }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">发布内容：</label>
				<div class="col-md-10">
					<textarea name="pubContent" class="form-control" rows="3">${pub.pubContent }</textarea>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-danger"><a href="DoPub" class="text-success">取消</a></button>
				<button type="submit" class="btn btn-success">确认</button>
			</div>

		</form>
	</body>

</html>