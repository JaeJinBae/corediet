<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.headerWrap{
	width: 100%;
}
.headerContainer{
	position: relative;
}
.logo{
	padding: 12px;
}
.logo > img{
	padding: 13px 0px;
}
#line-wrapper {
  cursor: pointer;
  width: 56px;
  height: 35px;
  position: absolute;
  top: 22px;
  right: -5px;
}

/* 추가된 부분 */
.init {
  animation:none !important;
}

.line {
  background:#eaeaea;
  margin-top:6px;
  margin-bottom:6px;
  width:33px;
  height:4px; 
  border-radius:2px;
  box-shadow:0 1px 3px rgba(0,0,0,.5);
  position:relative;
}

.line-top {
  animation:line-top .5s forwards ease-out, line-top-rotate .3s .5s forwards ease-out;
}

/* 추가된 부분 */
.top-reverse {
  animation:line-top-rotate-reverse .3s forwards ease-out, line-top-reverse .5s .3s forwards ease-out;
}

.line-mid {
  animation:line-mid .5s forwards ease-out;
}

/* 추가된 부분 */
.mid-reverse {
  animation:line-mid-invisible .3s forwards ease-out, line-mid-reverse .5s .3s forwards ease-out;
}

.line-bot {
  animation:line-bot .5s forwards ease-out, line-bot-rotate .3s .5s forwards ease-out;
}

/* 추가된 부분 */
.bot-reverse {
  animation:line-bot-rotate-reverse .3s forwards ease-out, line-bot-reverse .5s .3s forwards ease-out;
}

@keyframes line-top {
  0% {transform:translateY(0px)}
  100% {transform:translateY(13px)}
}

/* 추가된 부분 */
@keyframes line-top-reverse {
  0% {transform:translateY(13px)}
  100% {transform:translateY(0px)}
}

@keyframes line-top-rotate {
  0% {transform:translateY(13px) rotateZ(0deg)}
  100% {transform:translateY(12px) rotateZ(45deg)}
}

/* 추가된 부분 */
@keyframes line-top-rotate-reverse {
  0% {transform:translateY(13px) rotateZ(45deg)}
  100% {transform:translateY(13px) rotateZ(0deg)}
}

@keyframes line-mid {
  0% {transform:scale(1)}
  100% {transform:scale(0)}
}

/* 추가된 부분 */
@keyframes line-mid-reverse {
  0% {transform:scale(0)}
  100% {transform:scale(1)}
}

@keyframes line-mid-invisible {
  0% {transform:scale(0)}
  100% {transform:scale(0)}
}

@keyframes line-bot {
  0% {transform:translateY(0px)}
  100% {transform:translateY(-8px)}
}

/* 추가된 부분 */
@keyframes line-bot-reverse {
  0% {transform:translateY(-8px)}
  100% {transform:translateY(0px)}
}

@keyframes line-bot-rotate {
  0% {transform:translateY(-8px) rotateZ(0deg)}
  100% {transform:translateY(-8px) rotateZ(135deg)}
}

/* 추가된 부분 */
@keyframes line-bot-rotate-reverse {
  0% {transform:translateY(-8px) rotateZ(135deg)}
  100% {transform:translateY(-8px) rotateZ(0deg)}
}
/* 메뉴 토글 버튼 끝 */

.menu_nav_wrap{
	width: 100%;
	display: none;
}
.menu_nav_ul{
	width: 100%;
	padding: 15px 0;
}
.menu_nav_ul > li{
	
}
.menu_nav_ul > li > a{
	font-size: 20px;
	font-weight: bold;
	font-family: sans-serif;
	color: #eaeaea;
	padding: 0 25px;
	line-height: 45px;
}
.menu_active{
	display: block;
}
.menu_nonActive{
	display: none;
}
</style>
<script>
$(function(){
	$(window).scroll(function(){ 
		var scroll = $(window).scrollTop(); 
		if(scroll>1){ 
			$(".header").css("background", "rgba(255, 255, 255, 0.9)");
			$(".headerWrap > .headerContainer > a > img").prop("src", "${pageContext.request.contextPath}/resources/images/logo2.png");
			$(".menu_nav_ul > li > a").css("color", "rgba(0, 0, 0, 0.8)")
			$(".topBtn").fadeIn();
		}
		else{ 
			$(".header").css("background","rgba(0, 0, 0, 0.9)");
			$(".headerWrap > .headerContainer > a > img").prop("src", "${pageContext.request.contextPath}/resources/images/logo.png");
			$(".menu_nav_ul > li > a").css("color", "rgba(255, 255, 255, 0.8)")
			$(".topBtn").fadeOut();
		}
	});
	
	$('#line-wrapper').click(function(){
		/* 추가된 부분 */
		$('.line').removeClass('init');
		$('#line-top').toggleClass('line-top').toggleClass('top-reverse');
		$('#line-mid').toggleClass('line-mid').toggleClass('mid-reverse');
		$('#line-bot').toggleClass('line-bot').toggleClass('bot-reverse');
		$(".menu_nav_wrap").slideToggle("fast");
	});
	
	$(".menu_nav_wrap > .menu_nav_ul > li > a:not(#openPopupBtn)").click(function(e){
		e.preventDefault();
		var target = $(this).attr("href");
		$("html,body").animate({scrollTop:$(target).offset().top}, 500);
		$(".menu_nav_wrap").slideUp("fast");
		$('.line').removeClass('init');
		$('#line-top').toggleClass('line-top').toggleClass('top-reverse');
		$('#line-mid').toggleClass('line-mid').toggleClass('mid-reverse');
		$('#line-bot').toggleClass('line-bot').toggleClass('bot-reverse');
	});
});
</script>
<div class="headerWrap">
	<div class="headerContainer">
		<!-- Logo -->
		<a href="${pageContext.request.contextPath}/m" class="logo">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="CoreDiet">
		</a><!-- End Logo -->
		
		<!-- Responsive Toggle Button -->
		<div id="line-wrapper">
			<!-- 추가된 부분 -->
			<div id="line-top" class="line init top-reverse"></div>
			<div id="line-mid" class="line init mid-reverse"></div>
			<div id="line-bot" class="line init bot-reverse"></div>
		</div><!-- End Responsive Toggle Button -->
		
		<!-- Navigation -->
		<div class="menu_nav_wrap" id="">
			<ul id="" class="menu_nav_ul">
				<li class=""><a href="#section02" class="">ABOUT</a></li>
				<li class=""><a href="#section03" class="">HISTORY</a></li>
				<li class=""><a href="#section04" class="">BRANDS</a></li>
				<li class=""><a href="#section10" class="">REVIEW</a></li>
				<li class=""><a href="#section07" class="">CONTACT</a></li>
				<li class=""><a href="#section12" class="">LIBRARY</a></li>
				<li class=""><a id="openPopupBtn" href="#none" class="">DEEP ROLLER</a></li>
			</ul>
		</div><!-- End Navigation -->
	</div>
</div>