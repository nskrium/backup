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
	<title>UserCreateConfirm</title>
		<style type="text/css">

header {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 70px;
	font-size: 25px;
	padding-left: 30px;
	line-height: 60px;
	color: white;
	background-color: black;
}


body {
  margin: 0;
  min-width: 320px;
  font-family: 'Noto Sans Japanese', '游ゴシック体', 'Yu Gothic', YuGothic, 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku Gothic Pro', 'メイリオ', 'Meiryo', sans-serif;
  color: #616161;
  font-weight: lighter;
}


.page{
    display: inline-block;
    padding: 0.25em 0.5em;
    text-decoration: none;
    color: white;
    background: #3B3640;
    transition: .2s;
  }

.page:hover {
    background: #67c5ff;
    color: white;
}
	</style>
</head>

<body>
	<header>新規登録確認</header>

	<h3>登録する内容は以下でよろしいですか？</h3>
	<table>
		<s:form action= "UserCreateCompleteAction">
			<tr>
				<td>
					<label>ログインID：</label>
				</td>
				<td>
					<s:property value= "loginUserId" escape= "false" />
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