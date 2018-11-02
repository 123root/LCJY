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
						标题
						</th>
						<th>
							下载地址
						</th>
					</tr>
				</thead>
				<script type="text/javascript">
				$.get("res/resources.do",function(resources){
					for(i=0;i<=resources.length;i++){ 
					var title = resources[i]["title"];
					var address = resources[i]["address"];
		
		 			var resources_xianshi = `<tr class="info">
		 			<td >`+(i+1)+`</td>
		 			<td >`+title+`</td>
		 			<td >`+address+`</td></tr>`;
		 			$("#table").append(resources_xianshi);
		 			
											
		}
		})
			
		</script>
	
  </body>
</html>
