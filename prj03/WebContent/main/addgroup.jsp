<%-- --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.util.*"
    import="jspexp.a01_vo.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>말은 마음의 초상이다.-레이</title>
<link rel="stylesheet" 
   href="${path}/a00_com/a00_com.css">   
<style>
   p{
	  text-align:center;
	  background:#5882FA;
	  color:#fff;
	  font-weight:bold;
	  font-size:40px;
   }
   .btn{
      background: #5882FA;
      border:1px solid #5882FA;
        display: block;
        font-size: 15px;
        font-weight: bold;
        color:#000;
        padding: 10px 30px;
        transition:all 0.9s, color 0.3;
        overflow:hidden;
        display:inline-block;
		width:100%;
		height:100%;        
   }
   .box{
      margin:auto;
      display:inline-box;
      border-radius:10px;
      border:1px soilid #5882FA;
   }
   .hover1:hover{
      box-shadow:300px 0 0 0 rgba(0,0,0,0.25) inset,
            -300px 0 0 0 rgba(0,0,0,0.25) inset;
      color:#fff;
   }
   
   <!-- -->

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
   

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
<div class="box">
<div><p>ADD GROUP</p></div>
   <table align="center" style="text-align:left;margin-top:100px;border-spacing:50px;">
   	<tr><th>그룹명</th><td><input type="text" ></tr>
   	<tr><th>공개여부</th><td>
   		<input type="radio">공개&nbsp;&nbsp;<input type="radio">비공개
   	</td></tr>
   </table>
   <table style="width:100%; height:50px; margin-top:100px;">
   	<tr><td>
   			<input type="button" class="btn hover1" value="확인">
   		</td>
   		<td>
   			<input type="button" class="btn hover1" value="취소" onclick="self.close();">
   		</td></tr>
   </table>
</div>
</body>
</html>