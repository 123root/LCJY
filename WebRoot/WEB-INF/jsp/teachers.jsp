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
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/teacher.css">
	<script src="./js/jquery-1.11.1-min.js"></script>
  </head>
  <body>
<div class="box1">
		<img src="./img/17.jpg" style="width: 100%;height: 250px;">
	</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		
			<table class="table" id="table" style="table-layout:fixed;">
				<thead>
					<tr class="warning">
						<th>
							序号
						</th>
						<th>
						（主讲教师）
						</th>
						<th>
							年龄
						</th>
						<th>
							电话
						</th>
						<th>
							教学经历
						</th>
						<th>
							师龄
						</th>
					</tr>
				</thead>
				<script type="text/javascript">
				$.get("tea/teachers.do",function(teachers){
					for(i=0;i<=teachers.length;i++){ 
					var name = teachers[i]["name"];
					var age = teachers[i]["age"];
					var phone = teachers[i]["phone"];
					var experience = teachers[i]["experience"];
					var workingage = teachers[i]["workingage"];
		
		 			var teacher_xianshi = `<tr class="info">
		 			<td>`+(i+1)+`</td>
		 			<td>`+name+`</td>
		 			<td>`+age+`</td>
		 			<td>`+phone+`</td>
		 			<td style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;width:300px;" >`+experience+`</td>
		 			<td>`+workingage+`</td>
		 			</tr>`;
		 			$("#table").append(teacher_xianshi);
		 			
											
		}
		})
			
		</script>
	
  </body>
</html>
