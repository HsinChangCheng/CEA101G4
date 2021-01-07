<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>RoomOrderDetail: Home</title>

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
   <tr><td><h3>RoomOrderDetail: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for RoomOrderDetail: Home</p>

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
  <li><a href='/CEA101G4/front-sell-end/roomorderdetail/listAllRoomOrderDetail.jsp'>List</a> all Roomorderdetail.  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/roomorderdetail/roomorderdetail.do " >
        <b>輸入房間訂單明細編號 (如RO001):</b>
        <input type="text" name="room_order_id">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="rodSvc" scope="page" class="com.roomorderdetail.model.RoomOrderDetailService" />
   
  <li>
         
       <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/roomorderdetail/roomorderdetail.do" >
       <b>選擇訂單編號:</b>
       <select size="1" name="room_order_id">
         <c:forEach var="rodVO" items="${rodSvc.all}" > 
          <option value="${rodVO.room_order_id}">${rodVO.room_order_id}
         </c:forEach>   
       </select>
       
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/roomorderdetail/roomorderdetail.do" >
       <b>選擇房間編號:</b>
       <select size="1" name="room_order_id">
         <c:forEach var="rodVO" items="${rodSvc.all}" > 
          <option value="${rodVO.room_order_id}">${rodVO.room_id}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>


<h3>新增訂單</h3>

<ul>
  <li><a href="<%=request.getContextPath()%>/front-sell-end/roomorderdetail/addRoomOrderDetail.jsp">Add</a> a new RoomOrderDetail.</li>
</ul>

</body>
</html>