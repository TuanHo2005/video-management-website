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
<title>Netflix Clone</title>
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
<style>
	.custom-title {
    margin-top: 100px;  /* Điều chỉnh giá trị tùy ý để tăng hoặc giảm khoảng cách */
}
</style>
<body>
    <!-- Header -->
   <%@ include file="/Common/header.jsp"%>

    <!-- Hero Section -->
    <section class="text-center my-5">
        <div class="container">
            <h1 class="display-4 custom-title">My Favorite Videos</h1>
        </div>
    </section>

    <!-- Favorites Section -->
    <section class="py-5">
        <div class="container">
            <h2 class="mb-4">List video Favorites</h2>
            <div class="row g-4" id="video-favorites">
                <!-- Video Card 1 -->
                
               <div class="col-6 col-md-4 ">
					<div class="movie-card">
						<img src="${ctx}/images/video1.jpg" class="img-fluid rounded"
							alt="Movie">
						<h6>title video</h6>
						<div class="mb-4 d-flex align-items-center gap-2">
							<button class="interaction-btn like-btn w-auto"
								onclick="toggleLike(this)">
								<i class="far fa-heart"></i> <span class="ms-1">Like</span>
							</button>

							<div class="dropdown">
								<button class="interaction-btn" type="button"
									data-bs-toggle="dropdown">
									<i class="fas fa-share-alt"></i> <span class="ms-1">Share</span>
								</button>
								<ul class="dropdown-menu share-dropdown-menu">
									<li><a class="dropdown-item" href="#"><i
											class="fas fa-envelope me-2"></i>Email</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
          
                <!-- Add more video cards as needed -->
            </div>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="/Common/footer.jsp"%>
    
   
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
