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
.formWrap{
	width: 800px;
	margin: 0 auto;
	margin-top: 140px;
}
#f1{
	width: 100%;
}
#f1 > table{
	width: 100%;
}
#f1 > table th{
	width: 80px;
	font-size: 15px;
	border: 1px solid lightgray;
}
#f1 > table td{
	font-size: 15px;
	border: 1px solid lightgray;
}
#f1 > table td > input{
	width: 100%;
	height: 35px;
	font-size: 15px;
}
#downBtn > img{
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
			<jsp:include page="../include/header.jsp"></jsp:include>
			<div class="flag">
				<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/icon_kor.jpg"></a>
				<a href="${pageContext.request.contextPath}/eng"><img src="${pageContext.request.contextPath}/resources/images/icon_usa.jpg"></a>
			</div>
		</div>
		<div class="formWrap">
			<form id="f1" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/register">
				<input type="hidden" name="regdate">
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" value="${item.title}"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer" value="${item.writer}"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea id="editor1" name="content">${item.content}</textarea>
							<script>
								CKEDITOR.replace('content',{filebrowserUploadUrl:"/imgUpload",height:500});
							</script>
						</td>
					</tr>
					<tr>
						<th>첨부</th>
						<td>
							<input type="hidden" id="uploadState" name="uploadState" value="x">
							<c:choose>
								<c:when test="${item.upload_origin == ''}">
									<div><input type="file" name="upload"></div>
								</c:when>
								<c:otherwise>
									<div>
										<a id="downBtn" href="${pageContext.request.contextPath}/filedown"><img src="${pageContext.request.contextPath}/resources/icon/download.png">${item.upload_origin}</a>
										<img id="upload" src="${pageContext.request.contextPath}/resources/icon/icon_x.png" class="vimg cursor">
										<input type="hidden" name="upload_origin" value="${item.upload_origin}">
										<input type="hidden" name="upload_stored" value="${item.upload_stored}">
									</div>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
				<div class="btnWrap">
					<input type="submit" value="저장">
					<p><a href="${pageContext.request.contextPath}/">목록</a></p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>