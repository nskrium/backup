<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "s" uri= "/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="UTF-8">
	<title>Home画面</title>

		<style type="text/css">

		body {
background: linear-gradient(-45deg, red, orange, yellow, green, blue, indigo, violet);
color: white;
		}

	</style>

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