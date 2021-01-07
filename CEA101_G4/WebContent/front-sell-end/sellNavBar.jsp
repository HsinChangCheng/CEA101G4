<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.sell.model.*"%> 
<% 
	SellVO sellVO = (SellVO) request.getAttribute("sellVO"); 
	pageContext.setAttribute("sellVO", sellVO);
%>
<nav class="navbar navbar-default bg-light">
    <div class="navbar-expand-lg ml-auto">
        <ul class="nav navbar-nav">
            <li class="nav-item active">
            	<a class="nav-link" href="#">
            		<i class="zmdi zmdi-notifications text-danger"></i>
                </a>
            </li>
            <li class="nav-item active">
            	<a class="nav-link" href='<%=request.getContextPath()%>/sell/sell.do?action=sellMemLogout'>${ not empty sellVO ? sellVO.sellMemName: "User" }</a>
            </li>
        </ul>
    </div>
</nav>