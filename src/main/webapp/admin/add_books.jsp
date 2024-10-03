<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Books</title>
<%@include file="allCSS.jsp"%>
</head>
<body>
	<style>
body {
	background-color: #f0f2f2;
}

.container {
	margin-top: 50px;
	margin-bottom: 50px;
}

.card {
	border: none;
	border-radius: 10px;
	box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
}

.card-body {
	padding: 30px;
}

h4 {
	color: #333;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	margin-bottom: 8px;
}

.form-control {
	border-radius: 8px;
	border: 1px solid #ccc;
	padding: 12px;
}

.form-control-file {
	border: 1px solid #ccc;
	padding: 10px;
	border-radius: 8px;
}

.form-group {
	margin-bottom: 20px;
}

.btn-primary1 {
	background-color: #ff80ab;
	border-color: #ff80ab;
	padding: 12px;
	font-size: 16px;
	display: block;
	width: 100%;
	text-align: center;
}

.btn-primary1:hover {
	background-color: #ff4081;
	border-color: #ff4081;
}

.form-file-upload {
	padding: 10px;
	border-radius: 8px;
	background-color: #fff;
	border: 1px solid #ccc;
	text-align: center;
	display: block;
	width: 100%;
}
</style>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
	  <c:redirect url="../login.jsp" />
	</c:if>
	<div class="container p-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
						
						<c:if test="${not empty succMsg}">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg}">
						<p class="text-center text-danger">${failedMsg}</p>
						<c:remove var="failedMsg" scope="session"/>
						</c:if>
						
						
						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="bookName" class="form-label">Book Name</label> <input
									name="bname" type="text" class="form-control" id="bookName"
									placeholder="Enter book name" required>
							</div>

							<div class="form-group">
								<label for="authorName" class="form-label">Author Name</label> <input
									name="author" type="text" class="form-control" id="authorName"
									placeholder="Enter author name" required>
							</div>

							<div class="form-group">
								<label for="price" class="form-label">Price*</label> <input
									name="price" type="number" class="form-control" id="price"
									placeholder="Enter price" required>
							</div>

							<div class="form-group">
								<label for="bookCategory" class="form-label">Book
									Categories</label> <select id="bookCategory" name="categories"
									class="form-control" required>
									<option selected disabled>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>

							<div class="form-group">
								<label for="bookStatus" class="form-label">Book Status</label> <select
									id="bookStatus" name="status" class="form-control" required>
									<option selected disabled>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<label for="bookImage" class="form-label">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="bookImage" required>
								<!-- Displays default text when no file selected -->
							</div>

							<button type="submit" class="btn btn-primary1">Add Book</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer
		style="background-color: #ff80ab; padding: 10px 0; text-align: center;">
		<p style="margin: 0; font-size: 14px; color: white;">
			&copy;
			<%=java.time.LocalDate.now().getYear()%>
			eBook Management. All rights reserved.
		</p>
		<div>
			<a href="#" class="text-white mx-2">Home</a> | <a href="#"
				class="text-white mx-2">Contact</a>
		</div>
	</footer>
</body>
</html>