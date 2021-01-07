<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.authorization.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
	AuthorizationVO authorizationVO = (AuthorizationVO) request.getAttribute("authorizationVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<html>
<head>
<title>員工資料 - listOneAuthorization.jsp</title>

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
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body bgcolor='white'>

	<h4>此頁暫練習採用 Script 的寫法取值:</h4>
	<table id="table-1">
		<tr>
			<td>
				<h3>員工資料 - ListOneAuthorization.jsp</h3>
				<h4>
					<a href="<%=request.getContextPath()%>/back-end/authorization/select_page.jsp"><img
						src="images/back1.gif" width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>權限編號</th>
			<th>權限名稱</th>

		</tr>
		<tr>
			<td>${authorizationVO.func_id}</td>
			<td>${authorizationVO.func_name}</td>
		</tr>
	</table>

</body>
</html>