<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.sell.model.*"%>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" />
    
	<title>民宿會員資料修改</title>
	<style>
            button {
                float: right;
            }
	</style>
</head>
<body>
	<div id="viewport">
	    <%@ include file="/front-sell-end/sellMemSideBar.jsp"%>
	    <div id="content">
	        <%@ include file="/front-sell-end/sellNavBar.jsp"%>
			<div class="container-fluid" style="padding: 0;">
				<div class="container">
					<h1>民宿會員資料修改</h1>
					<c:if test="${not empty errorMsgs}">
						<div class="container">
							<div class="alert alert-danger" role="alert">
								<strong>更新失敗，請修正以下錯誤:</strong>
								<ul>
								<c:forEach var="message" items="${errorMsgs}">
									<li>${message}
								</c:forEach>
								</ul>
							</div>
						</div>
					</c:if>

                    <form class="form-horizontal" method="POST" action="<%=request.getContextPath()%>/sell/sell.do">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sellMemName">民宿會員姓名:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="sellMemName" name="sellMemName" value="${sellVO.sellMemName}" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sellMemTel">手機號碼:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="sellMemTel" name="sellMemTel" value="${sellVO.sellMemTel}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sellMemMail">E-mail:</label>
                            <div class="col-sm-5">
                                <input type="email" class="form-control" id="sellMemMail" name="sellMemMail" value="${sellVO.sellMemMail}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sellRoomName">民宿名稱:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="sellRoomName" name="sellRoomName" value="${sellVO.sellRoomName}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sellMemAddress">民宿地址:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="sellMemAddress" name="sellMemAddress" value="${sellVO.sellMemAddress}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-7">
								<input type="hidden" name="sellMemId" value="${sellVO.sellMemId}">
								<input type="hidden" name="action" value="updateInfo">
                                <button type="submit" class="btn btn-default">送出修改</button>
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