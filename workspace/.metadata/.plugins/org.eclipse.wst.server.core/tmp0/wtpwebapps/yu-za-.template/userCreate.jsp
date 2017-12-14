<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>UserCreate画面</title>

</head>
<body>

	<s:if test= "errorMessage != ''" >
		<s:property value= "errorMassage" escape= "false" />
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
					<label>ログインpass：</label>
				</td>
				<td>
					<input type= "text" name= "loginPassword" value= "" />
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

	前画面に戻る場合は
	<a href= ' <s:url action= "HomeAction" />'>こちら</a>


</body>
</html>