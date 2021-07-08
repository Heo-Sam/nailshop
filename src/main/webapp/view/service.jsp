<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 네일보기</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

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
	width: 33.3333333%;
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
.tab-content {
	display: none;
	height: 1000px;
	background-color: #FFF;
	padding: 10px 12px;
	color: #000;
}
ul.tab li.current {
	background-color: #FFF;
	color: #222;
}
.tab-content.current { display: block; }
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="res_notice">

		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">손</a></li>
			<li data-tab="tab2"><a href="#">발</a></li>
			<li data-tab="tab3"><a href="#">속눈썹</a></li>
		</ul>


		<div id="tab1" class="tab-content current">
			<table>
				<!-- 추후 taglib사용, db에서 사진 가져오기 -->
				<tr> 
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_1.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_2.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_3.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_4.jpg"></a></td>
				</tr>
				<tr> 
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_5.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_6.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_7.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/nail_290_8.jpg"></a></td>
				</tr>
			</table>
		</div>

		<div id="tab2" class="tab-content">
			<table>
				<!-- 추후 taglib사용, db에서 사진 가져오기 -->
				<tr> 
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_1.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_2.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_3.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_4.jpg"></a></td>
				</tr>
				<tr> 
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_5.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_6.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_7.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/pedi_290_8.jpg"></a></td>
				</tr>
			</table>
		</div>

		<div id="tab3" class="tab-content">
			<table>
				<!-- 추후 taglib사용, db에서 사진 가져오기 -->
				<!-- 아직 속눈썹 시술사진 미적용 -->
				<tr> 
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_1.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_2.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_3.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_4.jpg"></a></td>
				</tr>
				<tr> 
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_5.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_6.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_7.jpg"></a></td>
					<td class="img-tag"><a><img alt="" src="../service_images/eyelashes_290_8.jpg"></a></td>
				</tr>
			</table>
		</div>
		<!-- 추후 페이징 추가 -->
		<div class="paging">
			<div id="page">
				이전으로&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;1 &nbsp;2 &nbsp;3 &nbsp;... &nbsp;&nbsp;&nbsp;&nbsp;다음으로
			</div>
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