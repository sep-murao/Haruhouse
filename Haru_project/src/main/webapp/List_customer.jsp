<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="kokyaku.ListBL_customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>顧客管理</title>
</head>
<body>
<!--検索機能 -->
<form action="mainBL" method="Get">
個人・法人区分<select name="SearchCUST_KIND"></select>

法人名<input type="text" name="SearchCORP_NAME" >
法人名カナ<input type="text" name="SearchCORP_NAME_KANA" >
<p>顧客名<input type="text" name="SearchCUST_NAME" >		<!--メモ SELECT concat( CUST_L_NAME , CUST_F_NAME ) FROM `mst_customer` WHERE concat( CUST_L_NAME , CUST_F_NAME ) LIKE '%永健%' -->
顧客名カナ<input type="text" name="SearchCUST_NAME_KANA" >
郵便番号<input type="text" name="SearchCUST_ZIP" >
<p>都道府県<select name="SearchCUST_PREFECTURE"></select>

住所<input type="text" name="SearchCUST_ADDRESS1" >
建物名<input type="text" name="SearchCUST_ADDRESS2" >
<p>電話番号<input type="text" name="SearchCUST_TEL" >
携帯番号<input type="text" name="SearchCUST_MOBILE" >
メールアドレス<input type="text" name="SearchCUST_MAIL" >
<p>ステータス<select name="SearchSTATUS"></select></p>

<select name="SearchYear"></select>/<select name="SearchMonth"></select>/
<select name="SearchDay"></select>～

<select name="SearchYear2"></select>/<select name="SearchMonth2"></select>/
<select name="SearchDay2"></select>

<p><input type="submit" value="検索"id="">
   <input type="submit" value="リセット"id="">
</form>

<!--新規登録 -->
<form method="POST" action="Add.jsp" name="">
<input type="submit" value="新規登録" style="width:150px" id="">
</form>

<table border="2" style="border-collapse: collapse">
	<tr>
		<thcolspan="1"></th>
		<th>ステータス</th>
		<th>顧客名<p>顧客名カナ</p></th>
		<th>法人名<p>法人名カナ</p>th>
		<th>郵便番号<p>住所</p><p>建物名</p></th>
		<th>メールアドレス</th>
		<th>電話番号<p>携帯番号</p></th>
		<th>登録日<p>更新日</p></th>
	</tr>

</body>
</html>