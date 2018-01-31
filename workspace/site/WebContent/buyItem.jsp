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
	<title>BuyItem</title>

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

table {
	padding-top: 50px;
	margin: 0 auto;
    width: 400px;
}

table tr th,
table tr td {
    padding: 10px;
    border: 1px solid #DDD;
    vertical-align: middle;
}

table tr th {
	text-align: left;
    font-weight: bold;
}

table tr td {
	text-align: center;
}

/* DEMO 02 RADIO BUTTON */
.demo2 .label_list:nth-of-type(1) label input[type="radio"] + span::before {
  border-color: #4caf50;
}
.demo2 .label_list:nth-of-type(2) label input[type="radio"] + span::before {
  border-color: #ff5722;
}
.demo2 label span {
  display: inline-block;
}
.demo2 label input[type="radio"] {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}
.demo2 label input[type="radio"] + span::before {
  position: absolute;
  display: inline-block;
  content: '';
  box-sizing: border-box;
  border-radius: 22px;
}
.demo2 label input[type="radio"] + span::before {
  z-index: 0;
  top: 0;
  left: 0;
  background-color: transparent;
  width: 22px;
  height: 22px;
  border: 2px #78909c solid;
}
.demo2 label input[type="radio"]:checked + span::before {
  border-width: 6px;
}



input[type="radio"] {
  margin: 0;
  padding: 0;
  background: none;
  border: none;
  border-radius: 0;
  outline: none;
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
}

body {
  margin: 0;
  min-width: 320px;
  font-family: 'Noto Sans Japanese', '游ゴシック体', 'Yu Gothic', YuGothic, 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku Gothic Pro', 'メイリオ', 'Meiryo', sans-serif;
  color: #616161;
  font-weight: lighter;
}


input[type="radio"]{
  position: relative;
  padding: 0 30px 0 35px;
}

input[type="radio"]::before {
  border-color: #4caf50;
}
input[type="radio"]::before {
  border-color: #ff5722;
}

label input[type="radio"] {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}
label input[type="radio"] + span::before {
  position: absolute;
  display: inline-block;
  content: '';
  box-sizing: border-box;
  border-radius: 22px;
}
label input[type="radio"] + span::before {
  z-index: 0;
  top: 0;
  left: 0;
  background-color: transparent;
  width: 22px;
  height: 22px;
  border: 2px #78909c solid;
}
input[type="radio"]:checked + span::before {
  border-width: 6px;
}

.submit {
    padding: 0.3em 1em;
    text-decoration: none;
    color: #67c5ff;
    border: solid 0.4px #67c5ff;
    border-radius: 3px;
    transition: .2s;
    background-color: white;
}

.submit:hover {
    background: #67c5ff;
    color: white;
}

select {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  border-radius: 0;
  border: 0;
  margin: 0;
  padding: 10;
  background: none transparent;
  vertical-align: middle;
  font-size: inherit;
  color: inherit;
  box-sizing: content-box;
}

.button {
	margin: 0 auto;
	width: 400px;
	height: 50px;
	margin-top: 20px;

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
	<header>商品購入</header>

	<s:form action= "BuyItemAction">
		<table class= "table">
			<tr>
				<th>
					<span>商品名：</span>
				</th>
				<td>
					<s:property value= "session.buyItem_name" /><br>
				</td>
			</tr>

			<tr>
				<th>
					<span>値段：</span>
				</th>
				<td>
					<s:property value= "session.buyItem_price" /><span>円</span>
				</td>
			</tr>

			<tr>
				<th>
					<span>購入個数：</span>
				</th>
				<td>
					<select name= "count">
						<option value= "1" selected= "selected">1</option>
						<option value= "2">2</option>
						<option value= "3">3</option>
						<option value= "4">4</option>
						<option value= "5">5</option>
					</select>
				</td>
			</tr>

			<tr>
				<th>
					<span>支払い方法：</span>
				</th>
				<td>
					<input type= "radio" name= "pay" value= "1" checked= "checked">現金払い
					<input type= "radio" name= "pay" value= "2">クレジットカード
				</td>
			</tr>
					<s:submit cssClass= "submit" value= "購入" /></table>


		<div class= "button"><a href='<s:url action= "GoHomeAction" />' class= "page">戻る</a>
		<a href='<s:url action="MyPageAction" />' class= "page">マイページ</a></div>

	</s:form>



</body>
</html>