<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "s" uri= "/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>UserCreateConfirm</title>
</head>

<body>
	<p>UserCreateConfirm</p>

	<h3>登録する内容は以下でよろしいですか？</h3>
	<table>
		<s:form action= "UserCreateCompleteAction">
			<tr>
				<td>
					<label>ログインID：</label>
				</td>
				<td>
					<s:property value= "loginUserID" escape= "false" />
				</td>
			</tr>

			<tr>
				<td>
					<label>ログインPASS：</label>
				</td>
				<td>
					<s:property value= "loginPassword" escape= "false" />
				</td>
			</tr>

			<tr>
				<td>
					<label>ユーザー名：</label>
				</td>
				<td>
					<s:property value= "userName" escape= "false" />
				</td>
			</tr>

			<tr>
				<td>
					<s:submit value= "完了" />
				</td>
			</tr>
		</s:form>

	</table>

</body>
</html>