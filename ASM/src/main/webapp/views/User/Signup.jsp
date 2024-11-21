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
<title>Register - Netflix Clone</title>
<!-- Bootstrap 5 CSS -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    rel="stylesheet">
<!-- Custom CSS -->
<c:set var="ctx"
    value="${pageContext.request.servletContext.contextPath }">
    
</c:set>
<c:url var="url" value="/signup/crud/"/>
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
   

    <!-- Hero Section -->
    <section class="text-center my-5">
        <div class="container">
            <h1 class="display-4 custom-title">Register</h1>
            <p>Enter your details to create a new account.</p>
        </div>
    </section>

    <!-- Register Form Section -->
    <section class="py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h4 class="card-title mb-4 text-center">Create Account</h4>
                            <form  action="register" method="post">
                            
                                <!-- Full Name -->
                                <div class="mb-3">
                                    <label for="fullname" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" name="fullname" id="fullname" value="${user.fullname}">
                                </div>
                                <!-- Password -->
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                   <input type="password" class="form-control" name="password" id="password" value="${user.password}">
                                </div>


                                <!-- Email -->
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" name="email" id="email" value="${user.email}">                                </div>

                                <!-- Submit Button -->
                                 <button type="submit"  class="btn btn-update me-2" formaction="${url}/create">Signup</button>
                            </form>
                            ${message}
                            <div class="text-center mt-3">
                                <a href="${ctx}/indexLogin" class="text-muted">Already have an account? Log in</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
  

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
	