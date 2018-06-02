<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/6/1
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    function login() {
        var userName = $("#userName").val();
        var pwd = $("#pwd").val();
        $.ajax({
            type:'post',
            url:'/loginServlet?method=loginUser',
            data:{userName:userName,pwd:pwd},
            success:function (msg) {
                if (msg=='ok'){
                    location.href = "/index.jsp";
                }else {
                    alert("失败");
                }
            }
        })
    }
</script>
<body>
<form>
    <input type="text" id="userName">
    <input type="password" id="pwd">
    <input type="button" value="登录" onclick="login()">
</form>
</body>
</html>
