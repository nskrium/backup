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
	<title>m(_ _)m Error Page,,,</title>

		<style type="text/css">

	body {
		background: linear-gradient(-45deg, red, orange, yellow, green, blue, indigo, violet);
		color: white;
	}
	</style>

</head>

<body>
	<h1>エラーが発生しました。</h1>
	<p>恐れ入りますが、<a href= '<s:url action= "HomeAction" />'>ログイン</a>からやり直してください。</p>
</body>
</html>