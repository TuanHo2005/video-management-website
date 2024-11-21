<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>index</title>
<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath }">
</c:set>
<link href="${ctx}/css/style.css" rel="stylesheet">
<!-- Font Awesome for icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- Header -->
	<%@ include file="/Common/header.jsp"%>

	<!-- Hero Section -->
	<section class="hero-section d-flex align-items-center">
		<div class="container text-center">
			<h1 class="display-2 fw-bold mb-4">Welcome to ${sessionScope.user.fullname }</h1>
			<h3 class="mb-4">Unlimited movies, TV shows, and more. Watch
				anywhere. Cancel anytime.</h3>
		</div>
	</section>
	
	<section class="main_content container">
		<jsp:include page="${view}"></jsp:include>
	</section>
	
	
	
	<!-- footer -->
	<%@ include file="/Common/footer.jsp"%>
</body>
<!-- Custom JavaScript for Navbar Background -->
<script type="text/javascript" src="${ctx}/js/main.js"></script>

	<!-- Bootstrap 5 JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
