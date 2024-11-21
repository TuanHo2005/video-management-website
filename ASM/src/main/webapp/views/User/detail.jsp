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
<title>Movie Title - Backflix</title>
<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome for icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath}"></c:set>
<link href="${ctx}/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- Navbar -->

	<!-- Movie Info Section -->
	<section class="movie-info" style="margin-top: 20vh;">
		<!-- Thêm margin-top 100vh để đẩy xuống dưới -->
		<div class="container">
			<div class="row">
				<!-- Movie Details -->
				<div class="col-md-9">
					<h1 class="display-4">${vidbyid.title }</h1>
					<!-- Video Player Section -->
					<div class="mt-3">
						<!-- Video Container -->
						<div class="video-container">
							<iframe width="700" height="515"
								src="${vidbyid.href}"> </iframe>
						</div>

						<!-- Action Buttons Row -->
						<div class="d-flex align-items-center gap-3 mt-3">
							<h2 class="mb-1 mr-3">Watch video</h2>
							
							<span class="views-count"> <i class="fas fa-eye"></i> <span
									class="ms-1">${vidbyid.views}</span> Views
								</span>
							<!-- Like Button -->
							<button class="interaction-btn like-btn "
								onclick="toggleLike(this)">
								<i class="far fa-heart "></i> <span class="ms-1">Like</span>
							</button>

							<!-- Share Dropdown -->
							<div class="dropdown">
								<button class="interaction-btn" type="button"
									data-bs-toggle="dropdown">
									<i class="fas fa-share-alt"></i> <span class="ms-1">Share</span>
								</button>
								<ul class="dropdown-menu share-dropdown-menu">
									<li><a class="dropdown-item" href="#"> <i
											class="fas fa-envelope me-2"></i>Email
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Bootstrap 5 JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Custom JavaScript for Like functionality -->
	<script type="text/javascript" src="${ctx}/js/main.js"></script>
</body>
</html>