<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.headerWrap{
	width: 100%;
	max-width: 1140px;
	margin: 0 auto;
	padding: 15px 0;
	overflow: hidden;
}
.logoWrap{
	float: left;
}
.menuWrap{
	float: right;
}
.menuWrap > ul{

}
.menuWrap > ul > li{
	display: inline-block;
	margin-left: 20px;
}
.menuWrap > ul > li > a{
	color: rgba(255, 255, 255, 0.8);
	font-size: 1.4rem;
	font-family: sans-serif;
	font-weight: 700;
	line-height: 55px;
}
.menuWrap > ul > li > a:hover{
	text-decoration: none;
	color: #3398dc; /*마우스오버시 자연스럽게*/
	transition-duration: 300ms;
	transition-property: color, border-color, background-color;
	transition-timing-function: ease;
}
</style>
<script>
$(function(){
	
});
</script>
<div class="headerWrap">
	<div class="logoWrap">
		<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	</div>
	<div class="menuWrap">
		<ul>
			<li><a href="#section02">ABOUT</a></li>
			<li><a href="#section03">HISTORY</a></li>
			<li><a href="#section04">BRANDS</a></li>
			<li><a href="#section10">REVIEW</a></li>
			<li><a href="#section07">CONTACT</a></li>
			<li><a href="#section12">LIBRARY</a></li>
			<li><a href="">DEEP ROLLER</a></li>
		</ul>
	</div><!-- menuWrap end -->
</div><!-- headerWrap end -->
