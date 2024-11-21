<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath }">
</c:set>
	<!-- Trending Section -->
	<section class="py-5">
			<h2 class="mb-4">List video</h2>
			<div class="row g-4" id="video-list">
				<c:forEach var="video" items="${vidlist}">
					<!-- Movie Cards -->

					<div class="col-6 col-md-4">
						<div class="movie-card">
							<img src="${ctx}/images/${video.poster}" class="img-fluid rounded"
								alt="Movie">
							<!-- Card Title and Views aligned horizontally -->
							<div
								class="d-flex justify-content-between align-items-center mb-2">
								<h6 class="card-title mb-0">
								<a href="${ctx}/detailvid/${video.id}">${video.title}</a>
								
								</h6>
								<span class="views-count"> <i class="fas fa-eye"></i> <span
									class="ms-1">${video.views}</span> Views
								</span>
							</div>
						</div>
					</div>
				</c:forEach>

				<!-- Nút điều hướng -->
				<div class="d-flex justify-content-between mt-4">
					<button class="btn btn-outline-secondary"
						onclick="loadPreviousPage()">Back</button>
					<button class="btn btn-outline-secondary" onclick="loadNextPage()">Next</button>
				</div>
			</div>
	</section>


