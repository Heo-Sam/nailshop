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
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	* { font-family: 'Jeju Myeongjo', serif; }
	body { background-color:	rgb(248,236,231); }
	.res_notice {
		width: 1200px; height: 1200px;
		margin: 40px auto;
	 	border: 2px solid #FFF;
	}
	
	.container{
	  width: 1200px;
	  margin: 0 auto;
	}
	
	ul.tabs{
	  margin: 0px;
	  padding: 0px;
	  list-style: none;
	}
	ul.tabs li{
	  background: none;
	  color: #222;
	  display: inline-block;
	  padding: 10px 15px;
	  cursor: pointer;
	  width: 30%;
	}
	
	ul.tabs li.current{
	  background: #ededed;
	  color: #222;
	}
	
	.tab-content{
	  display: none;
	  background: #ededed;
	  padding: 15px;
	}
	
	.tab-content.current{
	  display: inherit;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
	  
	  $('ul.tabs li').click(function(){
	    var tab_id = $(this).attr('data-tab');

	    $('ul.tabs li').removeClass('current');
	    $('.tab-content').removeClass('current');

	    $(this).addClass('current');
	    $("#"+tab_id).addClass('current');
	  })

	})
</script>
</head>
<body>
<%@ include file="header.jsp" %>

	<div class="res_notice">
		<div class="container">
		  <ul class="tabs">
		    <li class="tab-link current" data-tab="tab-1">tab1</li>
		    <li class="tab-link" data-tab="tab-2">tab2</li>
		    <li class="tab-link" data-tab="tab-3">tab3</li>
		  </ul>
		
		  <div id="tab-1" class="tab-content current">tab content1</div>
		  <div id="tab-2" class="tab-content">tab content2</div>
		  <div id="tab-3" class="tab-content">tab content3</div>

		</div>
	</div>

</body>
</html>