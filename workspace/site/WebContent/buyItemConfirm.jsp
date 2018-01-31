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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>BuyItemConfirm</title>

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
	<header>商品購入確認</header>

	<s:form>
		<tr>
			<td>商品名</td>
			<td><s:property value= "session.buyItem_name" /></td>
		</tr>

		<tr>
			<td>値段</td>
			<td><s:property value= "session.total_price" /><span>円</span></td>
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
			<td><input type= "button" value= "戻る" onclick= "submitAction ('HomeAction')" /></td>
			<td><input type= "button" value= "完了" onclick= "submitAction ('BuyItemConfirmAction')" /></td>
		</tr>
	</s:form>



</body>
</html>