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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditorFull/ckeditor.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
.allWrap{
	width: 100%;
}
.header{
	width: 100%;
	position: fixed;
	top:0;
	background: rgba(0, 0, 0, 0.9);
	z-index: 99;
}
.flag{
	position: absolute;
    top: 34px;
    right: 20px;
}
.flag > a > img{
	width: 30px;
}
.contentWrap{
	width: 100%;
	margin-top: 150px;
}
.inner{
	width: 95%; 
	margin: 0 auto;
}
.inner > h2{
	font-size: 40px;
	margin-bottom: 20px;
}
.smallInfo{
	width: 100%;
	padding: 20px 0;
	border-bottom: 1px solid lightgray;
}
.smallInfo > span{
	font-size: 15px;
}
.content{
	width: 100%;
	padding: 40px 15px;
	font-size: 15px;
}
.uploadWrap{
	width: 100%;
	border: 1px solid lightgray;
}
.uploadWrap > p{
	text-align: right;
	background: #efefef;
	font-size: 30px;
	padding: 15px;
}
.uploadWrap > div{
	width: 100%;
	padding: 10px;
}
.uploadWrap > div > a{
	font-size: 18px;
	vertical-align: middle;
	line-height: 25px;
	color: #3398dc;
	font-weight: bold;
}
.uploadWrap > div > a > span{
	text-decoration: underline;
}
.uploadWrap > div > a > img{
	width: 25px;
	margin-right: 15px;
}

.btnWrap{
	width: 100%;
	text-align: right;
	margin-top: 20px;
}
.btnWrap > input{
	font-size: 15px;
	color: #fff;
	background: #253dbe;
	width: 70px;
	padding: 10px 0;
	border: 0;
	cursor: pointer;
}
.btnWrap > p{
	display: inline-block;
	font-size: 15px;
	background: gray;
	width: 70px;
	padding: 10px 0;
	border: 0;
	cursor: pointer;
	text-align: center;
}
.btnWrap > p > a{
	color: #fff;
	display: inline-block;
	width: 100%;
	height: 100%;
}
</style>
<script>

$(function(){
	$(".headerWrap > .menuWrap > ul > li > a").click(function(e){
		e.preventDefault();
		var target = $(this).attr("href");
		location.href="${pageContext.request.contextPath}/"+target;
	});
	
	var ndate = new Date();
	var ny = ndate.getFullYear();
	var nm = ndate.getMonth()+1;
	nm = nm>9?''+nm:'0'+nm;
	var nd = ndate.getDate();
	nd = nd>9?''+nd:'0'+nd;
	
	$("input[name='regdate']").val(ny+"-"+nm+"-"+nd);
	
	$(document).on("click", "#downBtn", function(e){
		e.preventDefault();
		var href = $(this).prop("href");
		var f_origin = $("input[name='upload_origin']").val();
		var fileName = encodeURIComponent(f_origin);
		var f_stored = $("input[name='upload_stored']").val();
		var downName =  encodeURIComponent(f_stored);
		
		href += "?fileName="+fileName+"&downName="+downName;
		location.href= href;
	});
});
</script>
</head>
<body>
	<div class="allWrap">
		<div class="header">
			<jsp:include page="../include/mHeader.jsp"></jsp:include>
			<div class="flag">
				<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/icon_kor.jpg"></a>
				<a href="${pageContext.request.contextPath}/eng"><img src="${pageContext.request.contextPath}/resources/images/icon_usa.jpg"></a>
			</div>
		</div>
		<div class="contentWrap">
			<div class="inner">
				<h2>${item.title}</h2>
				<div class="smallInfo">
					<span>작성자: <strong>${item.writer}</strong></span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					<span>조회: <strong>${item.cnt}</strong></span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					<span>등록일: <strong>${item.regdate}</strong></span>
				</div>
				<div class="content">
					${item.content}
				</div>
				<c:choose>
					<c:when test="${item.upload_origin == ''}">
					</c:when>
					<c:otherwise>
						<div class="uploadWrap">
							<p>첨부파일</p>
							<div>
								<a id="downBtn" href="${pageContext.request.contextPath}/filedown"><img src="${pageContext.request.contextPath}/resources/icon/download.png"><span>${item.upload_origin}</span></a>
								
								<input type="hidden" name="upload_origin" value="${item.upload_origin}">
								<input type="hidden" name="upload_stored" value="${item.upload_stored}">
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				
				<div class="btnWrap">
					<c:choose>
						<c:when test="${sessionScope.id == 'admin'}">
							<p style="background:green;"><a href="${pageContext.request.contextPath}/update${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">수정</a></p>
						</c:when>
					</c:choose>
					<p><a href="${pageContext.request.contextPath}/">목록</a></p>
				</div>
			</div><!-- inner -->
		</div><!-- contentWrap -->
	</div>
</body>
</html>