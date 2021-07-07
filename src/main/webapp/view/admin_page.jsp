<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 네일보기</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

@font-face {
	font-family: 'GongGothicMedium';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* { font-family: 'Jeju Myeongjo', serif; }
body { background-color: rgb(248, 236, 231); }
.res_notice {
	width: 1200px;
	height: 1200px;
	margin: 40px auto;
/* 	border: 2px solid #FFF; */
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
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 20px;
	font-weight: bold;
}
.tab-content  {
	display: none;
	height: 1000px;
	padding: 10px 10px;
	color: #000;
}
ul.tab li.current {
	background-color: rgb(250,250,250);
	color: #222;
}
.tab-content.current { display: block; }

table { width: 1150px; height: auto; margin: 50px auto; }
table, th, td { border-collapse: collapse; border: 1px solid #c8c8c8; height: 30px; }
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

	<div class="res_notice">

		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">회원 리스트</a></li>
			<li data-tab="tab2"><a href="#">예약일정 관리</a></li>
		</ul>


		<div id="tab1" class="tab-content current">
			<table>
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
					<tr> 
						<td>1</td><td>semizz96</td><td>허샘</td><td>010-2465-6592</td><td>toal2321@naver.com</td><td></td><td>2021-07-07</td>
					</tr>
				</tbody>
				<tr> 
					
				</tr>
			</table>
		</div>

		<div id="tab2" class="tab-content">
			
			<div id='calendar'></div>
			
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