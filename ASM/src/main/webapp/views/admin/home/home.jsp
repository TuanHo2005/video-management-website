<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath }">
</c:set>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration Tool</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom style for navbar */
        .navbar-custom {
            background-color: #000; /* Màu nền đen */
            border-radius: 10px;
            padding: 10px 20px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.5); /* Đổ bóng */
        }
        .navbar-custom .navbar-brand {
            color: #FF0000; /* Màu chữ đỏ cho tên thương hiệu */
            font-weight: bold;
            font-size: 1.2rem;
        }
        .navbar-custom .nav-link {
            color: #ADFF2F; /* Màu xanh lá cho các liên kết */
            font-weight: bold;
        }
        .navbar-custom .nav-link:hover {
            color: #FFF; /* Màu trắng khi di chuột */
        }
    </style>
</head>
<body>
	
		
	
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="${ctx }/indexvid">BackFlix admin</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ctx }/vid/crud/index">Videos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${ctx }/user/crud/index">Users</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Reports</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br>
		<header class="abc-header text-center">
        <h1>Trang quản trị</h1>
    </header>
    
    <main class="abc-main container mt-4">
        <jsp:include page="${view}"/>
    </main>		
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

