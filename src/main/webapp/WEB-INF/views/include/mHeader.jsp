<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.header{
		width:100%;
		position: relative;
		background: #fff;
	}
	.logoWrap{
		width: 100%;
		text-align: center;
		padding: 10px 0;
		border-bottom: 1px solid lightgray;
	}
	.logoWrap > a > img{
		width: 200px;
	}
	.mainMenuWrap{
		width: 100%;
		height:39px;
		/* overflow: hidden; */
	}
	.mainMenu{
		width: 25%;
		float: left;
	}
	.mainMenu > li{
		width: 100%;
		text-align: center;
		background: #fff;
	}
	.mainMenu > li > p{
		font-size: 14px;
		padding: 10px 0 11px 0;
		border-right: 1px solid lightgray;
		border-bottom: 1px solid lightgray;
	}
	.mainMenu:nth-child(3) > li > p{
		letter-spacing: -2px;
	}
	.mainMenu:last-child > li > p{
		border-right: 0;
	}
	.subMenu{
		display: none;
		border: 1px solid lightgray;
		background: #fff;
	}
	.mainMenu:nth-child(2) > li >.subMenu{
		width: 115px;
	}
	.subMenu > li{
		padding: 9px 0;
		text-align: center;
	}
	.subMenu > li > a{
		font-size: 14px;
	}
	
</style>
<script>
$(function(){
	$(".mainMenu").click(function(){
		$(".mainMenu > li > p").css({"background":"#fff", "color":"#333333"});
		$(".subMenu").css("display","none");
		$(this).find(".subMenu").css("display","block");
		$(this).find("p").css({"background":"#00557c", "color":"#fff"});
	});
	$(".sectionWrap").click(function(){
		$(".mainMenu > li > p").css({"background":"#fff", "color":"#333333"});
		$(".subMenu").css("display","none");
	});
	
});
</script>
<div class="header">
	<div class="logoWrap">
		<a href="${pageContext.request.contextPath}/">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png">
		</a>
	</div>
	<div class="mainMenuWrap">
		<ul class="mainMenu">
			<li>
				<p>병원소개</p>
				<ul class="subMenu">
					<li><a href="${pageContext.request.contextPath}/mMenu01_01">의료진 소개</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_02">직원소개</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_03">병원둘러보기</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_04">오시는 길</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_05">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_06">언론보도</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_07">비용공지</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu01_08">상담문의</a></li>
				</ul>
			</li>
		</ul>
		<ul class="mainMenu">
			<li>
				<p>비수술클리닉</p>
				<ul class="subMenu">
					<li><a href="${pageContext.request.contextPath}/mMenu02_01">초음파주사</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu02_02">C-ARM주사</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu02_03">Prolo주사</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu02_04">M-Puncture주사</a></li>
				</ul>
			</li>
		</ul>
		<ul class="mainMenu">
			<li>
				<p>재활/교정클리닉</p>
				<ul class="subMenu">
					<li><a href="${pageContext.request.contextPath}/mMenu03_01">재활도수치료</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu03_02">충격파치료</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu03_03">측만증</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu03_04">스포츠재활</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu03_05">수술후재활</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu03_06">산전/후재활</a></li>
				</ul>
			</li>
		</ul>
		<ul class="mainMenu">
			<li>
				<p>스페셜클리닉</p>
				<ul class="subMenu">
					<li><a href="${pageContext.request.contextPath}/mMenu04_01">영양치료</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu04_02">성장</a></li>
					<li><a href="${pageContext.request.contextPath}/mMenu04_03">다이어트</a></li>
				</ul>
			</li>
		</ul>
	</div><!-- mainMenuWrap end -->
</div>