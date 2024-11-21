<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>video management</title>
<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath }">
</c:set>
<c:url var="url" value="/vid/crud"/>
<link href="${ctx}/css/home.css" rel="stylesheet">
<!-- Font Awesome for icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-4">
		<!-- Tabs for Video Edition and Video List -->
		<div class="tab-custom">
			<ul class="nav nav-tabs" id="videoTab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="video-edition-tab" data-bs-toggle="tab" href="#video-edition"
					role="tab">Video Edition</a></li>
			</ul>
			<div class="tab-content" id="videoTabContent">
				<!-- Video Edition Tab -->
				<div class="tab-pane fade show active" id="video-edition"
					role="tabpanel">
					<div class="form-section mt-3">
						<div class="row">
							<div class="col-md-4 text-center">
								<div class="poster">${video.poster}</div>
							</div>
							<div class="col-md-8">
								<form method="post">
									<div class="mb-3">
										<label for="id" class="form-label">YouTube ID</label> 
										<input type="text" class="form-control" name="id" id="id" value="${video.id}">
									</div>
									<div class="mb-3">
										<label for="title" class="form-label">Video Title</label>
										<input type="text" class="form-control" name="title" id="title" value="${video.title}">
									</div>
									<div class="mb-3">
										<label for="views" class="form-label" >View Count</label>
										 <input type="text" class="form-control" name="views" id="views"  value="${video.views}" readonly="readonly">
									</div>

									<div class="mb-3">
										 <input type="radio" name="active" value="true" ${video.active ? 'checked' : ''}> Active
        							 <input type="radio" name="active" value="false" ${!video.active ? 'checked' : ''}> Inactive
									</div>

									<div class="mb-3">
										<label for="description" class="form-label">Description</label>
										<textarea class="form-control" name="description" id="description" rows="3">"${video.description}"</textarea>
									</div>
									<div>
										 <button type="submit"  class="btn btn-custom" formaction="${url}/create">Create</button>
										 <button type="submit"  class="btn btn-custom" formaction="${url}/update">Update</button>
										 <button type="submit" class= "btn btn-custom"   formaction="${url}/delete">delete</button>
										 <button type="submit" class= "btn btn-custom"   formaction="${url}/reset">reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="table-container mt-3">
					<h3>ListVideo</h3>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>YouTube ID</th>
								<th>Video Title</th>
								<th>View Count</th>
								<th>Status</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="vd" items="${videos}">
							<tr>
								<td>${vd.id}</td>
								<td>${vd.title}</td>
								<td>${vd.views}</td>
								<td>${vd.active ? 'Active' : 'Inactive'}</td>
								<td><a href="${url}/edit/${vd.id}">Edit</a></td>
							</tr>
							<!-- Add more rows as needed -->
							</c:forEach>
						</tbody>
					</table>



				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
