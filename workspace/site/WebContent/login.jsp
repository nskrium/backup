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
	<title>Login画面</title>

	<style type="text/css">

	body {
		background: linear-gradient(-45deg, red, orange, yellow, green, blue, indigo, violet);
		color: white;
	}
	</style>

</head>

<body>
	<h3>商品を購入する際にはログインをお願いします。</h3>
	<s:form action= "LoginAction">
		<s:textfield name= "loginUserId" />
		<s:password name= "loginPassword" />
		<s:submit value= "ログイン" />
	</s:form>

	<br>
	<p>新規ユーザー登録は
		<a href= '<s:url action= "UserCreateAction" />'>こちら</a></p>
	<p>Homeへ戻る場合は
		<a href= '<s:url action= "GoHomeAction" />'>こちら</a></p>

</body>
</html>