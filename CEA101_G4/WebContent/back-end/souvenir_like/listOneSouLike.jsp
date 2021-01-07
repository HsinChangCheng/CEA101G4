<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.souvenir_product_like_record.model.*"%>

<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
	SouvenirProductLikeRecordVO souprVO = (SouvenirProductLikeRecordVO) request.getAttribute("souprVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<title>特產按讚 - listOneSouLike.jsp</title>

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

body {
	background-color: #E5E5E5;
	text-align: center;
	border-radius: 30px;
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
th, td {
	padding: 5px;
	text-align: center;
}

#table-1 {
	margin: auto;
	text-align: center;
	font-size: 14px;
}

#table-1 td {
	vertical-align: middle;
}

a {
	font-size: 15px;
	color: black;
}

a:hover {
	text-decoration: none;
	color: white;
}

a#local {
	font-size: 30px;
}

input.input-group-text:hover {
	opacity: 0.5;
}

font {
	color: green;
}

#pageselect {
	display: flex;
	flex-direction: row;
	justify-content: center;
}

table#table-1 {
	background-color: #888;
	text-align: center;
	border: solid black 2px;
	color:#fffde5;
}
table.table.table-dark.table-striped {
    background-color: #666;
    width:800px;
      position: fixed;
        left: 50%;
        transform: translateX(-50%);
        color:#fffde5;
}
</style>

</head>
<body bgcolor='white'>
	<div id="wrapper">
		<%@ include file="/back-end/back-index-sidebar.jsp"%>
		
		<div id="page-content-wrapper">
	<div class="container-fluid">
		<br>

		<table id="table-1">
			<tr>
				<td>
					<h3>特產按讚資料 - ListOneEmp.jsp</h3>
					<h4>
						<a href="/CEA101G4/back-end/souvenir_like/select_soulike_page.jsp">回首頁</a>
					</h4>
				</td>
			</tr>
		</table>
	</div>
	<table class="table table-dark table-striped">
		<tr>
			<td>特產編號</td>
			<td><%=souprVO.getSou_id()%></td>
		</tr>
		<tr>
			<td>會員編號</td>
			<td><%=souprVO.getMem_id()%></td>

		</tr>

	</table>
	</div>
	</div>

<!-- 		<tr> -->
<!-- 			<th>特產編號</th> -->
<!-- 			<th>特產類型</th> -->
<!-- 			<th>特產名稱</th> -->
<!-- 			<th>特產價格</th> -->
<!-- 			<th>特產上架日期</th> -->
<!-- 			<th>特產下架日期</th> -->
<!-- 			<th>特產累積按讚次數</th> -->
<!-- 			<th>特產敘述</th> -->
<!-- 			<th>特產商品狀態</th> -->



<!-- 		</tr> -->
<!-- 		<tr> -->
<%-- 			<td><%=soupVO.getSou_id()%></td> --%>
<%-- 			<td><%=soupVO.getSou_type_id()%></td> --%>
<%-- 			<td><%=soupVO.getSou_name()%></td> --%>
<%-- 			<td><%=soupVO.getSou_price()%></td> --%>
<%-- 			<td><%=soupVO.getSou_on_date()%></td> --%>
<%-- 			<td><%=soupVO.getSou_off_date()%></td> --%>
<%-- 			<td><%=soupVO.getSou_like_count()%></td> --%>
<%-- 			<td><%=soupVO.getSou_des()%></td> --%>
<%-- 			<td><%=soupVO.getSou_status()%></td> --%>


<!-- 		</tr> -->
<!-- 	</table> -->





</body>
</html>