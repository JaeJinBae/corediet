<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<style>
.allWrap{
	width: 100%;
}
.loginWrap{
	width: 400px;
	margin: 0 auto;
	margin-top:150px;
	box-shadow: 0px 0px 20px gray;
	padding: 40px;
}
.loginWrap > h2{
	width: 100%;
	text-align: center;
	font-size: 30px;
}
.loginWrap > ul{
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
}
.loginWrap > ul > li{
	list-style: none;
	width: 100%;
}
.loginWrap > ul > li > input{
	width: 100%;
	font-size: 18px;
	padding: 3px 5px;
	margin-top: 5px;
}
.btnWrap{
	width: 80%;
	margin: 0 auto;
	text-align: center;
	margin-top: 15px;
}
.btnWrap > p{
	display: inline-block;
	width: 49%;
	text-align: center;
	color: #fff;
	font-size: 17px;
	padding: 10px 0;
	cursor: pointer;
	background:#253dbe;
}
#backBtn{
	background: green;
}
#backBtn > a{
	color: #fff;
	
}
</style>
<script>
function enterkey() {
    if (window.event.keyCode == 13) {
    	var id = $("input[name='id']").val();
		var pw = $("input[name='pw']").val();
		var info = {id:id, pw:pw};
		var res = chkUser(info);
		if(res == "no"){
			alert("아이디 또는 비밀번호가 잘못되었습니다.");
		}
    }
}

$(function(){
	$("#loginBtn").click(function(){
		var id = $("input[name='id']").val();
		var pw = $("input[name='pw']").val();
		var info = {id:id, pw:pw};
		var res = chkUser(info);
		if(res == "no"){
			alert("아이디 또는 비밀번호가 잘못되었습니다.");
		}
	});
});
</script>
</head>
<body>
	<div class="allWrap">
		<div class="loginWrap">
			<h2>로그인</h2>
			<ul>
				<li><input type="text" name="id" placeholder="아이디"></li>
				<li><input type="password" name="pw" placeholder="비밀번호" onkeyup="enterkey();"></li>
			</ul>
			<div class="btnWrap">
				<p id="loginBtn">로그인</p>
				<p id="backBtn"><a href="${pageContext.request.contextPath}/">뒤로가기</a></p>
			</div>
		</div>
	</div>
</body>
</html>