<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>중복확인</title>

<c:if test="${checker == 1}">

	<table width="300" border="0" cellspacing="0" cellpadding="5">
	<td height="39" >${id}은(는) 이미 사용중인 아이디입니다</td>
	</table>
	
	<form name="checkForm" method="post" action="/moneyWatch/member/confirmId.mw">
	<table width="270" border="0" cellspacing="0" cellpadding="5">

<tr> 
	<td align="center">다른 아이디를 사용하세요 <p>
	<input type="text" size="10" maxlength="12" name="id">
	<input type="submit" value="ID중복확인" >

</table>
</form>
</c:if>
</head>
</html>