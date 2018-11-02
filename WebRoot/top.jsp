<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>上</title>
	<link rel="stylesheet" type="text/css" href="./css/index.css">
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
</head>
<body>
	<div class="box1">
		<img src="img/logo.png" class="logo">
		<p class="ziti">&nbsp;龙&nbsp;诚&nbsp;教&nbsp;育</p>
		<b style="width: 210px;float: left;margin-left: 300px;margin-top: 50px;color: gray;">联系我们：<p style="color: #1E90FF;margin-left: 90px;margin-top: -21px;">138-12345678</p></b>
		<button class="btn btn-default btn-lg button_css" data-toggle="modal1" data-target="#myModal1">
			注销
		</button>
		<a href="log_in.jsp" target="botton"><button class="btn btn-default btn-lg button_css" data-toggle="modal" data-target="#myModal">
			登录
		</button></a>
	</div>
	<div class="box2">
		<ul>
			<li><a href="index.jsp" target="botton">新闻资讯</a></li>
			<li><a href="longcheng.jsp" target="botton">中心简介</a></li>
			<li><a href="jump.do?target=teachers" target="botton">师资力量</a></li>
			<li><a href="jump.do?target=news" target="botton">培训动态</a></li>
			<li><a href="">培训展示</a></li>
			<li><a href="jump.do?target=courses" target="botton">培训课程</a></li>
			<li><a href="jump.do?target=messageboards" target="botton">学员心声</a></li>
			<li><a href="jump.do?target=resources" target="botton">教学资源</a></li>
		</ul>
	</div>
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/top.js"></script>
</body>
</html>