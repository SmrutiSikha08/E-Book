<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOimpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook: Index</title>

<style type="text/css">
.back-img {
	background: url("img/ebook-1.jpg");
	height: 90vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.back-img h1 {
	font-weight: bold;
	font-family: " sans-serif;
	color: Black;
	position: absolute;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
}

.rbk h3 {
	font-weight: bold;
	font-family: " sans-serif;
	color: Black;
	margin-top: 40px;
	text-align: center;
}

.p1 {
	text-align: center;
	font-weight: bold;
	font-family: " sans-serif ;
	color: Black;
}

.p2 {
	text-align: center;
	font-weight: bold;
	font-family: " sans-serif;
	color: #d81b60;
}

.crd-ho:hover {
	background-color: #bbdefb;
}
</style>
</head>
<body style="background-color: #e3f2fd;">
   <%
   User u=(User) session.getAttribute("userobj");
    %>
	<%@include file="all_component/allCSS.jsp"%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h1>E-Book Management System</h1>
	</div>






	<!--  Start of Recent Book -->
	<div class="container rbk">
    <h3 class="text-center">Recent Book</h3>
    <div class="row">
    <%
    BookDAOimpl dao2 = new BookDAOimpl(DBConnect.getConn());
    List<BookDtls> list2 = dao2.getRecentBooks();  // Corrected dao2 to dao
    for (BookDtls b : list2)
    {
    %>
    <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
                    <p class="p1"><%= b.getBookName() %></p>
                    <p class="p2"><%= b.getAuthor() %></p>
                    <p>
                    <%
                    if(b.getBookCategory().equals("Old"))
                    {%>
                    <div class="row">
                     Categories: <%= b.getBookCategory() %>
                    </p>
                       
                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm mb-1">View Details</a>
                        <a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹<%= b.getPrice() %></a>
                    </div>
                    	
                    <%
                    }
                    else
                    {%>
                    	Categories: <%= b.getBookCategory() %></p>
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

                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm mb-1">View Details</a>
                        <a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹<%= b.getPrice() %></a>
                    </div>
                    <%
                    }
                    %>
                    
                </div>
            </div>
        </div>
    
    <%
    }
    %>
    
    
        
</div>

<div class= "text-center mt-1">
<a href="all_recent_book.jsp" class="" style="text-decoration: none;"> <button type="button" style="font-weight: 700;
    color: black;">See More</button></a>
</div>
	

			<!--  End of Recent Book -->


			<hr>

			<!--  Start of New Book -->
			<div class="container rbk">
				<h3 class="text-center">New Book</h3>
				<div class="row">
					
					<%
					BookDAOimpl dao= new BookDAOimpl(DBConnect.getConn());
					List<BookDtls> list=dao.getNewBook();
					for(BookDtls b:list)
					{
					%>
					<div class="col-md-3">
					<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/<%=b.getPhotoName() %>"
									style="width: 150px; height: 200px" class="img-thumblin">
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
                                    <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm mb-1">View Details</a>
                                    <a href="" class="btn btn-success btn-sm mb-1">
                                        M.R.P : ₹<%= b.getPrice() %>
                                    </a>
                                </div>
							</div>
						</div>
					</div>
					<%
					}
					%>
			
			
						
<div class= "text-center mt-1">
<a href="all_new_book.jsp" class="" style="text-decoration: none;"> <button type="button" style="font-weight: 700;
    color: black;">See More</button></a>
</div>
					
						
				



					
					<!--  End of New Book -->
					<hr>





					<!--  Start of Old Book -->
					<div class="container rbk">
						<h3 class="text-center">Old Book</h3>
						<div class="row">
						
						
							 <%
    BookDAOimpl dao3 = new BookDAOimpl(DBConnect.getConn());
    List<BookDtls> list3 = dao3.getOldBooks();  // Corrected dao2 to dao
    for (BookDtls b : list3)
    {
    %>
    <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
                    <p class="p1"><%= b.getBookName() %></p>
                    <p class="p2"><%= b.getAuthor() %></p>
                    <p><%=b.getBookCategory() %></p>
                    
                    <div class="row">
									 <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm mb-1">View Details</a>
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
    <div class= "text-center mt-1">
<a href="all_old_book.jsp" class="" style="text-decoration: none;"> <button type="button" style="font-weight: 700;
    color: black;">See More</button></a>
</div>



							
							<!--  End of Old Book -->
</body>
</html>
<%@ include file="all_component/footer.jsp"%>
