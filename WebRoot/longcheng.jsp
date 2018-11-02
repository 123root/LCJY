<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<title>中心简介</title>
	<link rel="stylesheet" type="text/css" href="./css/longcheng.css">
</head>
<body>
	<div class="box1">
		<p style="text-align: center;font-size: 20px;font-family: DFKai-SB;">龙诚教育是中国的职业教育机构，成立于2018年10月，致力于提高学员职场竞争力。</p><br><p style="text-align: center;font-size: 20px;font-family: DFKai-SB;">龙诚教育的培训课程和服务范围，从职业资格认证、技能培训，到与职业相关的就业服务，业务覆盖全国多个城市，服务全国学员。</p><br><p style="text-align: center;font-size: 20px;font-family: DFKai-SB;">龙诚教育标准化的课程体系，是龙诚教育职业培训的模板。</p>
	</div>
	<div class="box2">
		<p style="text-align: center;color: #1E90FF;padding-top: 50px;font-size: 20px;">人气讲师</p>
		<div class="box3">
		<img src="./img/14.jpg">
		<p style="text-align: center;line-height: 10px;">
			<p style="text-align: center;">刘讲师</p>
			擅长领域：企业经营战略、品牌管理与策划........
			</p>
		</div>
		<div class="box3">
		<img src="./img/15.jpg">
			<p style="text-align: center;">曹讲师</p>
			擅长领域：企业经营战略、品牌管理与策划........
			</p>
		</div>
		<div class="box3">
		<img src="./img/16.jpg">
		<p style="text-align: center;">袁讲师</p>
			擅长领域：企业经营战略、品牌管理与策划........
			</p>
		</div>
	</div>
</body>
</html>