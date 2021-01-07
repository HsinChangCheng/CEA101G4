<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.room.model.*"%>

<%
	RoomVO roomVO = (RoomVO) request.getAttribute("roomVO");
%>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/front-sell-end/front-sell-listAllRoom.css">
	<title>房間資料新增 - addRoom.jsp</title>
</head>
<body>
	<div id="viewport">
	    <%@ include file="/front-sell-end/sellMemSideBar.jsp"%>
	    <div id="content">
	        <%@ include file="/front-sell-end/sellNavBar.jsp"%>
			<div class="container-fluid" style="padding: 0;">
				<div class="container">
					<h1>新增房間</h1>
					<c:if test="${not empty errorMsgs}">
						<div class="container">
							<div class="alert alert-danger" role="alert">
								<strong>新增失敗，請修正以下錯誤:</strong>
								<ul>
								<c:forEach var="message" items="${errorMsgs}">
									<li>${message}
								</c:forEach>
								</ul>
							</div>
						</div>
					</c:if>

                    <form class="form-horizontal" method="POST" action="<%=request.getContextPath()%>/room/room.do">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="roomName">房間名稱:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="roomName" name="roomName" value='${empty roomVO ? "" : roomVO.roomName}' /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="roomPrice">民宿價格/天:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="roomPrice" name="roomPrice" value='${empty roomVO ? "" : roomVO.roomPrice}' />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="roomCapacity">可容納人數:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="roomCapacity" name="roomCapacity" value='${empty roomVO ? "" : roomVO.roomCapacity}' />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="roomDes">民宿介紹:</label>
                            <div class="col-sm-5">
                                <textarea class="form-control" id="roomDes" name="roomDes" rows="7">${empty roomVO ? "" : roomVO.roomDes}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">上架狀態:</label>
                            <div class="col-sm-5" style="padding: 7px;">
                                <input type="radio" id="roomSta0" name="roomStatus" value='0' ${empty roomVO ? "selected" : "" } />
                                <label for="roomSta0">下架     </label>
                                <input type="radio" id="roomSta1" name="roomStatus" value='1' ${roomVO.roomStatus == 1 ? "selected" : "" } />
                                <label for="roomSta1">上架   </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-7 col-sm-offset-6">
								<input type="hidden" name="sellMemId" value="${sellVO.sellMemId}">
								<input type="hidden" name="action" value="insert">
                                <button type="submit" class="btn btn-primary" id="nextStep">下一步</button>
                            </div>
                        </div>
                    </form>
            	</div>
			</div>
		</div>
	</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

</body>

</html>