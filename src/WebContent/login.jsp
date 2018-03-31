<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"/>  
</head>
<body>
	<div id="login_frame">

    <p id="image_logo"><img src="img/login-logo.jpg"></p>

    <form method="post" action="DoLogin">

        <p><label class="label_input">用户名</label><input type="text" id="username" name="userName" class="text_field"/></p>
        <p><label class="label_input">密码</label><input type="password" id="password" name="pwd" class="text_field"/></p>

        <div id="login_control">
        	<input type="checkbox" value="None" id="checkbox" name="isSave"/>记住密码
            <input type="submit" id="btn_login" value="登录"/>
        </div>
        <c:if test="${not empty message }">
						<div class="alert alert-danger" id="loginError">
							<strong>${message }</strong>
						</div>	
					</c:if>
    </form>
</div>
</body>
</html>