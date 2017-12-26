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
	<title>Home画面</title>

	<style type= "text/css">
		body {
			color: black;
		}

		.line {
			border-bottom: 1px solid black;

		}

	</style>
</head>

<body>

	<div class= "line">
	<p>BuyItemConfirm</p>
	</div>

	<s:form>
		<tr>
			<td>商品名</td>
			<td><s:property value= "session.buyItem_name" /></td>
		</tr>

		<tr>
			<td>個数</td>
			<td><s:property value= "session.buyItem_price" /></td>
		</tr>

		<tr>
			<td>購入個数</td>
			<td><s:property value= "session.count" /></td>
		</tr>

		<tr>
			<td>支払い方法</td>
			<td><s:property value= "session.pay" /></td>
		</tr>

		<tr>
			<td>
				<br>
			</td>
		</tr>

		<tr>
			<td><input type= "button" value= "戻る" onclick= "submitAction ('HomeAction')" /></td>
			<td><input type= "button" value= "完了" onclick= "submitAction ('BuyItemConfirmAction')" /></td>
		</tr>
	</s:form>
</body>
</html>