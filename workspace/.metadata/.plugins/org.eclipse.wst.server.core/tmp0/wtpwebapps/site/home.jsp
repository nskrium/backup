<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "s" uri= "/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Home画面</title>
</head>

<body>
	<p>Home</p>
	<s:form action= "HomeAction">
		<s:submit value= "商品購入" />
	</s:form>

	<s:if test= "#sssion.id !=null">
		<p>ログアウトする場合は
			<a href= '<s:url action= "LogoutAction" />'>こちら</a></p>
	</s:if>
</body>
</html>