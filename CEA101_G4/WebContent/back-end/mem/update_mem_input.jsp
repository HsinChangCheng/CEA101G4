<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.member.model.*"%>

<%
  MemberVO memVO = (MemberVO) request.getAttribute("memVO"); //EmpServlet.java (Concroller) 存入req的empVO物件 (包括幫忙取出的empVO, 也包括輸入資料錯誤時的empVO物件)
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title> 編號${memVO.mem_id}會員資料</title>

<style>
        body{
    		margin: 0px auto;
    		background-color:#ccc;
    	}
        table#table-1 {
	background-color: #ccc;
	margin: 0px atuo;
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

        table {
	width: 800px;
	background-color: #ccc;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 0.5px solid #fff;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: center;
	width: 50px;
}
th{
	white-space:nowrap;
}
</style>
</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h4>
					<a
						href="<%=request.getContextPath()%>/front-end/member/select_page.jsp"><img
						src="<%=request.getContextPath() %>/image/LOGO/tiger.png" width="50px" height="50px" border="0"></a>
				</h4>
			</td>
		</tr>
	</table>


	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post"
		ACTION="<%=request.getContextPath()%>/member/member.do" name="form1">
		<table>
			<tr>
				<td>會員編號:<font color=red><b>*</b></font></td>
				<td><%=memVO.getMem_id()%></td>
			</tr>
			<tr>
				<td>員工姓名:</td>
				<td><input type="TEXT" name="mem_name" size="45"
					value="<%=memVO.getMem_name()%>" disabled="disabled"/></td>
			</tr>
			<tr>
				<td>會員帳號:</td>
				<td><input type="TEXT" name="mem_account" size="45"
					value="<%=memVO.getMem_account()%>" disabled="disabled"/></td>
			</tr>
			<tr>
				<td>會員密碼:</td>
				<td><input name="mem_pwd" type="pwd"
					value="<%=memVO.getMem_pwd()%>" disabled="disabled" /></td>
			</tr>
			<tr>
				<td>會員生日:</td>
				<td><input type="TEXT" name="mem_birth" size="45" id="f_date1"
					value="<%=memVO.getMem_birth()%>"  disabled="disabled"/></td>
			</tr>
			<tr>
				<td>會員電話:</td>
				<td><input type="TEXT" name="mem_tel" size="45"
					value="<%=memVO.getMem_tel()%>" disabled="disabled"/></td>
			</tr>
			<tr>
				<td>會員地址:</td>
				<td><input type="TEXT" name="mem_address" size="45"
					value="<%=memVO.getMem_address()%>" disabled="disabled"/></td>
			</tr>

			<tr>
				<td>會員信箱:</td>
				<td><input type="TEXT" name="mem_mail" size="45"
					value="<%=memVO.getMem_mail()%>" disabled="disabled" /></td>
			</tr>

			<tr>
				<td>會員身份證字號:</td>
				<td><input type="TEXT" name="mem_id_number" size="45"
					value="<%=memVO.getMem_id_number()%>" disabled="disabled"/></td>
			</tr>

			<tr>
				<td>會員帳號狀態:</td>
				<td><input type="TEXT" name="mem_acc_status" size="45"
					value="<%=memVO.getMem_acc_status()%>" /></td>
			</tr>
			<tr>
				<td>會員性別:</td>
				<td><input type="TEXT" name="mem_gender" size="45"
					value="<%=memVO.getMem_gender()%>" disabled="disabled"/></td>
			</tr>

			<tr>
				<td>會員加入時間:</td>
				<td><input type="TEXT" name="mem_jointime" size="45" id="f_date2"
					value="<%=memVO.getMem_jointime()%>"  disabled="disabled"/></td>
			</tr>




			<%-- 	<jsp:useBean id="memSvc" scope="page" class="com.member.model.MemberService" /> --%>
			<!-- 	<tr> -->
			<!-- 		<td>部門:<font color=red><b>*</b></font></td> -->
			<!-- 		<td><select size="1" name="deptno"> -->
			<%-- 			<c:forEach var="deptVO" items="${memSvc.all}"> --%>
			<%-- 				<option value="${memVO.mem_id}" ${(empVO.deptno==deptVO.deptno)?'selected':'' } >${deptVO.dname} --%>
			<%-- 			</c:forEach> --%>
			<!-- 		</select></td> -->
			<!-- 	</tr> -->

		</table>
		<br> <input type="hidden" name="action" value="update"> <input
			type="hidden" name="mem_id" value="<%=memVO.getMem_id()%>"> <input
			type="submit" value="送出修改">
	</FORM>
</body>
<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>

<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '<%=memVO.getMem_birth()%>', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           startDate:'1911/01/01',	           // '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        $('#f_date2').datetimepicker({
            theme: '',              //theme: 'dark',
  	       timepicker:true,       //timepicker:true,
  	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
  	       format:'Y-m-d H:i:s',         //format:'Y-m-d H:i:s',
  		   value: '<%=memVO.getMem_jointime()%>', // value:   new Date(),
            //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
            startDate:'1911/01/01',	           // '2017/07/10',  // 起始日
            //minDate:               '-1970-01-01', // 去除今日(不含)之前
            //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
         });
        
   
        // ----------------------------------------------------------以下用來排定無法選擇的日期-----------------------------------------------------------

        //      1.以下為某一天之前的日期無法選擇
        //      var somedate1 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});

        
        //      2.以下為某一天之後的日期無法選擇
        //      var somedate2 = new Date('2017-06-15');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});


        //      3.以下為兩個日期之外的日期無法選擇 (也可按需要換成其他日期)
        //      var somedate1 = new Date('2017-06-15');
        //      var somedate2 = new Date('2017-06-25');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //        	  if (  date.getYear() <  somedate1.getYear() || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //		             ||
        //		            date.getYear() >  somedate2.getYear() || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});
        
</script>




</html>