<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>IBM EmpAuth: Home</title>

<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
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

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>EmpAuth: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for Emp: Home</p>

<h3>資料查詢:</h3>
	
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='<%=request.getContextPath()%>/back-end/emp_auth/listAllEmpAuth.jsp'>List</a> all empAuths.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/emp_auth/emp_auth.do" >
        <b>輸入員工編號 (如EMP001):</b>
        <input type="text" name="emp_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="empAuthSvc" scope="page" class="com.emp_auth.model.EmpAuthService" />
   
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/emp_auth/emp_auth.do" >
       <b>選擇員工編號:</b>
       <select size="1" name="emp_id">
         <c:forEach var="empAuthVO" items="${empAuthSvc.all}" > 
          <option value="${empAuthVO.emp_id}">${empAuthVO.emp_id}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>

</ul>


<h3>會員管理</h3>

<ul>
  <li><a href='<%=request.getContextPath()%>/back-end/emp_auth/addEmpAuth.jsp'>Add</a> a new emp.</li>
</ul>

</body>
</html>