<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://kit.fontawesome.com/0316f9a1d0.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/front-sell-end/front-sell-bar.css">
<title>Insert title here</title>
</head>
<style>
</style>
<body>
<div id="sidebar">
        <div id="sidebar-nav">
            <ul>
                <li class="active"></li>
                <li><a href="#"><i class="fa fa-hotel"></i> 房間管理</a></li>
                <li><a href="#"><i class="fa fa-umbrella-beach"></i> 活動管理</a></li>
                <li><a href="#"><i class="fa fa-calendar-alt"></i> 期別管理</a></li>
                <li><a href="${pageContext.request.contextPath}/front-sell-end/foodspot/listAllFoodSpot.jsp"><i class="fa fa-utensils"></i> 美食與景點管理</a></li>
                <li><a href="${pageContext.request.contextPath}/front-sell-end/roomorderdetail/listAllRoomOrderDetail.jsp"><i class="fa fa-list-alt"></i> 房間訂單管理</a></li>
                <li><a href="#"><i class="fa fa-clipboard-list"></i> 活動訂單管理</a></li>
                <li><a href="#"><i class="fa fa-users"></i> 帳戶管理</a></li>
            </ul>
        </div>
    </div>
        <div id="header">
            <div class="white-label">
                <div class="nav-logo-image">
                    <img src="<%=request.getContextPath()%>/image/LOGO/logo.png" alt="SuperGoing">
                </div>
            </div>
            <div class="header-nav">

               <div class="nav" style="float:right">
                    <ul>
                        <li class="nav-settings">
                            <div class="font-icon"><i class="fa fa-tasks"></i></div>
                        </li>
                        <li class="nav-mail">
                            <div class="font-icon"><i class="fa fa-envelope-o"></i></div>
                        </li>
                        <li class="nav-calendar">
                            <div class="font-icon"><i class="fa fa-calendar"></i></div>
                        </li>
                        <li class="nav-chat">
                            <div class="font-icon"><i class="fa fa-comments-o"></i></div>
                        </li>
                        <li class="nav-profile">
                            <div class="nav-profile-image">
                                <img src="<%=request.getContextPath()%>/image/orange.jpg" alt="profile image">
                                <div class="nav-profile-name">USERS NAME<i class="fa fa-caret-down"></i></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            </div>

	

</body>
</html>