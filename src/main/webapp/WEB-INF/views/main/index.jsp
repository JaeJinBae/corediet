<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core Diet</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0150774a1cc2645b7f79f50845ad5e82"></script>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
.allWrap{
	width:100%;	
}
.header{
	width: 100%;
	position: fixed;
	top:0;
	background: rgba(0, 0, 0, 0.9);
	z-index: 999;
}
.sectionWrap{
	width: 100%;
	margin-top: 90px;
}
.section01{
	width: 100%;
	background: url("${pageContext.request.contextPath}/resources/images/section01_bg.png") no-repeat;
	background-size: cover;
	background-position: center;
	position: relative;
	padding-top: 150px;
	padding-bottom: 110px;
}
.container{
	width: 100%;
	max-width: 1140px;
	padding: 0 15px;
	margin: 0 auto;
}
.s01_container{
	width: 100%;
	max-width: 1140px;
	padding: 0 15px;
	margin: 0 auto;
	height: 380px;
}
.s01_container > p{
	color: #fff;
	font-size: 48px;
	font-weight: bold;
	position: relative;
	line-height: 1.4;
	margin-top: 38px;
	padding-top: 4.28571rem; 
	text-align: center;
	font-family: NanumSB;
}
.s01_container > p:after{
	ontent: "";
    position: absolute;
    width: 240px;
    height: 1px;
    background: #fff;
    top: 15px;
    left: 50%;
    margin-left: -120px;
}
.section02{
	background: #f7f7f7;
	color: #555;
	padding-bottom: 170px;
	padding-top: 100px;
}
.s02_container1{
	margin-bottom: 70px;
}
.s02_container1 > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	color: #151826;
	text-align: center;
	font-family: sans-serif;
}
.s02_container1 > p{
	text-align: center;
	margin-bottom: 14px;
	font-family: sans-serif;
	font-size: 16px;
	color: #555555;
}
.s02_container2{

}
.s02_container2 > h2{
	text-align: center;
	font-size: 40px;
	color: #3398dc;
	margin-bottom: 30px;
	line-height: 1.4;
	font-family: sans-serif; 
}
.s02_container2 > p.s02_p1{
	margin-bottom: 50px;
	text-align: center; 
	width: 100%;
}
.s02_container2 > p > img{
	width: 400px;
}
.s02_container2 > h3{
	line-height: 1.8;
	color: #333;
	margin-bottom: 30px;
	font-size: 22px;
	text-align: center;
	font-family: sans-serif;
}
.g-color-blue{
	color: #3398dc;
}
.s02_container2 > p.s02_p2{
	font-size: 20px;
	text-align: center;
	font-family: sans-serif;
	
}
.s02_container3{
	padding-top: 100px;
	
}
.s02_container3 > h2{
	text-align: center;
	font-size: 40px;
	color: #3398dc;
	margin-bottom: 30px;
	line-height: 1.4;
	font-family: sans-serif;
}
.s02_container3 > p.s02_p3{
	margin-bottom: 50px;
	text-align: center;
	width: 100%;
}
.s02_container3 > p.s02_p3 > img{
	width: 400px;
}
.s02_container3 > h4{
	line-height: 1.8;
	color: #333;
	margin-bottom: 30px;
	font-size: 22px;
	font-family: sans-serif;
	text-align: center;
}
.s02_container3 > p.s02_p4{
	font-size: 20px;
	text-align: center;
	line-height: 1.8;
	font-family: sans-serif;
}
.section03{
	padding-bottom: 170px;
	padding-top: 100px;
}
.s03_container1{
	margin-bottom: 70px;
}
.s03_container1 > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	color: #151826;
	text-align: center;
	width: 100%;
	font-family: sans-serif;
}
.s03_container1 > p{
	margin-bottom: 14px;
	font-size: 16px;
	color: #979aa7;
	width: 100%;
	text-align: center;
	font-family: sans-serif;
}
.s03_container2{
	width: 100%;
	margin-bottom: 80px;	
}
.s03_container2 > ul{
	line-height: 1.4;
	font-size: 14px;
	border-bottom: 1px solid #eee;
	text-align: center;
}
.s03_container2 > ul > li{
	display: inline-block;
	margin-bottom: -1px;
	margin: 0 10px;
	font-size: 16px;
	cursor: pointer;
	font-weight: bold;
	font-family: sans-serif;
	color: #979aa7;
	padding: .5rem 1rem;
	padding-bottom: 15px;
	letter-spacing: 0.5px;
}
.s03_container2 > ul > li:hover{
	text-decoration: none;
	color: #3398dc; /*마우스오버시 자연스럽게*/
	transition-duration: 300ms;
	transition-property: color, border-color, background-color;
	transition-timing-function: ease;
}
.s03_container2 > ul > li:first-child{
	border-bottom: 5px solid #3398dc;
}
.s03_container3{
	padding-top: 20px;
}
.s03_container3 > .s03_tab1{
	width: 100%;
	position: relative;
}
.s03_container3 > .s03_tab1:before{
	background: #f1f1f1;
	content:"";
	position: absolute;
	top:0;
	bottom:0;
	left: 18%;
	width: 1px;
	height: 100%;
}
.s03_container3 > .s03_tab2{
	display: none;
	width: 100%;
	position: relative;
}
.s03_container3 > .s03_tab2:before{
	background: #f1f1f1;
	content:"";
	position: absolute;
	top:0;
	bottom:0;
	left: 18%;
	width: 1px;
	height: 100%;
}
.cw{
	width: 100%;
	margin-bottom: 50px;
	position: relative;
}
.cw > .smallCircle{
	margin-left: -8px;
	height: 16px;
	width: 16px;
	position: absolute;
	top: 50%;
	left: 18%;
	-webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    -webkit-backface-visibility: hidden;
	text-align: left;
	z-index: 3;
}
.cw > .smallCircle > i{
	width: 16px;
	height: 16px;
	border: 5px solid #eee;
	display: inline-block;
	background: #fff;
	border-radius: 50px;
}
.cw > .contentWrap{
	text-align: left;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
}
.cw > .contentWrap > .leftAside{
	-webkit-box-ordinal-group: 2;
    -ms-flex-order: 1;
    order: 1;
	display: -ms-flexbox !important;
	display: flex !important;
	-ms-flex: 0 0 25%;
	flex: 0 0 25%;
	max-width: 25%;
	position: relative;
	width: 100%;
	min-height: 1px;
	-ms-flex-item-align: center !important;
	align-self: center !important;
}
.cw > .contentWrap > .leftAside > .yearMonth{
	position: relative;
	width: 100%;
	
}
.cw > .contentWrap > .leftAside > .yearMonth:before{
	top: 50%;
}
.cw > .contentWrap > .leftAside > .yearMonth:before{
	content: "";
	position: absolute;
	left: auto;
	right: 0;
	width: 100%;
	height: 0;
	border-top: 1px solid #f1f1f1;
}

.yearMonth > span{
	padding: 5px 10px;
	width: 110px;
	color: #fff;
	position: relative;
	line-height: 1.6;
	font-size: 14px;
	background: #111;
	text-align: center;
	display: block;
	margin-right: auto;
	font-family: sans-serif;
	font-weight: bold;
}
.rightAside{
	position: relative;
	width: 100%;
	max-width: 75%;
	min-height: 1px;
	-webkit-box-ordinal-group: 3;
	-ms-flex-order: 2;
	order: 2;
	-ms-flex: 0 0 75%;
	flex: 0 0 75%;
	max-width: 75%;
	-ms-flex-align: start;
	align-items: flex-start;
	text-align: left;
}
.rAsideWrap{
	display: -ms-flexbox !important;
	display: flex !important;
}
.imgWrap{
	position: relative;
	text-align: left;
	margin-left: auto;
	border-radius: 50%;
	overflow: hidden;
	width: 120px;
	height: 120px;
	margin-right: 30px;
	display: -ms-flexbox !important;
	display: flex !important;
}
.imgWrap:before, .imgWrap:after{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
.imgWrap:after{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-color: rgba(22, 26, 39, 0.7);
	-webkit-transition-property: background-color;
	-o-transition-property: background-color;
	transition-property: background-color;
	-webkit-transition-duration: .2s;
	-o-transition-duration: .2s;
	transition-duration: .2s;
	-webkit-transition-timing-function: ease-in;
	-o-transition-timing-function: ease-in;
	transition-timing-function: ease-in;
}
.imgWrap > img{
	width: 320px;
	border-radius: 50%;
	max-width: 100%;
	height: auto;
	vertical-align: middle;
	border-style: none;
	text-align: left;
}
.cw:hover .imgWrap:after{
	background-color: rgba(22, 26, 39, 0);
	-webkit-transition-property: background-color;
	-o-transition-property: background-color;
	transition-property: background-color;
	-webkit-transition-duration: .2s;
	-o-transition-duration: .2s;
	transition-duration: .2s;
	-webkit-transition-timing-function: ease-in;
	-o-transition-timing-function: ease-in;
	transition-timing-function: ease-in;
}
.txtWrap{
	text-align: left;
	-ms-flex: 1;
	flex: 1;
	-ms-flex-item-align: center !important;
	align-self: center !important;
}
.txtWrap > h5{
	margin-bottom: 5px;
	color: #3398dc;
	font-size: 12px;
	line-height: 1.3;
	font-family: sans-serif;
}
.txtWrap > h3{
	margin-bottom: 10px;
	font-size: 18px;
	color: #151826;
	line-height: 1.4;
	font-family: sans-serif;
}
.txtWrap > p{
	color: #999;
	font-size: 16px;
	text-align: left;
	font-family: sans-serif;
}
.section04{
	padding: 100px 0;
	background: url("${pageContext.request.contextPath}/resources/images/section04_bg.jpg") no-repeat;
	background-size: cover;
	background-position: center;
	position: relative;
}
.section04:before, .section04:after{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
.section04:after{
	background-color: rgba(22, 26, 39, 0.7) !important;
}
.s04_container1{
	position: relative;
	z-index: 3;
	max-width: 1400px;
	margin: 0 auto;
	padding-right: 15px;
	padding-left: 15px;
	width: 100%;
	text-align: center;
}
.s04_container1 > h3{
	margin-bottom: 90px;
	color: #fff;
	font-size: 30px;
	line-height: 1;
	font-family: sans-serif;
}
.s04_container1 > .s04_videoWrap{
	position: relative;
	display: block;
	width: 100%;
	padding: 0;
	overflow: hidden;
}
.s04_videoWrap > iframe{
	/* position: absolute;
	top: 0;
	bottom: 0;
	left: 0; */
	width: 1110px;
	height: 669.156px;
	border: 0;
}
.section05{
	background: #fff url("${pageContext.request.contextPath}/resources/images/section05_bg.jpg") no-repeat center top;
	padding: 100px 0 60px;
}
.s05_container1{
	position: relative;
	z-index: 3;
	width: 100%;
	max-width: 1400px;
	margin: 0 auto;
	padding: 0 15px;
	
}
.s05_con_top{
	margin-bottom: 70px;
	text-align: center;
}
.s05_textWrap{
	font-family: NanumSB;
	margin-top: 125px;
	font-size: 26px;
	color: rgb(51, 51, 51);
	margin-bottom: 300px;
}
.s05_textWrap > p{
	margin-bottom: -0.5rem;
	font-size: 26px;
	text-align: center;
	font-family: NanumSB;
	line-height: 1.8;
	font-weight: 400;
}
.s05_textWrap > p:first-child{
	margin-top: -1.5rem;
	margin-bottom: 0.8rem;
}
.s05_textWrap > p > strong{
	font-size: 33px;
}
.s05_con_bottom{
	text-align: center;
	position: relative;
	line-height: 1.8;
	font-size: 1.14286rem;
}
.s05_con_bottom > img.s05_con_bottom_img1{
	vertical-align: middle;
}
.s05_con_bottom > p.s05_con_bottom_p1{
	margin-top: 80px;
	position: relative;
	font-family: NanumSB; 
	font-size: 25px;
	color: rgb(51, 51, 51);
}
.s05_con_bottom > p.s05_con_bottom_p1:after{
	content: "";
	position: absolute;
	height: 2px;
	width: 50px;
	background: #3398dc;
	bottom: -20px;
	left: 50%;
	margin-left: -25px;
}
.s05_con_bottom > img.s05_con_bottom_img2{
	margin: 40px 0;
	vertical-align: middle;
}
.s05_con_bottom > p.s05_con_bottom_p2{
	margin-bottom: 3rem;
	position: relative;
	font-family: NanumSB;
	font-size: 25px;
	color: rgb(51, 51, 51);
}
.s05_con_bottom > a{
	line-height: 20px;
	font-size: 1.2em;
	color: #3398dc;
	border: none;
	background: transparent;
}
.s05_con_bottom > div.shop_link_img{
    position: absolute;
    bottom: -30px;
    right: -180px;
}
.section06{
	position: relative;
	padding: 100px 0;
	background: url("${pageContext.request.contextPath}/resources/images/section06_bg.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
.section06:before, .section06:after{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}
.section06:after{
	background-color: rgba(22, 26, 39, 0.7);
}
.s06_container1{
	position: relative;
	z-index: 3;
	line-height: 1.8;
}
.s06_container1 > .s06_textWrap{
	margin-bottom: 70px;
	text-align: center;
	
}
.s06_container1 > .s06_textWrap > h3{
	margin-bottom: 30px;
	color: #fff;
	line-height: 1;
	font-size: 30px;
	text-align: center;
	font-family: sans-serif;
}
.s06_container1 > .s06_textWrap > p{
	color: #fff;
	margin-bottom: 1rem;
	text-align: center;
	font-family: sans-serif;
	font-size: 16px;
}
.s06_videoAllWrap{
	border-top: 1px solid rgba(0,0,0,0.6);
	margin-bottom: 50px;
	text-align: center;
}
.s06_videoWrap1{
	position: relative;
	display: block;
	overflow: hidden;
	margin: 0;
	padding: 0;
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	-ms-transform: translate3d(0, 0, 0);
	-o-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}
.s06_videoWrap2{
	position: relative;
	opacity: 1;
	width: 1110px;
	left: 0px;
	top: 0;
	display: block;
	text-align: center;
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	-ms-transform: translate3d(0, 0, 0);
	-o-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}
.s06_videoWrap2:before, .s06_videoWrap2:after{
	display: table;
	content: '';
}
.s06_videoWrap2:after{
	clear: both;
}
.s06_v_verticanWrap{
	width: 185px;
	height: auto;
	display:block;
	float: left;
	min-height: 1px;
}
.s06_videoInner1{
	text-align: center;
	height: 143px;
}
.s06_videoInner1 > a{
	width: 100%;
	display: inline-block;
	height: auto;
	position: relative;
	border-right: 1px solid rgba(0, 0, 0, 0.6);
	border-bottom: 1px solid rgba(0, 0, 0, 0.6);
	overflow: hidden;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
}
/* .s06_videoInner1 > a:before, .s06_videoInner1 > a:after{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
} */
.s06_videoInner1 > a:after{
	content: "";
    position: absolute;
    width: 50px;
    height: 50px;
    left: 50%;
    margin-left: -25px;
    top: 50%;
    margin-top: -25px;
    background: url("${pageContext.request.contextPath}/resources/images/play_btn.png") no-repeat center center;
}
.s06_videoInner1 > a > img{
	max-width: 100%;
	height: auto;
	padding: 20px 0;
	background-color: rgba(0, 0, 0, 0.4);
	display: block;
	transform: scale(1); 
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.3s ease-in-out;
}
.s06_videoInner1 > a:hover > img{
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
	transition: all 0.3s ease-in-out;
}
.s06_videoInner2{
	text-align: center;
	height: 143px;
}
.s06_videoInner2 > a{
	width: 100%;
	display: inline-block;
	height: auto;
	position: relative;
	border-right: 1px solid rgba(0, 0, 0, 0.6);
	border-bottom: 1px solid rgba(0, 0, 0, 0.6);
	overflow: hidden;
}
/* .s06_videoInner2 > a:before, .s06_videoInner1 > a:after{
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
} */
.s06_videoInner2 > a:after{
	content: "";
    position: absolute;
    width: 50px;
    height: 50px;
    left: 50%;
    margin-left: -25px;
    top: 50%;
    margin-top: -25px;
    background: url("${pageContext.request.contextPath}/resources/images/play_btn.png") no-repeat center center;
}
.s06_videoInner2 > a > img{
	max-width: 100%;
	height: auto;
	padding: 20px 0;
	background-color: rgba(0, 0, 0, 0.4);
	display: block;
	transform: scale(1); 
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.3s ease-in-out;
	
}
.s06_videoInner2 > a:hover > img{
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-transform: scale(1.1);
	transition: all 0.3s ease-in-out;
}
.section07{
	text-align: center;
	position: relative;
	margin-bottom: 370px;
}
.s07_container1{
	position: relative;
	background: #f5f6f8;
	padding-bottom: 200px;
	padding-top: 100px;
	color: #000;
}
.s07_container1:before, .s07_container1:after{
	content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
}
.s07_textWrap{
	width: 780px;
	max-width: 100%;
	position: relative;
	z-index: 3;
	margin: 0 auto;
}
.s07_textWrap > h3{
	margin-bottom: 50px;
	font-size: 30px;
	font-family: sans-serif;
	letter-spacing: 1px;
}
.s07_textWrap > p{
	margin-bottom: 30px;
	font-size: 16px;
	font-family: sans-serif;
}
.s07_infoWrap{
	padding: 5px 0;
	margin-bottom: 90px;
	overflow-x: hidden;
	font-size: 13px;
}
.s07_infoWrap > p{
	float: left;
	width: 33.33%;
	text-align: center;
	font-family: sans-serif;
	font-size: 14px;
}
.s07_infoWrap > p > a{
	color: #333;
	text-transform: uppercase;
}
.s07_container2{
	position: absolute;
    bottom: -360px;
    left: 50%;
    margin-left: -570px;
}
.s07_container2 > .mapWrap{
	width: 1110px;
	height: 500px;
	margin: 0 auto;
	margin-bottom: 60px;
}
.s07_container2 > .mapWrap > #map{
	width: 100%;
	height: 100%;
}
.section08{
	background: #f5f6f8;
	padding: 100px 0;
}
.s08_container1{
	margin-bottom: 40px;
	max-width: 750px;
	text-align: center;
	
}
.s08_textWrap{
	margin-bottom: 70px;
	text-align: center;
}
.s08_textWrap > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	font-family: sans-serif;
}
.s08_textWrap > p{
	margin-bottom: 1rem;
	font-size: 16px;
	font-family: sans-serif;
	color: #979aa7;
}
.s08_sliderWrap{

}
.s08_slides{

}
.slideContent{
	padding: 0 15px 5px 15px;
}
.slideContent > .slideTextWrap{
	padding: 35px;
	height: 210.98px;
	-webkit-box-shadow: 2px 2px 2px #eee;
	box-shadow: 2px 2px 2px #eee;
	background: #fff;
	text-align: center;
}
.slideTextWrap > h5{
	font-size: 14px;
	font-family: sans-serif;
	text-align: center;
	font-weight: bold;
	line-height: 1.4;
	color: #151826;
	text-overflow:ellipsis;
	white-space:nowrap;
	word-wrap:normal;
	overflow: hidden;
	margin-bottom: 10px;
}
.slideTextWrap > .s_description{
	font-size: 11px;
	text-align: center;
	font-family: sans-serif;
	line-height: 1.8;
	color: #979aa7;
	height: 60px;
	overflow: hidden;
}
.slideTextWrap > .s_regdate{
	font-size: 16px;
	font-family: sans-serif;
	margin-top: 30px;
	font-weight: bold;
	color: #979aa7;
	letter-spacing: 0px;
}
.slick-prev{
	background: url("${pageContext.request.contextPath}/resources/images/icon_prev_arrow.jpg") no-repeat;
	background-size: cover;
}
.slick-next{
	background: url("${pageContext.request.contextPath}/resources/images/icon_next_arrow.jpg") no-repeat;
	background-size: cover;
}
.section09{
	background: #fff;
	padding: 100px 0;
}
.s09_container1{
	margin-bottom: 40px;
	max-width: 750px;
	text-align: center;
	
}
.s09_textWrap{
	margin-bottom: 70px;
	text-align: center;
}
.s09_textWrap > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	font-family: sans-serif;
}
.s09_textWrap > p{
	margin-bottom: 1rem;
	font-size: 16px;
	font-family: sans-serif;
	color: #979aa7;
}
.s09_container2{
	width: 100%;
}
.s09_sliderWrap{
	width: 100%;
	padding: 0 50px;
}
.s09_slides{
	
}
.s09_slides .slick-center{
	opacity: 1;
	-webkit-transition-property: opacity;
	-o-transition-property: opacity;
	transition-property: opacity;
	-webkit-transition-duration: .4s;
	-o-transition-duration: .4s;
	transition-duration: .4s;
	-webkit-transition-timing-function: ease-in;
	-o-transition-timing-function: ease-in;
	transition-timing-function: ease-in;
}

.s09_slideContent{
	padding: 0 15px 30px 15px;
	opacity: 0.2;
	-webkit-transition-property: opacity;
	-o-transition-property: opacity;
	transition-property: opacity;
	-webkit-transition-duration: .4s;
	-o-transition-duration: .4s;
	transition-duration: .4s;
	-webkit-transition-timing-function: ease-in;
	-o-transition-timing-function: ease-in;
	transition-timing-function: ease-in; 
}
.s09_s_imgWrap{
	width: 100%;
}
.s09_s_imgWrap > a{
	width: 100%;
}
.s09_s_imgWrap > a > img{
	width: 100%;
}
.s09_s_textWrap{
	width: 100%;
	padding: 30px;
	box-shadow: 0 15px 20px 0 rgba(0, 0, 0, 0.06);
}
.s09_s_textWrap > h5{
	font-size: 14px;
	font-family: sans-serif;
	color: #151826;
	margin-bottom: 5px;
	font-family: sans-serif;
}
.s09_s_textWrap > p{
	font-size: 11px;
	color:  #3398dc;
	font-weight: 700;
	line-height: 1.4;
	margin-bottom: 20px;
	font-family: sans-serif;
}
.s09_s_textWrap > h4{
	line-height: 1.4;
	margin-bottom: 20px;
	font-size: 16px;
	color: #979aa7;
	font-family: sans-serif;
}


.section10{
	background: #f5f6f8;
	padding: 100px 0;
	padding-bottom: 50px;
}
.s10_container1{
	margin-bottom: 40px;
	max-width: 750px;
	text-align: center;
	
}
.s10_textWrap{
	margin-bottom: 70px;
	text-align: center;
}
.s10_textWrap > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	font-family: sans-serif;
}
.s10_textWrap > p{
	margin-bottom: 1rem;
	font-size: 16px;
	font-family: sans-serif;
	color: #979aa7;
}
.s10_textWrap > a{
	font-size: 15px;
	font-family: sans-serif;
	font-weight: bold;
	display: block;
	margin-top: 70px;
}

.section11{
	background: #fff;
	padding: 100px 0;
}
.s11_container1{
	margin-bottom: 40px;
	max-width: 750px;
	text-align: center;
	
}
.s11_textWrap{
	margin-bottom: 70px;
	text-align: center;
}
.s11_textWrap > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	font-family: sans-serif;
}
.s11_textWrap > p{
	margin-bottom: 1rem;
	font-size: 16px;
	font-family: sans-serif;
	color: #979aa7;
}
.s11_container2{
	width: 100%;
	text-align: center;
}
.s11_container2 > .fb-page{
	margin: 0 auto;
}
.section12{
	background: #f5f6f8;
	padding: 100px 0;
}
.s12_container1{
	margin-bottom: 40px;
	max-width: 750px;
	text-align: center;
	
}
.s12_textWrap{
	margin-bottom: 70px;
	text-align: center;
}
.s12_textWrap > h3{
	margin-bottom: 30px;
	line-height: 1;
	font-size: 30px;
	font-family: sans-serif;
}
.s12_textWrap > p{
	margin-bottom: 1rem;
	font-size: 16px;
	font-family: sans-serif;
	color: #979aa7;
}
.s12_container2 > .tblWrap{
	width: 100%;
}
.s12_container2 > .tblWrap > table{
	width: 100%;
}
.s12_container2 > .tblWrap > table tr > th{
	font-size: 17px;
	color: #979aa7;
	font-family: sans-serif;
	border-top: 3px solid #333;
	border-bottom: 1px solid #333;
	text-align: center;
	line-height: 50px;
	font-weight: bold;
}
.s12_container2 > .tblWrap > table tr > th:nth-child(1){
	width: 106px;
}
.s12_container2 > .tblWrap > table tr > th:nth-child(2){
	width: 680px;
}
.s12_container2 > .tblWrap > table tr > th:nth-child(3){
	width: 106px;
}
.s12_container2 > .tblWrap > table tr > th:nth-child(4){
	width: 106px;
}
.s12_container2 > .tblWrap > table tr > th:nth-child(5){
	width: 106px;
}
.s12_container2 > .tblWrap > table tr > td{
	font-size: 16px;
	color: #979aa7;
	font-family: sans-serif;
	border-bottom: 1px solid #333;
	text-align: center;
	line-height: 62px;
}
.s12_container2 > .tblWrap > table tr > td:nth-child(2){
	text-align: left;
	text-overflow:ellipsis;
	white-space:nowrap;
	word-wrap:normal;
	overflow: hidden;
}
.s12_container2 > .tblWrap > table tr > td > a{
	font-size: 16px;
	color: #979aa7;
	font-family: sans-serif;
}
.s12_container2 > .tblWrap > table tr > td > a:hover{
	color: #333;
	text-decoration: underline;
}

.page{
	margin: 15px auto;
}
.page > ul{
	text-align: center;
}
.page ul li{
	margin:0 auto;
	list-style: none;
	display: inline-block;
	text-align:center;
	border:1px solid #e9e9e9;
	border-radius: 8px;
	margin: 0 1px;
	background: #fafafa;
}
.active1{
	background: #4a7899 !important;
}
.active2{
	font-weight: bold;
	color:white;
}
.page ul li a{
	display:inline-block;
	width:35px;
	height:30px;
	font-size:1.1em;
	line-height: 30px;
}
</style>
<script>
function get_blogInfo(){
	var dt;
	$.ajax({
		url:"${pageContext.request.contextPath}/search_blog_get",
		type:"get",
		contentType : "application/json; charset=UTF-8",
		dataType:"json",
		async:false,
		success:function(json){
			var obj = JSON.parse(json.result);
			//console.log(obj.items[1].title);
			dt = obj.items;
		}
	});
	return dt;
}

function draw_blogSection(){
	var json = get_blogInfo();
	var str = "";
	
	$(json).each(function(){
		str += "<div class='slideContent'><div class='slideTextWrap'><input type='hidden' name='link' value='"+this.link+"'><h5>"+this.title+"</h5>"
			+ "<p class='s_description'>"+this.description+""
			+ "</p><p class='s_regdate'>"+this.postdate+"</p></div></div>";
	});
	$(".s08_slides").html(str);
}

function get_youtubeInfo(){
	var dt;
	//AIzaSyBw57piloo_YIBIU8t31eHwfOu-Alw4aUI
	//url매개변수주소 : https://developers.google.com/youtube/v3/docs/search/list?hl=ko
	$.ajax({
		url:"https://www.googleapis.com/youtube/v3/search?key=AIzaSyBw57piloo_YIBIU8t31eHwfOu-Alw4aUI&q=딥롤러&part=snippet&maxResults=10&type=video",
		type:"get",
		dataType:encodeURI("json"),
		async:false,
		success:function(result){
			console.log(result.items);
			dt = result.items;
			
		}
	})
	return dt;
}

function draw_youtubeInfo(){
	var json = get_youtubeInfo();
	var str = "";
	var regd;
	var splitRegd;
	$(json).each(function(){
		regd = this.snippet.publishedAt;
		splitRegd = regd.split("T");
		str += "<div class='s09_slideContent'>"
			+ "<div class='s09_s_imgWrap'><a href='https://www.youtube.com/watch?v="+this.id.videoId+"' target='_blank' tabindex='0'><img src='"+this.snippet.thumbnails.medium.url+"'></a></div>"
			+ "<div class='s09_s_textWrap'><h5>"+this.snippet.title+"</h5><p>"+splitRegd[0]+"</p><h4>"+this.snippet.description+"</h4></div></div>";
	});
	$(".s09_slides").html(str);
	
}

$(function(){
	$(window).scroll(function(){ 
	    var scroll = $(window).scrollTop(); 
	    if(scroll>1){ 
	    	$(".header").css("background", "rgba(255, 255, 255, 0.9)");
	    	$(".headerWrap > .logoWrap > a > img").prop("src", "${pageContext.request.contextPath}/resources/images/logo2.png");
	    	$(".headerWrap > .menuWrap > ul > li > a").css("color", "rgba(0, 0, 0, 0.8)")
	    } 
	    else{ 
	    	$(".header").css("background","rgba(0, 0, 0, 0.9)");
	    	$(".headerWrap > .logoWrap > a > img").prop("src", "${pageContext.request.contextPath}/resources/images/logo.png");
	    	$(".headerWrap > .menuWrap > ul > li > a").css("color", "rgba(255, 255, 255, 0.8)")
	    }
	  })
	
	$(".s03_container2 > ul > li").click(function(){
		$(".s03_container2 > ul > li").css("border", "none");
		$(this).css("border-bottom", "5px solid #3398dc");
		var idx = $(this).index();
		if(idx == 0){
			$(".s03_tab2").fadeOut(300);
			$(".s03_tab1").fadeIn(300);
		}else{
			$(".s03_tab1").fadeOut(300);
			$(".s03_tab2").fadeIn(300);
		}
	});
	
	$(".cw > .contentWrap").hover(function(){
		
	});
	
	draw_blogSection();
	
	$('.s08_slides').slick({
	  dots: false,
	  infinite: true, 
	  speed: 1000,
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  autoplay: false,
	  autoplaySpeed: 2000,
	});
	
	draw_youtubeInfo();
	
	$('.s09_slides').slick({
		  dots: false,
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  centerMode: true,
		});
}); 
</script>
</head>
<body>
	<div class="allWrap">
		<div class="header">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</div>
		<div class="sectionWrap">
			<div class="section01 section" id="section01">
				<div class="s01_container container">
					<p>인체의 건강을<br>아름답게 가꾸는<br>브랜드</p>
				</div>
			</div><!-- section01 end -->
			<div class="section02 section" id="section02">
				<div class="s02_container1 container">
					<h3>ABOUT</h3>
					<p>About CoreDiet brands.</p>
				</div>
				<div class="s02_container2 container">
					<h2>About The CoreDiet</h2>
					<p class="s02_p1"><img src="${pageContext.request.contextPath}/resources/images/section02_img.png"></p>
					<h3>
						코어다이어트 브랜드는 건강생활문화 선도하는 <span class="g-color-blue">주식회사 메드사피엔스</span>의 브랜드로써<br>건강과 행복, 아름다움을 만들어가기 위한 노력을 하고 있습니다.
					</h3>
					<p class="s02_p2">
						고객의 다이어트와 척추 건강 등 고객 건강의 가치를 제공하기 위하여 운동기, 자극기, 건강 기능성 식품 등 <br class="mobile_blind">다이어트 토탈 헬스케어 브랜드입니다.
					</p>
				</div><!-- s02_container2 end -->
				<div class="s02_container3 container">
					<h2>COREDIET DEEP ROLLER</h2>
					<p class="s02_p3"><img src="${pageContext.request.contextPath}/resources/images/section02_img2.png"></p>
					<h4>척추 전문 도수 치료사가 개발한 폼롤러</h4>
					<p class="s02_p4">코어다이어트 딥롤러는 15년 이상의 도수치료 임상 경력을 가진 물리치료사가 가정에서 또는 <br class="mobile_blind">운동센터나 물리치료실에서 효과적인 폼롤러 운동을 통해 척추와 근막을 관리할 수 있도록 개발된 제품입니다.</p>
				</div><!-- s02_container3 end -->
			</div><!-- section02 end -->
			<div class="section03 section" id="section03">
				<div class="s03_container1 container">
					<h3>HISTORY</h3>
					<p>CoreDiet brands history.</p>
				</div>
				<div class="s03_container2 container">
					<ul>
						<li>BELITE</li>
						<li>DEEP ROLLER</li>
					</ul>
				</div>
				<div class="s03_container3 container">
					<div class="s03_tab1">
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 07</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img01.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 07</h5>
											<h3>벤처기업 등록 (제20180108663호)</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 06</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img02.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 06</h5>
											<h3>(주)코드바이오 다이어트 건기식, 크림 연구개발 MOU체결</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 06</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img03.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 06</h5>
											<h3>벨라이트 중국 상표 출원</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 06</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img04.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 06</h5>
											<h3>(주)티앤아이 벨라이트 유통 및 마케팅 업무 MOU체결</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 06</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img05.jpg" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 06</h5>
											<h3>행복한재활의학과의원 다이어트 브랜드 벨라이트 임상실험 업무 MOU체결</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 06</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img06.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 06</h5>
											<h3>온라인 쇼핑몰 프로팡 상표등록</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 06</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img07.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 06</h5>
											<h3>온라인 쇼핑몰 프로팡 “PROPANG” 오픈</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2017. 10</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img08.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2017. 10</h5>
											<h3>복부의 코어 근육 강화를 위한 전극 채널의 구동장치</h3>
											<p>(특허출원 : 10-2017-0180877)</p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2017. 09</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img09.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2017. 09</h5>
											<h3>DRIVE DEVICE OF ELECTRODE CHANNEL FOR STRENGTHENING CORE MUSCLE OF ABDOMINAL REGION.</h3>
											<p>(미국 특허 출원 : 15/853,991)</p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2017. 09</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_1_img10.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2017. 07</h5>
											<h3>복부의 코어 근육 강화를 위한 전기 자극 장치</h3>
											<p>(특허출원 : 10-2017-0117928)</p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
					</div><!-- s03_tab1 end -->
					<div class="s03_tab2">
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 07</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img01.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 07. 14</h5>
											<h3>“코어다이어트 딥롤러(폼롤러)” 출시</h3>
											<p>(주)메드사피엔스 개발&제작 브랜드</p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 07</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img02.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 07</h5>
											<h3>딥롤러 디자인 출원</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 07</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img03.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 07</h5>
											<h3>COERDIET (코어다이어트), DEEPROLLER (딥롤러)</h3>
											<p>상표 출원</p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2018. 07</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img04.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2018. 07</h5>
											<h3>대사 증진을 위한 척추 교정용 정형 폼 롤러</h3>
											<p>특허출원 (10-2018-0074642)</p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2017. 11</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img05.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2017. 11</h5>
											<h3>가누다 헬스케어 전문가 몰 “티앤몰” 및 가누다 메디컬 라인 운영권 및 판매 독점 계약 체결</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2017. 01</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img06.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2017. 01</h5>
											<h3>(주)메드사피엔스 법인명 상표등록</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2017. 01</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img07.jpg" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2017. 01</h5>
											<h3>(주)메드사피엔스 기업부설 연구소 설립</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2016. 11</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img08.jpg" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2016. 11</h5>
											<h3>김희수 대표 KBS “무엇이든 물어보세요 출연”</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2016. 11</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img09.jpg" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2016. 11</h5>
											<h3>김희수 대표 신지식인 인증</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
						<div class="cw">
			                <div class="smallCircle">
			                    <i></i>
			                </div>
			                <div class="contentWrap">
								<div class="leftAside">
									<div class="yearMonth">
										<span class="">2016. 08</span>
									</div>
								</div>
								<div class="rightAside">
									<div class="rAsideWrap">
										<div class="imgWrap">
											<img class="" src="${pageContext.request.contextPath}/resources/images/section03_2_img10.png" alt="Image description">
										</div>			
			                            <div class="txtWrap">
											<h5>2016. 08</h5>
											<h3>(주)메드사피엔스 법인 설립</h3>
											<p></p>
										</div>
									</div>
								</div>
							</div>
						</div><!-- cw end -->
					</div><!-- s03_tab2 end -->
				</div><!-- s03_container3 end -->
			</div><!-- section03 end -->
			<div class="section04 section" id="section04">
				<div class="s04_container1 container">
					<h3>BRANDS</h3>
					<div class="s04_videoWrap">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/1vAdXinH5ck" frameborder="0" allowfullscreen=""></iframe>
					</div>
				</div>
			</div><!-- section04 end -->
			<div class="section05 section" id="section05">
				<div class="s05_container1 container">
					<div class="s05_con_top">
						<div class="s05_textWrap">
							<p><strong>하루 10분!</strong></p>
							<p>딥롤러 운동으로<br>척추 건강 관리 해결!</p>
						</div>
					</div>
					<div class="s05_con_bottom">
						<img class="s05_con_bottom_img1" src="${pageContext.request.contextPath}/resources/images/section05_img01.png" alt="딥롤러">
						<p class="s05_con_bottom_p1">척추의 자생력을 깨우다<br>건강한 몸으로 가누다</p>
						<img class="s05_con_bottom_img2" src="${pageContext.request.contextPath}/resources/images/section05_img02.jpg" alt="딥롤러 사용 구조도 이미지">
						<p class="s05_con_bottom_p2">척추 건강의 효과적인 해법 딥롤러</p>
						<a href="https://smartstore.naver.com/corediet/products/3537520532" target="_blank"><i class=""></i>> 딥롤러 구매하기</a>
						<div class="shop_link_img">
							<a href="https://smartstore.naver.com/corediet/products/3537520532" target="_blank" title="딥롤러 구매페이지 새창으로 보기">
								<img src="${pageContext.request.contextPath}/resources/images/section05_img03.png" alt="딥롤러이미지" title="">
							</a>
						</div>
					</div>
				</div><!-- s05_container1 end -->
			</div><!-- section05 end -->
			<div class="section06 section" id="section06">
				<div class="s06_container1 container">
					<div class="s06_textWrap">
						<h3>HOW TO USE</h3>
						<p>How to use "Deep Roller". Spine alignment deep roller.<br>If you want to watch video, click thumbnail.</p>
					</div>
					<div class="s06_videoAllWrap">
						<div class="s06_videoWrap1">
							<div class="s06_videoWrap2">
								<div class="s06_v_verticanWrap">
									<div class="s06_videoInner1">
										<a href="https://youtu.be/UA7iWM8hcY8" target="_blank">
			        						<img class="" src="${pageContext.request.contextPath}/resources/images/section06_img01.jpg" alt="새창으로 보기, 01. 코어다이어트 딥롤러 ( 경추 지압 및 C 커브 운동 )" title="">
								        </a>
							        </div>
	       							<div class="s06_videoInner2">
					       				<a href="https://youtu.be/wKGJBocvmLs" target="_blank">
					        				<img src="${pageContext.request.contextPath}/resources/images/section06_img02.jpg" alt="새창으로 보기, 02. 코어다이어트 딥롤러 ( 등 흉추 지압 및 운동 )" title="">
					        			</a>
	        						</div>
	        					</div>
								<div class="s06_v_verticanWrap">
									<div class="s06_videoInner1">
						        		<a href="https://youtu.be/_ytl7eyJuhA" target="_blank">
						       				<img src="${pageContext.request.contextPath}/resources/images/section06_img03.jpg" alt="새창으로 보기, 03. 코어다이어트 딥롤러 ( 늑골 지압 및 가슴펴기 운동 )" title="">
						       			</a>
						       		</div>
						       		<div class="s06_videoInner2">
						       			<a href="https://youtu.be/z74bSKVSBsU" target="_blank">
						        			<img src="${pageContext.request.contextPath}/resources/images/section06_img04.jpg" alt="새창으로 보기, 04. 코어다이어트 딥롤러 ( 요추 허리 지압 및 디스크 감압 운동 )" title="">
						        		</a>
						        	</div>
						        </div>
						        <div class="s06_v_verticanWrap">
							        <div class="s06_videoInner1">
								        <a href="https://youtu.be/kVVA5X_6UHA" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img05.jpg" alt="새창으로 보기, 05. 코어다이어트 딥롤러 ( 골반 천골첨 지압 및 요추 후관절면 감압 운동 )" title="">
								        </a>
							        </div>
							        <div class="s06_videoInner2">
								        <a href="https://youtu.be/ccn2j2cMEDs" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img06.jpg" alt="새창으로 보기, 06. 코어다이어트 딥롤러 ( 골반 대칭 지압 (후상장골극;PSIS, 좌골결절))" title="">
								        </a>
							        </div>
						        </div>
						        <div class="s06_v_verticanWrap">
							        <div class="s06_videoInner1">
								        <a href="https://youtu.be/QcXtMvokrgU" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img07.jpg" alt="새창으로 보기, 07. 코어다이어트 딥롤러 ( 브릿지 운동 및 발바닥 자극 )" title="">
								        </a>
							        </div>
							        <div class="s06_videoInner2">
								        <a href="https://youtu.be/bL2_3NP_liE" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img08.jpg" alt="새창으로 보기, 08. 코어다이어트 딥롤러 ( 햄스트링 슬건근 자극 운동법 )" title="">
								        </a>
							        </div>
						        </div>
						        <div class="s06_v_verticanWrap">
							        <div class="s06_videoInner1">
								        <a href="https://youtu.be/c-zcDrwgWyY" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img09.jpg" alt="새창으로 보기, 09. 코어다이어트 딥롤러 ( 종아리 및 경골근 자극 운동법 )" title="">
								        </a>
							        </div>
							        <div class="s06_videoInner2">
								        <a href="https://youtu.be/Vq-DudqAfdc" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img10.jpg" alt="새창으로 보기, 10. 코어다이어트 딥롤러 ( 코어브릿지 및 대퇴사두근 운동법 )" title="">
								        </a>
							        </div>
						        </div>
						        <div class="s06_v_verticanWrap">
							        <div class="s06_videoInner1">
								        <a href="https://youtu.be/siCV14tqiPI" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img11.jpg" alt="새창으로 보기, 11. 코어다이어트 딥롤러 ( 중둔근 및 이상근 자극 운동법 )" title="">
								        </a>
							        </div>
							        <div class="s06_videoInner2">
								        <a href="https://youtu.be/9StAAqVQgZU" target="_blank">
								        	<img src="${pageContext.request.contextPath}/resources/images/section06_img12.jpg" alt="새창으로 보기, 12. 코어다이어트 딥롤러 ( 장요근; 요근, 장골근 스트레칭 운동법 )" title="">
								        </a>
							        </div>
						        </div>
					        </div><!-- s06_videoWrap2 end -->
					    </div><!-- s06_videoWrap1 end -->
					</div><!-- s06_videoAllWrap end -->
				</div><!-- s06_container1 end -->
			</div><!-- section06 end -->
			<div class="section07 section" id="section07">
				<div class="s07_container1">
					<div class="s07_textWrap">
						<h3>CONTACT</h3>
						<p>Address: <strong>경기도 하남시 미사강변중앙로 212, 1301호 (망월동, 미사강변 안강프라이빗뷰)</strong></p>
						<div class="s07_infoWrap">
							<p>EMAIL: <a class="g-color-black" href="mailto:medsapiens@naver.com"><strong>medsapiens@naver.com</strong></a></p>
							<p>TEL: <strong>031-792-6554</strong></p>
							<p>FAX: <strong>031-792-6553</strong></p>
						</div>
					</div>
				</div>
				<div class="s07_container2 container">
					<div class="mapWrap">
						<div id="map"></div>
						<script>
							var container = document.getElementById('map');
							var options = {
								center: new daum.maps.LatLng(37.565531,127.189444),
									
								level: 3
							};
	
							var map = new daum.maps.Map(container, options);
	
							var markerPosition  = new daum.maps.LatLng(37.565531,127.189444); 
	
							// 마커를 생성합니다
							var marker = new daum.maps.Marker({
								position: markerPosition
							});
	
							marker.setMap(map);
						</script>
					</div><!-- mapWrap end -->
				</div><!-- s07_container2 end -->
			</div><!-- section07 end -->
			<div class="section08 section" id="section08">
				<div class="s08_container1 container">
					<div class="s08_textWrap">
						<h3>BLOG</h3>
						<p>CoreDiet's blog.</p>
					</div>
				</div>
				<div class="s08_sliderWrap">
					<div class="s08_slides">
						
					</div>
					
				</div><!-- sliderWrap end -->
			</div><!-- section08 end -->
			<div class="section09 section" id="section09">
				<div class="s09_container1 container">
					<div class="s09_textWrap">
						<h3>VIDEO CLIP</h3>
						<p>CoreDiet's Youtube Clips.</p>
					</div>
				</div><!-- s09_container1 end -->
				<div class="s09_container2">
					<div class="s09_sliderWrap">
						<div class="s09_slides">
							
							
						</div><!-- s09_slides -->
					</div><!-- s09_sliderWrap end -->
				</div><!-- s09_container2 end -->
			</div><!-- section09 end -->
			<div class="section10 section" id="section10">
				<div class="s10_container1 container">
					<div class="s10_textWrap">
						<h3>SNS</h3>
						<p>CoreDiet's SNS.</p>
						<a href="https://www.instagram.com/explore/tags/%EB%94%A5%EB%A1%A4%EB%9F%AC/" target="_blank" tabindex="0">코어다이어트 딥롤러 Instagram 후기 바로가기</a>
					</div>
				</div><!-- s10_container1 end -->
			</div><!-- section10 end -->
			<div class="section11 section" id="section11">
				<div class="s11_container1 container">
					<div class="s11_textWrap">
						<h3>FACEBOOK</h3>
						<p>Core Diet Facebook</p>
					</div>
				</div><!-- s11_container1 end -->
				<div class="s11_container2 container">
					<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.2"></script>
					<div class="fb-page" data-href="https://www.facebook.com/corediet/" data-tabs="timeline" data-width="300" data-height="550" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
						<blockquote cite="https://www.facebook.com/corediet/" class="fb-xfbml-parse-ignore">
							<a href="https://www.facebook.com/corediet/">코어다이어트 딥롤러</a>
						</blockquote>
					</div>
				</div><!-- s11_container2 end -->
			</div><!-- section11 end -->
			<div class="section12 section" id="section12">
				<div class="s12_container1 container">
					<div class="s12_textWrap">
						<h3>LIRBRARY</h3>
						<p>CoreDiet's Library</p>
					</div>
				</div>
				<div class="s12_container2 container">
					<div class="tblWrap">
						<table>
							<tr>
								<th>순번</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회</th>
							</tr>
							<c:choose>
							    <c:when test="${fn:length(list) == 0}">
						        	<tr>
						        		<td colspan="5" style=" text-align: center;">등록된 게시물이 없습니다.</td>
						        	</tr>
							    </c:when>
							    
							    <c:otherwise>
							    	<c:set var="num" value="${pageMaker.totalCount - ((pageMaker.cri.page -1) *10)}"></c:set>
							        <c:forEach var="item" items="${list}">
										<tr>
											<td>${num}</td>
											<td><a href="${pageContext.request.contextPath}/noticeRead${pageMaker.makeSearch(pageMaker.cri.page)}&no=${item.no}">${item.title}</a></td>
											<td>${item.writer}</td>
											<td>${item.regdate}</td>
											<td>${item.cnt}</td>
										</tr>
										<c:set var="num" value="${num-1}"></c:set>	
									</c:forEach>
							    </c:otherwise> 
							</c:choose>
						</table>
					</div><!-- tblWrap end -->
					<div class="page">
						<ul>
							<c:if test="${pageMaker.prev}">
								<li><a href="${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
							</c:if>
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li ${pageMaker.cri.page == idx? 'class=active1':''}><a href="${pageMaker.makeSearch(idx)}" ${pageMaker.cri.page == idx? 'class=active2':''}>${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next}">
								<li><a href="${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
							</c:if>
						</ul>
					</div>
				</div><!-- s12_container2 end -->
			</div><!-- section12 end -->
		</div><!-- sectionWrap end -->
	</div><!-- allWrap end -->
</body>
</html>