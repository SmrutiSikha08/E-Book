<%@ page import="com.DAO.BookDAOimpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User : Old Book</title>
    <%@include file="all_component/allCSS.jsp"%>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>

<c:if test="${not empty succMsg}">
    <div class="alert alert-success">${succMsg}</div>
    <c:remove var="succMsg" scope="session"/>
</c:if>

<div class="container p-5">
    <table class="table table-striped">
        <thead class="bg-primary text-white">
        <tr>
            <th>Book Name</th>
            <th>Author</th>
            <th>Price</th>
            <th>Category</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            User u = (User) session.getAttribute("userobj");
            if (u != null) {  // Check if user is logged in
                String email = u.getEmail();
                BookDAOimpl dao = new BookDAOimpl(DBConnect.getConn());
                List<BookDtls> list = dao.getBookByOld(email, "Old");  // Get the list of old books

                // Check if the list is not null and not empty
                if (list != null && !list.isEmpty()) {
                    for (BookDtls b : list) {  // Iterate over the list
        %>
        <tr>
            <td><%= b.getBookName() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getPrice() %></td>
            <td><%= b.getBookCategory() %></td>
            <td><a href="delete_old_book?em=<%= email %>" class="btn btn-sm btn-danger">Delete</a></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="5" class="text-center">No old books found.</td>  <!-- Show message if no books found -->
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="5" class="text-center">User not logged in.</td>  <!-- Show message if user is not logged in -->
        </tr>
        <%
            }
        %>

        </tbody>
    </table>
</div>
</body>
</html>
