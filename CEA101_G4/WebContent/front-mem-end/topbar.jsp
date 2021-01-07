<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/0316f9a1d0.js" crossorigin="anonymous"></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/front-mem-end/topbar.css">
    
   
<title>Insert title here</title>
</head>
<body>
 <div class="container" id="topcontainer">
        <nav class="navbar navbar-expand-lg bg-light navbar-light justify-content-center" id="topbar">
            <a class="navbar-brand" href="#">
                <img src="<%=request.getContextPath()%>/image/LOGO/logo.png" alt="SuperGoing" id="logo">
            </a>
            <div class="ul" id="topul">
                <ul class="navbar-nav">
                    <li class="nav-item" id="active">
                        <a class="nav-link" href="#">住宿</a>
                    </li>
                    <li class="nav-item" id="active">
                        <a class="nav-link" href="#">體驗</a>
                    </li>
                    <li class="nav-item" id="active">
                        <a class="nav-link" href="#">伴手禮</a>
                    </li>
                    <li class="nav-item" id="active">
                        <a class="nav-link" href="#">加入平台</a>
                    </li>
                    <div id="account">
                        <a href="#">
                            <i class="fas fa-bars 4x" id="list"></i>
                            <i class="far fa-user-circle fa-2x" id="user"></i>
                        </a>
                    </div>
                </ul>
            </div>
        </nav>
        </div>

</body>
</html>