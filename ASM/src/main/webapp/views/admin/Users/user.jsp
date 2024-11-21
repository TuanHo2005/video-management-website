<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>UserManagement</title>
<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<c:set var="ctx"
	value="${pageContext.request.servletContext.contextPath }">
</c:set>
<c:url var="url" value="/user/crud"/>
<link href="${ctx}/css/user.css" rel="stylesheet">
<!-- Font Awesome for icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-4">
		<!-- Tabs for User Edition and User List -->
		<div class="tab-custom">
			<ul class="nav nav-tabs" id="userTab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="user-edition-tab" data-bs-toggle="tab" href="#user-edition"
					role="tab">User Edition</a></li>
			</ul>
			<div class="tab-content" id="userTabContent">
				<!-- User Edition Tab -->
				<div class="tab-pane fade show active" id="user-edition"
					role="tabpanel">
					<div class="form-section mt-3">
						<form method="post">
						
						<div class="col-md-6">
									<label for="fullname" class="form-label">Fullname</label> 
									 <input type="text" class="form-control" name="fullname" id="fullname" value="${user.fullname}">
								</div>
						
							

								<div class="col-md-6">
									<label for="password" class="form-label">Password</label>  
									<input type="password" class="form-control" name="password" id="password" value="${user.password}"><br>
								</div>

							
							
							
									
								<div class="col-md-6">
									<label for="email" class="form-label">Email Address</label>
									<input type="email" class="form-control" name="email" id="email" value="${user.email}">
								</div>				
							
							
							
								<div class="col-md-6">
									 <input type="radio" name="admin" value="true" ${user.admin ? 'checked' : ''}> Admin
        							 <input type="radio" name="admin" value="false" ${!user.admin ? 'checked' : ''}> Nhân viên
								</div>
							
							
							
								<div class="col-md-6">
									<input type="hidden" name="id" id="id" value="${user.id}">
								</div>
							
							
							

								    <button type="submit"  class="btn btn-update me-2" formaction="${url}/update">Update</button>
        							<button type="submit"  class="btn btn-delete me-2" formaction="${url}/delete">Delete</button>
        							<button type="submit"  class="btn btn-reset bg-info" formaction="${url}/reset">Reset</button>
							
						</form>
					</div>
				</div>


				<div class="table-container mt-3">
					<h3>List User</h3>
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
							
								
								<th>Fullname</th>
								<th>Password</th>
								<th>Email</th>
								<th>Role</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="u" items="${users}">
								<tr>
									
									
									<td>${u.fullname}</td>
									<td>${u.password}</td>
									<td>${u.email}</td>
									<td>${u.admin ? 'Admin' : 'Nhân viên'}</td>
									<td><a href="${url}/edit/${u.id}">Edit</a></td>
								</tr>
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
