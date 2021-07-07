<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	* { font-family: 'Jeju Myeongjo', serif; }
	body {
		background-color:	rgb(248,236,231);
		font-weight: bold;
		color: #5a5a5a;
	}
	.calendar {
		width: 1200px; height: 700px;
		margin: 0px auto;
		s
	}
	
</style>


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
<%@ include file="header.jsp" %>
	<div id='calendar'></div>
</body>
</html>