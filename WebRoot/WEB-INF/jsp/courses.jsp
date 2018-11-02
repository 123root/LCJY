<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'students.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

	<script src="js/jquery-1.11.1-min.js"></script>
  </head>
  <body>
  <div class="box1">
		<img src="./img/17.jpg" style="width: 100%;height: 250px;">
	</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		
			<table class="table" id="table">
				<thead>
					<tr class="warning">
						<th>
							序号
						</th>
						<th>
						课程名
						</th>
						<th>
							教师
						</th>
						<th>
							上课地址
						</th>
						<th>
							上课时间
						</th>
					</tr>
				</thead>
				</table>
				<script type="text/javascript">
				$.get("cou/courses.do",function(courses){
					for(i=0;i<=courses.length;i++){ 
					var classname = courses[i]["classname"];
					var teacher = courses[i]["teacher"];
					var site = courses[i]["site"];
					var time = courses[i]["time"];
		
		 			var course_xianshi = `<tr class="info">
		 			<td >`+(i+1)+`</td>
		 			<td >`+classname+`</td>
		 			<td >`+teacher+`</td>
		 			<td >`+site+`</td>
		 			<td >`+time+`</td></tr>`;
		 			$("#table").append(course_xianshi);
		 			
											
		}
		})
		
		</script>
		</div>
		</div>
		</div>
  </body>
</html>
