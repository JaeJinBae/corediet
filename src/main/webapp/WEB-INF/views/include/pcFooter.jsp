<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.footer{
		width: 100%;
	}
	.textWrap{
		width: 520px;
		margin: 0 auto;
	}
	.textWrap > ul{
		width: 100%;
		text-align: center;
	}
	.textWrap > ul > li{
		display: inline-block;
		color: #e1e1e1;
		font-size: 14px;
		margin-right: 20px;
		padding-bottom: 2px;
	}
	.textWrap > ul > li:nth-child(2){
		padding-top: 10px;
	}
	.textWrap > ul > li:nth-child(4){
		padding-top: 2px;
	}
	.textWrap > ul > li > a{
		color: #e1e1e1;
	}
	.textWrap > ul > li > a:hover{
		text-decoration: none;
		color: #4374D9; /*마우스오버시 자연스럽게*/
		transition-duration: 300ms;
		transition-property: color, border-color, background-color;
		transition-timing-function: ease;
	}
	.textWrap > p{
		font-size: 14px;
		color: #e1e1e1;
		text-align: center;
		padding-top: 2px;
	}
</style>

<div class="footer">
	<div class="textWrap">
		<ul>
			<li>상호: 원마취통증의학과의원</li>
			<li>&nbsp;&nbsp;대표: 한윤진</li>
			<li>연락처: 053-269-7575</li>
			<li><a href="${pageContext.request.contextPath}/adminLogin">[관리자 모드]</a></li>
			<li>등록번호: 125-93-55621</li>
			<li>소재지: 대구광역시 북구 침산로 124, 4층(침산동, P&A빌딩)</li>
		</ul>
		<p>Copyrightⓒ원마취통증의학과. All Rights Reserved</p>
	</div>
</div>