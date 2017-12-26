<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "s" uri= "/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset= "UTF-8">
	<meta http-equiv= "Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv= "Content-Style-Type" content= "text/css" />
	<meta http-equiv= "Content-Script-Type" content= "text/javascript" />
	<meta http-equiv= "imagetoolbar" content= "no" />
	<meta name= "description" content= "" />
	<meta name= "keywords" content= "" />
	<title>新規ユーザー登録画面</title>

	<style type= "text/css">
		body {
			color: purple;
		}

	</style>
</head>

<body>
	<p>UserCreate</p>

	<s:if test= "errorMessage != ''">
		<s:property value= "errorMessage" escape= "false" />
	</s:if>

	<table>
	<s:form action= "UserCreateConfirmAction">
		<tr>
			<td>
				<label>ログインID：</label>
			</td>
			<td>
				<input type= "text" name= "loginUserId" value= "" />
			</td>
		</tr>

		<tr>
			<td>
				<label>ログインPASS：</label>
			</td>
			<td>
				<input type= "password" name= "loginPassword" value= "" />
			</td>
		</tr>

		<tr>
			<td>
				<label>ユーザー名：</label>
			</td>
			<td>
				<input type= "text" name= "userName" value= "" />
			</td>
		</tr>
		<s:submit value= "登録" />
	</s:form>
	</table>

	<span>前画面に戻る場合は</span><a href= '<s:url action= "HomeAction" />'>こちら</a>

</body>
</html>