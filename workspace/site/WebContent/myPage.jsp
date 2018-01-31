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
	<title>MyPage</title>
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
	<header>マイページ</header>


		<s:form action= "MyPageAction">
			<input type= "hidden" name= "deleteFlg" value= "1">
			<s:submit value = "削除" method= "delete" />
		</s:form>

	<s:if test= "myPageList == null">
		<h3>ご購入情報はありません。</h3>
	</s:if>

	<s:elseif test= "message == null">
		<h3>ご購入情報は以下になります。</h3>
		<table>
		<tr>
			<th>商品名</th>
			<th>値段</th>
			<th>購入個数</th>
			<th>支払い方法</th>
			<th>購入日</th>
		</tr>

		<s:iterator value= "myPageList">
			<tr>
				<td><s:property value= "itemName" /></td>
				<td><s:property value= "totalPrice" /></td>
				<td><s:property value= "totalCount" /></td>
				<td><s:property value= "payment" /></td>
				<td><s:property value= "insert_date" /></td>
			</tr>
		</s:iterator>
		</table>

		</s:elseif>



	<s:if test= "message != null">
		<h3><s:property value= "message" /></h3>
	</s:if>

	<p>Homeへ戻る場合は<a href= '<s:url action= "GoHomeAction" />'>こちら</a></p>
	<p>ログアウトする場合は<a href= '<s:url action= "LogoutAction" />'>こちら</a></p>

</body>
</html>