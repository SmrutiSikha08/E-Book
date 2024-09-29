<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Orders</title>
<%@include file="allCSS.jsp"%>
</head>
<body>
	<style>
body {
	background-color: #f0f8ff;
	padding: 20px;
}

.table-container {
	margin: 50px auto;
}

.custom-header-bg {
	background-color: #f62782 !important;
}

table {
	box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 15px;
	text-align: center;
	vertical-align: middle;
}

.btn-action {
	margin-right: 5px;
}
</style>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center p-5">Hello Admin!</h3>
	<div class="container table-container">
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead class="custom-header-bg text-white">
					<tr>
						<th>Order Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>Phone No.</th>
						<th>Book Name</th>
						<th>Author</th>
						<th>Price</th>
						<th>Payment Type</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>The Great Gatsby</td>
						<td>F. Scott Fitzgerald</td>
						<td>$10</td>
						<td>Classic</td>
						<td>Active</td>
						<td>XYZ</td>
						<td>500</td>
						<td>Online</td>
					</tr>
					<tr>
						<td>2</td>
						<td>To Kill a Mockingbird</td>
						<td>Harper Lee</td>
						<td>$12</td>
						<td>Fiction</td>
						<td>Inactive</td>
						<td>XYZ</td>
						<td>500</td>
						<td>Online</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div style="margin-top: 233px;"><%@include file="footer.jsp"%></div>
</body>
</html>