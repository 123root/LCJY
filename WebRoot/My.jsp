<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<a href="jump.do?target=students">查看学生信息</a> <br>
  	<a href="jump.do?target=news">查看新闻信息</a>  <br>
  	<a href="jump.do?target=courses">查看课程信息</a>  <br>
  	<a href="jump.do?target=managers">查看管理员信息</a> <br>
  	<a href="jump.do?target=messageboards">查看管理员信息</a> <br>
  	<a href="jump.do?target=resources">查看下载信息</a> <br>
  	<a href="jump.do?target=teachers">查看教师信息</a> <br>
  	 <form action="mes/mess.do" method="POST">
	<input type="text" name="username">
	<input type="text" name="time">
	<input type="text" name="content">
	<input type="submit" value="添加留言">
	</form>
  </body>
</html>
