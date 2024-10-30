<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<div class="container-fluid" style="height: 10px; background-color: #ff80ab"></div>

<div class="container-fluid p-3">
	<div class="row align-items-center">
		<div class="col-md-3 text-primary d-flex align-items-center">
			<h3 class="custom-title">
				<i class="fa-solid fa-book"></i> e-Books
			</h3>
		</div>

		<div class="col-md-6">
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-primary" type="submit">Search</button>
			</form>
		</div>

		<!-- User-specific display -->
		<div class="col-md-3 text-end d-flex justify-content-end align-items-center">
			<c:if test="${not empty userobj}">
				<a href="cart.jsp" class="me-3"><i class="fa-solid fa-cart-shopping"></i></a>
				<a href="login.jsp" class="btn btn-success me-2">
					<i class="fa-solid fa-user-plus me-2"></i>${userobj.name}
				</a>
				<a href="#" class="btn btn-primary">
					<i class="fa-solid fa-right-to-bracket me-2"></i>Logout
				</a>
			</c:if>

			<c:if test="${empty userobj}">
				<a href="login.jsp" class="btn btn-success me-2">
					<i class="fa-solid fa-right-to-bracket me-2"></i>Login
				</a>
				<a href="register.jsp" class="btn btn-primary">
					<i class="fa-solid fa-user-plus me-2"></i>Register
				</a>
			</c:if>
		</div>
	</div>
</div>

<style>
	.custom-title {
		font-weight: bold;
		font-family: "sans-serif";
		color: #f50057;
		padding-left: 10px;
	}
	.fa-book, .fa-cart-shopping {
		margin-right: 10px;
	}
	.btn {
		padding: 8px 15px;
	}
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i> Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="all_recent_book.jsp">
						<i class="fa-solid fa-book-open"></i> <span class="icon-text-spacing">Recent Book</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="all_new_book.jsp">
						<i class="fa-solid fa-book-open"></i> <span class="icon-text-spacing">New Book</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="all_old_book.jsp">
						<i class="fa-solid fa-book-open"></i> <span class="icon-text-spacing">Old Book</span>
					</a>
				</li>
			</ul>

			<div class="d-flex">
				<a href="#" class="btn btn-light my-2 my-sm-0 me-2">
					<i class="fa-solid fa-gear"></i> Setting
				</a>
				<a href="#" class="btn btn-light my-2 my-sm-0">
					<i class="fa-solid fa-phone"></i> Contact Us
				</a>
			</div>
		</div>
	</div>
</nav>

<style>
	.icon-text-spacing {
		margin-left: 5px;
	}
	.btn {
		padding: 8px 12px;
	}
	.btn-light {
		margin-right: 10px;
	}
</style>
