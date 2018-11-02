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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.11.1-min.js"></script>
  </head>
  <body>
  
  	<div class="container">

  	<button class="btn btn-default btn-lg button_css" data-toggle="modal" data-target="#myModal" style="width:150px;">
			添加留言
		</button>
  	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					留言框
				</h4>
			</div>
			<div class="modal-body">
			<form role="form" action="mes/mess.do" method="POST">
				<div class="row">
					<input type="text" name="" id="username" class="form-control" placeholder="用户名" onblur="checkusername()" readonly="readonly">
				</div><br><br>
                    <div class="row">
                    	<input type="text" name="" id="content" class="form-control" placeholder="请输入留言内容"  onblur="checkcontent()">
                   
                    </div><br><br>
                    <div class="row">
                    	<input type="text" name="" id="time" class="form-control" placeholder="留言时间" onblur="checktime()" readonly="readonly">
                    </div>
			</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="addmessage()">
					添加
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
	<div class="row clearfix">
		<div class="col-md-12 column" id="table">
		<script type="text/javascript">
				
				$.get("mes/messageboards.do",function(messageboards){
					for(i=0;i<=messageboards.length;i++){ 
					var username = messageboards[i]["username"];
					var content = messageboards[i]["content"];
					var time = messageboards[i]["time"];
		
		 			var messageboards_xianshi = `<dl style="border:1px solid gray;height:150px;width:800px;margin-left:200px;border-radius:5px;">
		 			<dt style="text-align:center;">`+username+`</dt><hr><br>
		 			<dd>`+content+`</dd>
		 			<dt style="margin-left:700px;margin-top:30px;">`+time+`</dt>
		 			</dl>`;
		 			$("#table").append(messageboards_xianshi);
		 			
											
		}
		})
		function time(){
	        var time=new Date();
	        var h=time.getFullYear();
	        var m=time.getMonth()+1;
	        var d=time.getDate();
	        return h+"-"+m+"-"+d;
	    }
	    document.getElementById("time").value = time();
	   function addmessage(){
	   		
	   
	    	var username = document.getElementById("username").value;
	    	var content = document.getElementById("content").value;
	    	var time = document.getElementById("time").value;
	    	
	    	$.get("mes/mess.do",("username="+444+"&content="+content+"&time="+time));
	    	
			}
		</script>

		</div>
	</div>
</div>

	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
  </body>
</html>
