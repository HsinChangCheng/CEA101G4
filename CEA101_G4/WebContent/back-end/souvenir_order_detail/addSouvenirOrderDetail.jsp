<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.souvenir_order_detail.model.*"%>

<%
  SouvenirOrderDetailVO sodVO = (SouvenirOrderDetailVO) request.getAttribute("sodVO");
%>
<%= sodVO==null %>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>特產訂單明細資料新增 - addSouvenir_Order_Detail.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 600px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>特產訂單資料新增 - addSouvenirOrderDetail.jsp</h3></td><td>
		 <h4><a href="/CEA101G4/back-end/souvenir_order_detail/select_page.jsp"><img src="images/pikachu.jpg" width="100" height="100" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>資料新增:</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/souvenir_order_detail/souvenir_order_detail.do" name="form2">
<table>
	<jsp:useBean id="soSvc" scope="page" class="com.souvenir_order.model.SouvenirOrderService" />
	<tr>
		<td>產品訂單編號:<font color=red><b>*</b></font></td>
		<td><select size="1" name="sou_order_id">
			<c:forEach var="soVO" items="${soSvc.all}">
				<option value="${soVO.sou_order_id}" ${(sodVO.sou_order_id==soVO.sou_order_id)? 'selected':'' } >${soVO.sou_order_id}
			</c:forEach>
		</select></td>
	</tr>
	<tr>
		<td>產品編號:</td>
		<td><input type="TEXT" name="sou_id" size="45"
			 value="<%= (sodVO==null)? "SOU003" : sodVO.getSou_id()%>" /></td>
	</tr>
		<td>產品價格:</td>
		<td><input type="TEXT" name="sou_order_amount" size="45"
			 value="<%= (sodVO==null)? "55" : sodVO.getSou_order_amount()%>" /></td>
	</tr>
	<tr>
		<td>產品數量:</td>
		<td><input type="TEXT" name="sou_price" size="45"
			 value="<%= (sodVO==null)? "10" : sodVO.getSou_price()%>" /></td>
	</tr>

</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="送出新增"></FORM>
</body>
</html>