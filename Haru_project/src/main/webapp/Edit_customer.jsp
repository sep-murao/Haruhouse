<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="kokyaku.EditBL_customer"%>
<%@page import= "kokyaku.Cmmon_customer"%>
<%@page import="java.sql.ResultSet"%>
    
<%   
     String ID =null;
     String CUST_KIND =null;
     String CORP_NAME =null;
     String CORP_NAME_KANA =null;
     String CUST_DEPARTMENT_NAME =null;
     String CUST_L_NAME =null;
     String CUST_F_NAME =null;
     String CUST_L_NAME_KANA =null;
     String CUST_F_NAME_KANA =null;
     String CUST_ZIP =null;
     String CUST_PREFECTURE =null;
     String CUST_ADDRESS1 =null;
     String CUST_ADDRESS2 =null;
     String CUST_TEL1 =null;
     String CUST_TEL2 =null;
     String CUST_TEL3 =null;
     String CUST_MOBILE1 =null;
     String CUST_MOBILE2 =null;
     String CUST_MOBILE3 =null;
     String CUST_MAIL =null;
     String errmsg ="";
     
     ResultSet rs1 = Cmmon_customer.CUST_KINDAll();
     ResultSet rs2 = Cmmon_customer.CUST_PREFECTURAll();
     
     
     
     if( (String)request.getAttribute("CUST_L_NAME")== null){
    	 ID = request.getParameter("ID");
    	 CUST_KIND= request.getParameter("CUST_KIND");
    	 CORP_NAME= request.getParameter("CORP_NAME");
    	 CORP_NAME_KANA= request.getParameter("CORP_NAME_KANA");
    	 CUST_DEPARTMENT_NAME= request.getParameter("CUST_DEPARTMENT_NAME");
    	 CUST_L_NAME = request.getParameter("CUST_L_NAME");
    	 CUST_F_NAME= request.getParameter("CUST_F_NAME");
    	 CUST_L_NAME_KANA= request.getParameter("CUST_L_NAME_KANA");
    	 CUST_F_NAME_KANA= request.getParameter("CUST_F_NAME_KANA");
    	 CUST_ZIP= request.getParameter("CUST_ZIP");
    	 CUST_PREFECTURE = request.getParameter("CUST_PREFECTURE");
    	 CUST_ADDRESS1= request.getParameter("CUST_ADDRESS1");
    	 CUST_ADDRESS2= request.getParameter("CUST_ADDRESS2");
    	 CUST_TEL1= request.getParameter("CUST_TEL1");
    	 CUST_TEL2= request.getParameter("CUST_TEL2");
    	 CUST_TEL3 = request.getParameter("CUST_TEL3");
    	 CUST_MOBILE1= request.getParameter("CUST_MOBILE1");
    	 CUST_MOBILE2= request.getParameter("CUST_MOBILE2");
    	 CUST_MOBILE3= request.getParameter("CUST_MOBILE3");
    	 CUST_MAIL= request.getParameter("CUST_MAIL");
      	 errmsg ="";
      	
      }else{
    	   ID = (String)request.getAttribute("ID");
    	   CUST_KIND = (String)request.getAttribute("CUST_KIND");
    	   CORP_NAME = (String)request.getAttribute("CORP_NAME");
    	   CORP_NAME_KANA = (String)request.getAttribute("CORP_NAME_KANA");
    	   CUST_DEPARTMENT_NAME = (String)request.getAttribute("CUST_DEPARTMENT_NAME");
    	   CUST_L_NAME = (String)request.getAttribute("CUST_L_NAME");
    	   CUST_F_NAME = (String)request.getAttribute("CUST_F_NAME");
    	   CUST_L_NAME_KANA = (String)request.getAttribute("CUST_L_NAME_KANA");
    	   CUST_F_NAME_KANA = (String)request.getAttribute("CUST_F_NAME_KANA");
    	   CUST_ZIP = (String)request.getAttribute("CUST_ZIP");
    	   CUST_PREFECTURE = (String)request.getAttribute("CUST_PREFECTURE");
    	   CUST_ADDRESS1 = (String)request.getAttribute("CUST_ADDRESS1");
    	   CUST_ADDRESS2 = (String)request.getAttribute("CUST_ADDRESS2");
    	   CUST_TEL1 = (String)request.getAttribute("CUST_TEL1");
    	   CUST_TEL2 = (String)request.getAttribute("CUST_TEL2");
    	   CUST_TEL3 = (String)request.getAttribute("CUST_TEL3");
    	   CUST_MOBILE1 = (String)request.getAttribute("CUST_MOBILE1");
    	   CUST_MOBILE2 = (String)request.getAttribute("CUST_MOBILE2");
    	   CUST_MOBILE3 = (String)request.getAttribute("CUST_MOBILE3");
    	   CUST_MAIL = (String)request.getAttribute("CUST_MAIL");
    	   errmsg= (String)request.getAttribute("errmsg");
         }
     
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>顧客変更入力</title>
</head>
<body>
<form action="EditBL_customer" method="Post">
<input type="hidden" name="ID" value=<%= ID %>>
<table>
   <tr><th>個人・法人区分 </th><td><select name="CUST_KIND">
	<option ></option>
	<%while(rs1.next()) {
	%>
	   <option value=<%=rs1.getString("CODE_BRANCH_NUM") %>><%=rs1.getString("CODE_NAME") %></option>
	<%}%>
   </select></td></tr>

   <tr><th>法人名</th><td><input type="text" name="CORP_NAME" value=<%=CORP_NAME%>></td></tr>
   <tr><th>法人名カナ</th><td><input type="text" name="CORP_NAME_KANA" value=<%=CORP_NAME_KANA%>></td></tr>
   <tr><th>部署</th><td><input type="text" name="CUST_DEPARTMENT_NAME"value=<%=CUST_DEPARTMENT_NAME %>></td></tr>
   <tr><th>姓</th><td><input type="text" name="CUST_L_NAME" value=<%=CUST_L_NAME%>></td></tr>
   <tr><th>名</th><td><input type="text" name="CUST_F_NAME" value=<%=CUST_F_NAME%>></td></tr>
   <tr><th>姓カナ</th><td><input type="text" name="CUST_L_NAME_KANA" value=<%=CUST_L_NAME_KANA%>></td></tr>
   <tr><th>名カナ</th><td><input type="text" name="CUST_F_NAME_KANA" value=<%=CUST_F_NAME_KANA%>></td></tr>
   <tr><th>郵便番号</th><td><input type="text" name="CUST_ZIP" value=<%=CUST_ZIP%>></td></tr>
   <tr><th>都道府県</th><td><select name="CUST_PREFECTURE">
   <option ></option>
   <%while(rs2.next()) {
   %>
   <option value=<%=rs2.getString("CODE_BRANCH_NUM") %>><%=rs2.getString("CODE_NAME") %></option>
   <%}%>
   </select></td></tr>
   
   <tr><th>住所</th><td><input type="text" name="CUST_ADDRESS1" value=<%=CUST_ADDRESS1%>></td></tr>
   <tr><th>建物名</th><td><input type="text" name="CUST_ADDRESS2" value=<%=CUST_ADDRESS2%>></td></tr>
   <tr><th>電話番号</th><td><input type="text" name="CUST_TEL1" value=<%=CUST_TEL1%>>-
   		   <input type="text" name="CUST_TEL2" value=<%=CUST_TEL2%>>-
   		   <input type="text" name="CUST_TEL3" value=<%=CUST_TEL3%>></td></tr>
   <tr><th>携帯番号</th><td><input type="text" name="CUST_MOBILE1" value=<%=CUST_MOBILE1%>>-
           <input type="text" name="CUST_MOBILE2" value=<%=CUST_MOBILE2%>>-
           <input type="text" name="CUST_MOBILE3" value=<%=CUST_MOBILE3%>></td></tr>
   <tr><th>メールアドレス</th><td><input type="text" name="CUST_MAIL" value=<%=CUST_MAIL%>></td></tr>
   <tr><th><input type="checkbox" name="CUST_MAIL_SEND_FLG"checked>退去立会終了後にメール送信</th></tr>
</table>
<input type="submit" value="確認">
</form>
<form method="POST" action="ListBL_customer" >
<input type="submit" value="一覧へ戻る"> 
</form>
<p><%=errmsg %></p>
</body>
</html>