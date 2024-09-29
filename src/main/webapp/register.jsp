<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook: Register</title>
<%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Page</h4>
						
						<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg}</p>
						<c:remove var="failedMsg" scope="session"/>
						</c:if>
						
						<form action="register" method="post">
							<!-- Full Name Input -->
							<div class="mb-3">
								<label for="fullName" class="form-label">Enter Full Name</label>
								<input type="text" class="form-control" id="fullName" required="required" name="fname">
							</div>

							<!-- Email Address Input -->
							<div class="mb-3">
								<label for="email" class="form-label">Email Address</label> <input
									type="email" class="form-control" id="email" required="required" name="email"> 
							</div>

							<!-- Contact Number Input -->
							<div class="mb-3">
								<label for="contact" class="form-label">Contact Number</label> <input
									type="tel" class="form-control" id="contact" required="required" name="phno">
							</div>

							<!-- Password Input -->
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" id="password" required="required" name="password">
							</div>

							<!-- Checkbox -->
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree with Terms & Condition</label>
							</div>

							<!-- Submit Button -->
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>