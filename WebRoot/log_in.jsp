<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <title>龙诚教育系统登录</title>
    <link rel="stylesheet" href="css/common_form.css">
</head>
<body>
    <header>
        <div class="header-line"></div>
    </header>
    <div class="content">
        
        <h1 class="content-title">龙诚教育系统登录</h1>
        <div class="content-form">
            <form method="post" action="index.jsp" onsubmit="return submitTest()">
                <div id="change_margin_1">
                    <input id="Logusername"class="user" type="text" name="Uname" placeholder="请输入用户名" onblur="oBlur_1()" onfocus="oFocus_1()">
                </div>
               
                <div id="change_margin_2">
                    <input class="password" type="password" name="Upassword" placeholder="请输入密码" onblur="oBlur_2()" onfocus="oFocus_2()">
                </div>
                
                <div id="change_margin_3">
                    <input class="content-form-signup" type="submit" value="登录">
                </div>
            </form>
        </div>
        <div class="content-login-description">没有账户？</div>
        <div><a class="content-login-link" href="zc.jsp">注册</a></div>
    </div>
<script src="common_form_test.js"></script>
</body>
</html>