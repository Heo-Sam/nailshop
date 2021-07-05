<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 메인</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	* { font-family: 'Jeju Myeongjo', serif; }
	body {
		background-color:	rgb(248,236,231);
	}
	.main_block {
		width: 1200px; height: 800px;
		margin: 40px auto;
	/* 	border: 1px solid rgb(248,236,231); */
	 	border: 1px solid black;
	}
	.main_slider {
		width: 1200px; height: 300px;	
		border: 1px solid red;
	}
</style>
</head>
<body>
<%@ include file="header.jsp" %>

		<p style="text-align: center;">메인 전체 블록</p>
	<div class="main_block">
		<div class="main_slider">
			<p style="text-align: center; line-height: 300px;">메인 슬라이더 이미지자리</p>
		</div>
	</div>




</body>
</html>