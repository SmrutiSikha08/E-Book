<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #bbdefb;
}
</style>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid">
<div class="row p-4">

<%
					BookDAOimpl dao= new BookDAOimpl(DBConnect.getConn());
					List<BookDtls> list=dao.getAllNewBook();
					for(BookDtls b:list)
					{
					%>
					<div class="col-md-3">
					<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/<%=b.getPhotoName() %>"
									style="width: 110px; height: 160px" class="img-thumblin">
								<p class=p1><%=b.getBookName() %>
								<p>
								<p class=p2><%=b.getAuthor() %>
								<p>
								<p>Categories:<%=b.getBookCategory() %>
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1"><%=b.getPrice() %>
									<i class="fa-solid fa-indian-rupee-sign"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>

</div>
</div>

</body>
</html>