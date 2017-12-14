<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset= "utf-8">
	<title>Login</title>
</head>

<body>
	<h3>商品を購入する際にはログインをお願いします。</h3>
	<s:form action= "LoginAction">
		<s:textfield name= "loginUserId" />
		<s:password name= "loginPassword" />
		<s:submit value= "ログイン" />
	</s:form>

	<br>
	新規ユーザー登録は<a href= '<s:url action= "UserCreateAction" />'>こちら</a>
</body>
</html>