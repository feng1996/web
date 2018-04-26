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
		<!-- <p><label class="label_input">验证码</label><input type="text" id="confirm" class="confirm text_field" /></p>   -->                   
        <div id="login_control">
            <input type="submit" id="btn_login" value="登录" onclick="codeTest()"/>
            <!-- <div class="code" id="checkCode" onclick="createCode()">
					</div>
					<a id="change" href="#" onclick="createCode()">看不清楚</a>
					<div id="tips">a</div> -->
        </div>     
              
        <c:if test="${not empty message }">
						<div class="alert alert-danger" id="loginError">
							<strong>${message }</strong>
						</div>	
					</c:if>
    </form>
</div>
<!-- <script type="text/javascript">
	window.onload=function(){
		createCode();
	
		
		
		

	}
	function createCode() {
		var code;
	    code = "";
	    var codeLength = 6; //验证码的长度
	    var checkCode = document.getElementById("checkCode");
	    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
	    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
	    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
	    for (var i = 0; i < codeLength; i++) {
	        var charNum = Math.floor(Math.random() * 52);
	        code += codeChars[charNum];
	    }
	    if (checkCode) {
	        checkCode.className = "code";
	        checkCode.innerHTML = code;
	    }
	}
	
	function codeTest(){
		var inputCode = document.getElementById("confirm").value;
		var tips = document.getElementById("tips").innerText;
		if (inputCode.length <= 0) {
	        tips = "请输入验证码！";
	    }
	    else if (inputCode.toUpperCase() != code.toUpperCase()) {
	        tips = "验证码输入有误！";
	        createCode();
	    }
		}

</script> -->
</body>
</html>