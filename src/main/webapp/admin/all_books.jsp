<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Books</title>
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
	<c:if test="${empty userobj}">
	  <c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center p-5">Hello Admin!</h3>
	
	<c:if test="${not empty succMsg}">
	 <h5 class="text-center text-success">${succMsg}</h5>
     <c:remove var="succMsg" scope="session"/>
    </c:if>
						
	<c:if test="${not empty failedMsg}">
	 <h5 class="text-center text-danger">${failedMsg}</h5>
	 <c:remove var="failedMsg" scope="session"/>
	</c:if>
	

	<div class="container table-container">
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead class="custom-header-bg text-white">
					<tr>
					    <th>ID</th>
						<th>Image</th>
						<th>Book Name</th>
						<th>Author</th>
						<th>Price</th>
						<th>Categories</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				<%
				BookDAOimpl dao=new BookDAOimpl(DBConnect.getConn());
				List<BookDtls> list=dao.getAllBooks();
				for (BookDtls b:list){
				%>
					<tr>
						<td><%=b.getBookId() %></td>
						<td><img src="../book/<%=b.getPhotoName()%>"style="width: 50px; height: 50px;"></td>
						<td><%=b.getBookName() %></td>
						<td><%=b.getAuthor() %></td>
						<td><%=b.getPrice() %></td>
						<td><%=b.getBookCategory() %></td>
						<td><%=b.getStatus()%></td>
						<td><a href="edit_books.jsp?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
						<a href="../delete?id=<%=b.getBookId() %>" class="btn btn-sm btn-danger"><i class="fa-sharp fa-solid fa-trash"></i>Delete</a>
						</td>
					</tr>
				<%
				}				
				%>
				</tbody>
			</table>
		</div>
	</div>
	<div style="margin-top: 233px;"><%@include file="footer.jsp"%></div>
</body>
</html>