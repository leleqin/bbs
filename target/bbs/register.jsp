<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Internship Sign In & Sign Up Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/snow.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/loginStyle.css" rel="stylesheet" type="text/css" media="all" />
<!-- //web font -->
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function register() {
	    if ($("#pwdOne").val() === $("#pwdTwo").val()){
		var userName = $("#userName").val();
		var pwd = $("#pwdOne").val();
		$.ajax({
			type:'post',
			url:'/loginServlet?method=register',
			data:{userName:userName,pwd:pwd},
			success:function () {
                    location.href = "/login.jsp";
            },
            error:function () {
                alert("no");
            }
		})
		} else {
	        alert("两次密码不一致")
		}
    }
</script>
<body>
<div class="snow-container">
			  <div class="snow foreground"></div>
			  <div class="snow foreground layered"></div>
			  <div class="snow middleground"></div>
			  <div class="snow middleground layered"></div>
			  <div class="snow background"></div>
			  <div class="snow background layered"></div>
			</div>

<div class="top-buttons-agileinfo">
<a href="login.jsp">登录</a><a href="register.jsp" class="active">注册</a>
</div>
<div class="main-agileits">
<!--form-stars-here-->
		<div class="form-w3-agile">
			<h2 class="sub-agileits-w3layouts">注册</h2>
			<form method="post">
					<input type="text" id="userName" placeholder="输入用户名"/>
					<input type="password" id="pwdOne" placeholder="请输入密码"/>
					<input type="password" id="pwdTwo" placeholder="再次输入"/>
				<div class="submit-w3l">
					<input type="button" value="注册" onclick="register()">
				</div>
			</form>
		</div>
		</div>
<!--//form-ends-here-->
<!-- copyright -->
	<div class="copyright w3-agile">
		<p><a> © 2018</a></p>
	</div>
	<!-- //copyright --> 
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

</body>
</html>