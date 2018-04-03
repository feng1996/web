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
			<h4 class="modal-title" id="myModalLabel">会员单位</h4>
		</div>
		<div class="modal-body">
			<form method="post" action="UpdateMember" class="form-horizontal" role="form">
				<div class="form-group">

					<div class="col-md-10">
						<input name="mid" type="hidden" class="form-control" value="${member.mid }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">单位名称：</label>
					<div class="col-md-10">
						<input name="memberName" type="text" class="form-control" value="${member.memberName }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">组织机构代码：</label>
					<div class="col-md-10">
						<input name="memberCode" type="text" class="form-control" value="${member.memberCode }">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label">单位性质：</label>
					<div class="col-md-10">
						<c:set var="mtype" value="${member.memberType }"></c:set>
						<c:choose>
							<c:when test="${mtype == '非公企业和社会组织法规' }">
								<select name="memberType" class="form-control">
									<option value="非公企业和社会组织" selected="selected">非公企业和社会组织</option>
									<option value="国有企业">国有企业</option>
									<option value="事业单位">事业单位</option>
									<option value="党政机关">党政机关</option>
									<option value="部队">部队</option>
									<option value="其它">其它</option>
								</select>
							</c:when>
							<c:when test="${mtype == '国有企业' }">
								<select name="memberType" class="form-control">
									<option value="非公企业和社会组织">非公企业和社会组织</option>
									<option value="国有企业" selected="selected">国有企业</option>
									<option value="事业单位">事业单位</option>
									<option value="党政机关">党政机关</option>
									<option value="部队">部队</option>
									<option value="其它">其它</option>
								</select>
							</c:when>
							<c:when test="${mtype == '事业单位' }">
								<select name="memberType" class="form-control">
									<option value="非公企业和社会组织" >非公企业和社会组织</option>
									<option value="国有企业">国有企业</option>
									<option value="事业单位" selected="selected">事业单位</option>
									<option value="党政机关">党政机关</option>
									<option value="部队">部队</option>
									<option value="其它">其它</option>
								</select>
							</c:when>
							<c:when test="${mtype == '党政机关' }">
								<select name="memberType" class="form-control">
									<option value="非公企业和社会组织">非公企业和社会组织</option>
									<option value="国有企业">国有企业</option>
									<option value="事业单位">事业单位</option>
									<option value="党政机关" selected="selected">党政机关</option>
									<option value="部队">部队</option>
									<option value="其它">其它</option>
								</select>
							</c:when>
							<c:when test="${mtype == '部队' }">
								<select name="memberType" class="form-control">
									<option value="非公企业和社会组织">非公企业和社会组织</option>
									<option value="国有企业">国有企业</option>
									<option value="事业单位">事业单位</option>
									<option value="党政机关">党政机关</option>
									<option value="部队" selected="selected">部队</option>
									<option value="其它">其它</option>
								</select>
							</c:when>
							<c:otherwise>
								<select name="memberType" class="form-control">
									<option value="非公企业和社会组织">非公企业和社会组织</option>
									<option value="国有企业">国有企业</option>
									<option value="事业单位">事业单位</option>
									<option value="党政机关">党政机关</option>
									<option value="部队">部队</option>
									<option value="其它" selected="selected">其它</option>
								</select>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">单位地址：</label>
					<div class="col-md-10">
						<input name="memberAddr" type="text" class="form-control" value="${member.memberAddr }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">法人姓名：</label>
					<div class="col-md-10">
						<input name="memberPerson" type="text" class="form-control" value="${member.memberPerson }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">身份证号：</label>
					<div class="col-md-10">
						<input name="memberID" type="text" class="form-control" value="${member.memberID }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">联系人：</label>
					<div class="col-md-10">
						<input name="memberContact" type="text" class="form-control" value="${member.memberContact }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">联系电话：</label>
					<div class="col-md-10">
						<input name="memberPhone" type="text" class="form-control" value="${member.memberPhone }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">单位简介：</label>
					<div class="col-md-10">
						<textarea name="memberIntro" class="form-control" rows="3">${member.memberIntro }</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">单位网址：</label>
					<div class="col-md-10">
						<input name="memberURL" type="text" class="form-control" value="${member.memberURL }">
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
					<button type="submit" class="btn btn-success" name="insbtn">提交</button>
				</div>

			</form>
		</div>
	</body>

</html>