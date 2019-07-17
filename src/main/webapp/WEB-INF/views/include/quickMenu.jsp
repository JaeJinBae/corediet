<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.quickMenu{
	position: fixed;
	top: 122px;
	/* bottom: 10px; */
	right: 0px;
	width: 200px;
	overflow: hidden;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}
.quickMenu > h4{
	float: left;
	font-size: 30px;
	width: 50px;
	height: 76px;
	background: gray;
	color: #fff;
	line-height: 75.5px;
	text-align: center;
	cursor: pointer;
	font-weight: bold;
}
.quickMenu > p{
	float:right;
	width: 150px;
	background: #5c9bb8;
	color: #fff;
	font-size: 20px;
	text-align: center;
	padding: 15px 0;
}
.quickMenu > ul{
	width: 150px;
	float: right;
	background: #fff;
	border-left: 1px solid #efefef;
}
.quickMenu > ul > li{
	width: 100%;
	border-bottom: 1px solid lightgray;
	padding: 10px 0px;
}
.quickMenu > ul > li > a{
	font-size: 17px;
}
.quickMenu > ul > li > a > img{
	width: 50px;
	margin-right: 8px;
	margin-left: 12px;
	vertical-align: middle;
}
.quickMenu > ul > li:first-child > p{
	width: 100%;
	text-align: center;
	font-size: 17px;
	padding: 7px 0;
}
.quickMenu > ul > li:first-child > h5{
	width: 100%;
	text-align: center;
	font-size: 20px;
}
.quickMenu > ul > li:last-child{
	text-align: center;
	font-weight: bold;
	cursor: pointer;
	font-size: 20px;
	color: #5c9bb8;
}

.quickMenuActive{
	position: fixed;
	/* top: 122px; */
	bottom: 10px;
	right: -150px;
	width: 200px;
	overflow: hidden;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}
</style>
<script>
$(function(){
	 $(".quickMenu > h4").click(function(){
	    	$(".quickMenu").toggleClass("quickMenuActive");
	    	var qmState = $(".quickMenu").prop("class");
	    	if(qmState == "quickMenu"){
	    		$(this).text("▶");
	    	}else{
	    		$(this).text("◀");
	    	}
	    });
	    $(".quickMenu > ul > li:last-child").click(function(){
	    	console.log($("html").offset());
	    	$("html").animate({scrollTop:$("html").offset().top}, 400);
	    });
});
</script>
<div class="quickMenu">
	<h4>▶</h4>
	<p>Quick<br>Menu</p>
	<ul>
		<li>
			<p><img src="${pageContext.request.contextPath}/resources/images/icon_call.png"></p>
			<p>전화문의</p>
			<h5>053.269.7575</h5>
		</li>
		<li><a href="${pageContext.request.contextPath}/menu01_08"><img src="${pageContext.request.contextPath}/resources/images/icon_chat.png">상담문의</a></li>
		<li><a href="${pageContext.request.contextPath}/menu01_04"><img src="${pageContext.request.contextPath}/resources/images/icon_location.png">오시는길</a></li>
		<li><a href="${pageContext.request.contextPath}/menu01_07"><img src="${pageContext.request.contextPath}/resources/images/icon_hand.png">비급여</a></li>
		<li><a href="${pageContext.request.contextPath}/menu01_05"><img src="${pageContext.request.contextPath}/resources/images/icon_speaker.png">공지사항</a></li>
		<li>▲<br>TOP</li>
	</ul>
</div>