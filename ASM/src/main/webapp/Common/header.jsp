<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath }">
</c:set>
<!-- Navbar -->
<nav
	class="navbar navbar-expand-lg navbar-dark navbar-backflix fixed-top">
	<div class="container-fluid">
		<a class="backflix-logo" href="${ctx}/indexvid">BACKFLIX</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link active" href="#">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Forgot
						Password</a></li>
				<li class="nav-item"><a class="nav-link" href="#">My
						favorite</a></li>
				<c:if test="${sessionScope.user != null && sessionScope.user.admin}">
					<li class="nav-item"><a class="nav-link nav-link-1"
						href="${ctx}/user/crud/index">Statistical</a></li>
				</c:if>

			</ul>
			<button class="btn btn-outline-light me-2	"
				onclick="window.location.href='${ctx}/indexLogin'">Log In</button>
			<button class="btn btn-outline-light"
				onclick="window.location.href='${ctx}/indexSignup'">Sign Up</button>

		</div>
	</div>
</nav>
