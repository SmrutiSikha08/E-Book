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
    BookDAOimpl dao2 = new BookDAOimpl(DBConnect.getConn());
    List<BookDtls> list2 = dao2.getAllRecentBook();  // Corrected dao2 to dao
    for (BookDtls b : list2)
    {
    %>
    <div class="col-md-3">
            <div class="card crd-ho mt-3">
                <div class="card-body text-center">
                    <img alt="" src="book/<%=b.getPhotoName() %>" style="width: 120px; height: 160px" class="img-thumblin">
                    <p class="p1"><%= b.getBookName() %></p>
                    <p class="p2"><%= b.getAuthor() %></p>
                    <p>
                    <%
                    if(b.getBookCategory().equals("Old"))
                    {%>
                    <div class="row">
                     Categories: <%= b.getBookCategory() %></p>
                       
                        <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
                        <a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹<%= b.getPrice() %></a>
                    </div>
                    	
                    <%
                    }
                    else
                    {%>
                    	Categories: <%= b.getBookCategory() %></p>
                    <div class="row">
                        <a href="" class="btn btn-success btn-sm mb-1">
                            <i class="fa-solid fa-cart-shopping"></i> Add to Cart
                        </a>
                        <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
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
</div>

</body>
</html>