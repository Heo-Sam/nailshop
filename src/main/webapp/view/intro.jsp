<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 소개</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	* { font-family: 'Jeju Myeongjo', serif; }
	body {
		background-color:	rgb(248,236,231);
		font-weight: bold;
		color: #5a5a5a;
	}
	.intro {
		width: 1200px; height: 700px;
		margin: 0px auto;
		border: 1px solid rgb(248,236,231);
	}
	#shop_pic {
		float: left;
		margin-right: 30px;
		margin-top: 80px;
	}
	#intro_hr {
		width: 520px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
	}
	#intro_hr2 {
		width: 1200px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
	}
	#info_address, #info_reserve, #info_reserve {
		float: left;
		margin-right: 30px;
	}
	#info_address>p, #info_reserve>p, #info_reserve>p {
		font-size: 11pt;
	}
	.title {
		text-align: center;
		font-size: 2em;
	}
	#howtocome {
		float: left;
		width: 500px;
		margin-top: 110px;
		font-size: 14px;
	}
	.icon {
		float: left;
	}
	#map {
		float: right;
		margin-top: 60px;
	}
	p {
		padding: 10px;
	}
</style>
</head>
<body>
<%@ include file="header.jsp" %>

	<div class="intro">
		<p class="title"> 가꿈을 소개합니다 </p>
		<div id="shop_pic">
			<img alt="가게이미지" src="../main_images/logo.jpg" style="width: 650px; height: 430px;">
		</div>
		
		<div class="shop_text">
			<p style="margin-top: 200px;">
				안양 댕리단길 부근에 위치한 손, 발, 속눈썹 전문뷰티샵 가꿈입니다:) <br><br>
				&nbsp; * 2인 동시시술 가능합니다. <br><br>
				&nbsp; * 꼼꼼한 시술 약속드려요. 
			</p>
			<hr id="intro_hr">
			
			<!-- <div id="info_address">
				<h3>주소</h3>
				<p>경기도 안양시 만안구<br>
					 박달로 580</p>
			</div> -->
			<div id="info_reserve">
				<h3>문의</h3>
				<p>phone. 010.3300.5114<br>
				   kakao. gaggum5114</p>
			</div>
			<div id="info_reserve">
				<h3>영업시간</h3>
				<p>평일 11:00~22:00<br>
				   토요일.공휴일 11:00~18:00<br>
				   <span style="color: tomato;">일요일</span> 휴무
				</p>
			</div>
		</div>
	</div>
	<hr id="intro_hr2">
	<div class="intro">
		<p class="title"> 오시는 길 </p>
		
			<div id="howtocome">
				<p>
					<img class="icon" alt="위치" src="../icon_images/location_50.png"><br>
					&nbsp;&nbsp; 경기 안양시 만안구 박달로 580 1층
				</p> 
				<hr style="height: 1px; border: 0px; background-color:	rgb(248,236,231);">
				<p>
					<img class="icon" alt="지하철" src="../icon_images/metro_50.png"> <br>
					&nbsp;&nbsp;지하철 1호선 | 안양역 1번 출구 안양여고 사거리 방면 도보 약 10분
				</p> 
				<hr style="height: 1px; border: 0px; background-color:	rgb(248,236,231);">     
				<p>
					<img class="icon" alt="버스" src="../icon_images/bus_50.png">
					&nbsp;&nbsp;&nbsp;2, 3, 6, 8, 11, 12, 31-7, 32, 35, 81, 83, 88, 350 번 버스 승차<br>
					&nbsp;&nbsp;&nbsp;안양여고.안양성결교회 정류장 하차<br>
					&nbsp;&nbsp;
					박달동 방면 하차 시 횡단보도 횡단 후 안양여고 사거리 방면 도보 약 2분<br>
					&nbsp;&nbsp;
					안양여고 사거리 방면 하차 시 사거리 방면으로 도보 약 2분<br>
				</p> 
			</div>
		
			<div id="map">
				<!-- * 카카오맵 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div id="daumRoughmapContainer1624895515999" class="root_daum_roughmap root_daum_roughmap_landing"></div>
				
				<!--
					2. 설치 스크립트
					* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
				-->
				<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
				
				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1624895515999",
						"key" : "26eqj",
						"mapWidth" : "640",
						"mapHeight" : "360"
					}).render();
				</script>
			</div>
		
	</div>

</body>
</html>