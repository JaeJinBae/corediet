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
.formWrap{
	width: 800px;
	margin: 0 auto;
	margin-top: 80px;
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
	
});
</script>
</head>
<body>
	<div class="allWrap">
		<div class="formWrap">
			<form id="f1">
				<table>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer" value="관리자"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea id="editor1" name="content"></textarea>
							<script>
								CKEDITOR.replace('content',{filebrowserUploadUrl:"/admin/imgUpload",height:500});
							</script>
						</td>
					</tr>
					<tr>
						<th>첨부</th>
						<td><input type="file"></td>
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