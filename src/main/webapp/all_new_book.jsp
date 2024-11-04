<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimpl"%>
<%@ page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<meta charset="UTF-8">
<title>All Recent Books</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #bbdefb;
}
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

	to {
		bottom: 30px;
		opacity: 1;
	}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

	to {
		bottom: 0;
		opacity: 0;
	}
}
</style>
</head>
<body>

<%
	User u = (User) session.getAttribute("userobj");
%>

<c:if test="${not empty addCart}">
	<div id="toast">${addCart}</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#toast').addClass("display");
			setTimeout(() => {
				$("#toast").removeClass("display");
			}, 2000);
		});
	</script>
	<!-- Remove 'addCart' from session to prevent toast on reload -->
	<c:remove var="addCart" scope="session"/>
</c:if>

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
								<% if(u==null) { %>
								<a href="login.jsp" class="btn btn-success btn-sm mb-1">
									<i class="fa-solid fa-cart-shopping"></i> Add to Cart
								</a>
								<% } else { %>
								<a href="cart?bid=<%= b.getBookId() %>&&uid=<%= u.getId() %>" class="btn btn-success btn-sm mb-1">
									<i class="fa-solid fa-cart-shopping"></i> Add to Cart
								</a>
								<% } %>



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