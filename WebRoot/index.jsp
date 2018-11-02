<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>龙诚教育</title>
	<link rel="stylesheet" type="text/css" href="./css/index.css">
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
</head>
<body onload="init()">
<div class="img">
		 <!-- <div id="myCarousel" class="carousel slide"> -->
	<!-- 轮播（Carousel）指标 -->
	<!-- <ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>    -->
	<!-- 轮播（Carousel）项目 -->
	<!-- <div class="carousel-inner">
		<div class="item active">
			<img src="../img/1.jpg" alt="First slide" class="img-1">
		</div>
		<div class="item">
			<img src="../img/4.jpg" alt="Second slide" class="img-2">
		</div>
		<div class="item">
			<img src="../img/3.jpg" alt="Third slide" class="img-3">
		</div>
	</div> -->
	<!-- 轮播（Carousel）导航 -->
	<!-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a> -->
	<img id="lunbotu" src="./img/1.jpg" class="img-1">
</div> 

</div>
    <div class="box3">
		<p style="text-align: center;color: #1E90FF;padding-top: 50px;font-size: 20px;">专业讲师团队</p><br>
		<p style="text-align: center;color: gray;">因为专业，所以优秀</p><br>
		<img src="./img/5.jpg" style="margin-left: 150px;width: 130px;height: 160px;">
		<img src="./img/6.jpg" style="margin-left: 100px; width: 130px;height: 160px;">
		<img src="./img/7.jpg" style="margin-left: 100px; width: 130px;height: 160px;">
		<img src="./img/8.jpg" style="margin-left: 100px; width: 130px;height: 160px;">
		<img src="./img/9.jpg" style="margin-left: 100px; width: 130px;height: 160px;">
		<img src="./img/10.jpg" style="margin-left: 100px; width: 130px;height: 160px;">

    </div>
    <div class="box4">
		<p style="text-align: center;color: #1E90FF;padding-top: 50px;font-size: 20px;">培训公告</p><br>
		<p style="text-align: center;color: gray;">了解培训动态</p><br>
		<div class="box5">
			<img src="./img/11.jpg"><br><br>
			<p style="text-align: center;line-height: 20px;">
			<a href="" style="text-decoration: none;">《培养阳光心态，提升窗口服务质量》</a><br><br>
			2017年11月18日，某老师为本站北京客户讲授《XXX》内训课程，取得圆满成功！讲师介绍特聘讲师，XX医学部临床...
			</p>
		</div>
		<div class="box5">
			<img src="./img/12.jpg"><br><br>
			<p style="text-align: center;line-height: 20px;">
			<a href="" style="text-decoration: none;">《电话预约及销售技巧》课程圆满结束</a><br><br>
			2017年11月18日，某老师为本站北京客户讲授《XXX》内训课程，取得圆满成功！讲师介绍特聘讲师，XX医学部临床...
			</p>
		</div>
		<div class="box5">
			<img src="./img/13.jpg"><br><br>
			<p style="text-align: center;line-height: 20px;">
			<a href="" style="text-decoration: none;">《360度有效沟通》课程圆满结束</a><br><br>
			2017年11月18日，某老师为本站北京客户讲授《XXX》内训课程，取得圆满成功！讲师介绍特聘讲师，XX医学部临床...
			</p>
		</div>

    </div>


	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</script>
<script type="text/javascript">
	function init(){
		setInterval("changeImg()",5000);
	}
	var i = 1;
	function changeImg() {
		i++;
		document.getElementById('lunbotu').src="./img/"+i+".jpg";
		if (i==3) {
			i=0;
		}
	}
</script>
</body>
</html>
 
