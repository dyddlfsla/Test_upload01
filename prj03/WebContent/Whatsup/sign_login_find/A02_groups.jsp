<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"
    import="whatMvc.A01_vo.*" 
	import="whatMvc.A03_database.*"  
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>말은 마음의 초상이다.-레이</title>

<style>
	html, body{
  font-family: 'Roboto', sans-serif;
}
	#menu{
		background:#5882FA;
		color:#fff;
		width:14%;
		height:80%;
		float:left;
		position:fixed;
	}
	#mainmenu{
		margin-top:60%;
		border-collapse:separate;
		border-spacing:30px;
	}
	 #scroll{
      position:absolute;
      right:0;
      border:1px solid #5882FA;
      color:#000;
      width:15%;
      height:300px;
      display:inline-block;
      margin-right:10px;
      margin-top:10%;
      position:fixed;
   }
   select{
		width:100px;
		padding: .8em .5em;
		border:1px solid #999;
		border-radius:7px;
		background:url('arrow.jpg') no-repeat 95% 50%;
		-webkid-appearance:none;
		-moz-appearance:none;
		appearance:none;
	}
	.div{
		margin:auto;
		width:40%;
		margin-left:30%;
		display:inline-box;
		border-radius:10px;
		margin-top:50px;
	}
	.div01{
		margin:auto;
		width:40%;
		margin-left:30%;
		display:inline-box;
		margin-top:20px;
		border-radius:10px;
	}
	#search{
		margin:auto;
		width:15%;
		margin-left:40%;
		margin-top:50px;
		display:inline-box;
		background:#fff;
	}
	#search01{
		margin:auto;
		width:15%;
		margin-left:60%;
		position:absolute;
		margin-top:-35px;
		display:inline-block;
		background:#fff;
	}
	#add{
		width:15%;
		margin-left:60%;
		margin-top:550px;
		display:inline-box;
		background:#fff;
	}
	.btn{
		background: #5882FA;
		border: 1px solid #5882FA;
		border-radius:10px;
     	display: block;
     	font-size: 15px;
     	font-weight: bold;
     	color:#000;
     	padding: 10px 30px;
     	
     	transition:all 0.9s, color 0.3;
     	overflow:hidden;
     	display:inline-block;
     	
	}
	.hover1:hover{
		box-shadow:200px 0 0 0 rgba(0,0,0,0.25) inset,
				-200px 0 0 0 rgba(0,0,0,0.25) inset;
		color:#fff;
	}
	li{line-height:50px;}
	a:link{color:#fff;text-decoration:none;}
	a:visited{color:#fff;text-decoration:none;}
	a:hover{color:#fff;text-decoration:none;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
        $("#start").text("좋은 시작!!");
	});
	function scroll_follow(scroll){
		$(window).scroll(function(){
			var position=$(window).scrollTop();
			$(scroll).stop().animate({top:position+"px"},1000);
		});
	};
	function showPopup(){
	      window.open("${path}/Whatsup/sign_login_find/A02_addgroup.jsp","a","width=500, height=800, left=100, top=50");
	   }
</script>
</head>
<%-- 
# 시작
1.

--%>
<%
Member m = (Member)session.getAttribute("mem");
%>
<body>
	<table id="header" align="center" width="100%">
		<colgroup>
		<col width="10%">
		<col width="80%">
		<col width="10%">
		<tr>
			<td align="center"><img alt="" src="${path}/Whatsup/sign_login_find/img/icon-menu-512.png" 
					style="width:50px; height:50px;"></td>
			<td align="center"><img alt="" src="${path}/Whatsup/sign_login_find/img/logo.png" 
					style="width:250px;height:auto;margin-left:30px;"></td>
			<td>&nbsp;<%=m.getName() %>님 로그인</td>
		</tr>
	</table>
	<hr>
	<div id="menu" >
		<div>
		</div>
		<table id="mainmenu">
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/home.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/main.do">HOME</td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/group.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/groups.do"/>GROUPS</a></td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/cal.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/cal01.do"/>CALENDAR</td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/list.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/my_wishlist.do"/>BUCKET LIST</td></tr>
			<tr><td><img alt="" src="${path}/Whatsup/sign_login_find/img/wish.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="${path}/popular_wishlist.do"/>FIND WISHES</td></tr>
		</table>
	</div>
	<div id="scroll">
		<img alt="" src="${path}/Whatsup/sign_login_find/img/adv.png" width="100%" height="100%">
	</div>
	
	<div id="search" style="width:500px;height:30px;">
		<input type="text" style=" height:30px;width:300px;">
		<img alt="" src="${path}/Whatsup/sign_login_find/img/11.png" style="width:30px;height:30px;vertical-align:middle;align:center;margin-left:-50px;" onclick="alert('검색')">
	</div>
	<div id="search01">
		<input type="button" value="추가" class="btn hover1"
		onclick="showPopup();"/>
	</div>
	<div class="div" style="background:#E0F2F7;">

	   <c:forEach var="g1" items="${gnameList}"> 
	   		
	   		<h3 align="left">${g1.groupname}</h3>
			<img alt="" src="${path}/Whatsup/sign_login_find/img/del.png" style="width:30px;height:30px;float:right;margin-right:50px;" onclick="alert('삭제하시겠습니까?');">
	   </c:forEach>
	   <c:forEach var="g1" items="${group1List}">  
	      	<h5 align="left" ondblclick="goPage(${g1.groupkey})">${g1.title}</h4>
	   </c:forEach>
   </div>
   
   <div class="div" style="background:#E0F2F7;">
	   <c:forEach var="g1" items="${gnameList2}"> 
	   		
	   		<h3 align="left">${g1.groupname}</h3>
			<img alt="" src="${path}/Whatsup/sign_login_find/img/del.png" style="width:30px;height:30px;float:right;margin-right:50px;" onclick="alert('삭제하시겠습니까?');">
	   </c:forEach>
	   <c:forEach var="g1" items="${group1List2}">  
	      	<h5 align="left" ondblclick="goPage(${g1.groupkey})">${g1.title}</h4>
	   </c:forEach>
   </div>

		
	
	

</body>
</html>