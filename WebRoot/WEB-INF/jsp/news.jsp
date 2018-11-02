<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>培训动态</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.11.1-min.js"></script>
  </head>
  <body>
  
  	<div >
	<div class="row clearfix">
		<div class="col-md-12 column" id="table">
		<script type="text/javascript">
				$.get("news/news.do",function(news){
					for(i=0;i<=news.length;i++){ 
					var title = news[i]["title"];
					var content = news[i]["content"];
					var time = news[i]["time"];
		
		 			var news_xianshi = `<dl style="border:1px solid gray;height:300px;width:800px;margin-left:350px;border-radius:5px; margin-top:10px;" >
		 			<dt style="text-align:center;">`+title+`</dt><hr><br>
		 			<dd>`+content+`</dd>
		 			<dt style="margin-left:700px;margin-top:50px;">`+time+`</dt>
		 			</dl>`;
		 			$("#table").append(news_xianshi);
		 			
											
		}
		})
		</script>
		</div>
	</div>
</div>

  </body>
</html>
