<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf8"%>
<%@ page import="com.faq.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
FAQVO faqVO = (FAQVO) request.getAttribute("faqVO"); //EmpServlet.java(Concroller), 存入req的faqVO物件
%>

<html>
<head>
<title>問與答 - listOneFAQ.jsp</title>

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
  img{
  width:100px;
  height:auto;
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
	<tr><td>
		 <h3>美食與景點資料 - ListOneFAQ.jsp</h3>
		 <h4><a href="/CEA101G4/back-end/faq/select_page.jsp">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>問與答編號</th>
		<th>問答提問</th>
		<th>問答解答</th>
		
			
		
	</tr>
	<tr>
		<td><%=faqVO.getFaq_id()%></td>
		<td><%=faqVO.getFaq_question()%></td>
		<td><%=faqVO.getFaq_answer()%></td>
	</tr>
</table>

</body>
</html>