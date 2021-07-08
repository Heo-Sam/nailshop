<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>@관리자페이지</title>
<style type="text/css">
/* @import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css); */
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}	
* {font-family: 'Jeju Myeongjo', serif;}
body { background-color: rgb(248, 236, 231); }
.admin_page {
/* 	font-family: 'S-CoreDream-4Regular'; */
	width: 1200px;
/* 	height: 1000px; */
	margin: 40px auto;
	text-align: center;
}
.tab {
	margin: 0;
	padding: 0;
	overflow: hidden;
}
.tab li {
	
	float: left;
	width: 50%;
}
.tab li a {
	font-family: 'S-CoreDream-4Regular';
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	font-weight: bold;
}
.tab-content  {
	font-family: 'S-CoreDream-4Regular';
	display: none;
/* 	height: 1000px; */
	padding: 10px 10px;
	color: #000;
}
ul.tab li.current {
	background-color: rgb(250,250,250);
	color: #222;
}
.tab-content.current { display: block; }
#calendar { font-family: 'S-CoreDream-4Regular' !important; }
.member-list { width: 1100px; margin: 0px auto; }
.member-list, .member-list>thead>tr>th, .member-list>tbody>tr>td { font-family: 'S-CoreDream-4Regular'; border-collapse: collapse; border: 1px solid #c8c8c8; height: 30px; }
.member-list>tbody>tr>td { font-size: 14px;}
th {background-color: #828282; color: #FFF; font-weight: normal; font-size: 15px;}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<!-- fullcalender -->
<link href='../css/main.css' rel='stylesheet' />
<script src='../js/main.js'></script>
<script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="admin_page">

		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">예약일정 관리</a></li>
			<li data-tab="tab2"><a href="#">회원 리스트</a></li>
		</ul>

		<div id="tab1" class="tab-content current"> 
			<div id='calendar'></div>
	 	</div> 

		<div id="tab2" class="tab-content">
			<table class="member-list">
				<thead>
					<tr>
						<th style="width: 7%">회원번호</th>
						<th style="width: 13%">회원ID</th>
						<th style="width: 10%">회원이름</th>
						<th style="width: 20%">회원연락처</th>
						<th style="width: 20%">회원E-mail</th>
						<th style="width: 15%">멤버십(남은금액)</th>
						<th style="width: 15%">가입일자</th>
					</tr>
				</thead>
				<tbody>
					<tr> <td>0</td><td>admin</td><td>관리자</td><td>010-0000-0000</td><td>aaa@naver.com</td><td></td><td>2021-06-07</td> </tr>
					<tr> <td>1</td><td>semizz96</td><td>허샘</td><td>010-2465-9592</td><td>semizz96@gmail.com</td><td></td><td>2021-06-08</td> </tr>
					<tr> <td>2</td><td>joohy0602</td><td>주말숙</td><td>010-5001-6582</td><td>joohy0602@naver.com</td><td>257,000</td><td>2021-06-08</td> </tr>
					<tr> <td>3</td><td>ljw9610</td><td>이종원</td><td>010-6855-7789</td><td>ljw1011@naver.com</td><td></td><td>2021-06-10</td> </tr>
					<tr> <td>4</td><td>choi0808</td><td>최지연</td><td>010-4544-3325</td><td>choijiyeon08@daum.com</td><td></td><td>2021-06-10</td> </tr>
					<tr> <td>5</td><td>toal2321</td><td>허새미</td><td>010-2458-9592</td><td>toal2321@naver.com</td><td>149,000</td><td>2021-06-21</td> </tr>
					<tr> <td>6</td><td>yoonnnji</td><td>윤지선</td><td>010-6562-7845</td><td>yoon99@naver.com</td><td></td><td>2021-07-08</td> </tr>
				</tbody>
				<tr> 
					
				</tr>
			</table>
		</div>

	</div> <!-- res_notice end -->

	<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tab-content').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			});
		});
	</script>

</body>
</html>