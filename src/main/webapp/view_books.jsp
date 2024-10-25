<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOimpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCSS.jsp"%>

</head>
<body style="background-color: #000000;">
<%@include file="all_component/navbar.jsp"%>

<%
int bid=Integer.parseInt(request.getParameter("bid"));
BookDAOimpl dao=new BookDAOimpl(DBConnect.getConn());
BookDtls b=dao.getBookById(bid);


%>

<div class="container p-3">
<div class="row">
<div class="col-md-6 text-center p-5 border bg-white">
<img src="book/<%=b.getPhotoName() %>" style="height: 150px; width: 110px;"><br>
<h4 class="mt-3">Book Name: <span class="text-success"><%=b.getBookName() %></span></h4>
<h4>Author Name: <span class="text-success"><%=b.getAuthor() %></span></h4>
<h4>Category: <span class="text-success"><%=b.getBookCategory() %></span></h4>
</div>

<div class="col-md-6 text-center p-5 border bg-white">
<h2><%=b.getBookName() %></h2>

<%
if("Old".equals (b.getBookCategory()))
{%>
<h5 class="text-primary" >Contact To Vendor</h5>
<h5 class="text-primary">
<i class="fa-solid fa-envelope"></i> Email: <%=b.getEmail()%></h5>	
 <%}
%>



<div class="row">
<div class="col-md-4 text-danger text-center p-2"><i class="fa-solid fa-money-check-dollar fa-2x"></i><p>Cash On Delivery</p></div>
<div class="col-md-4 text-danger text-center p-2"><i class="fa-solid fa-rotate-left fa-2x"></i><p>Return</p></div>
<div class="col-md-4 text-danger text-center p-2"><i class="fa-solid fa-truck fa-2x"></i><p>Free Shipping</p></div>

</div>

<%
if ("Old".equals (b.getBookCategory()))
{%>

<div class="text-center p-3">
<a href="" class=""><button type="button" style="font-weight: 700;color: white; background-color: black;"><i class="fa-solid fa-cart-shopping"></i>Continue Shopping</button></a>

 <a href="" class=""><button type="button" style="font-weight: 700; color: white;background-color: blue;"><i class="fa-solid fa-indian-rupee-sign"></i>300</button></a>   
</div>
	
 <%
 }else{%>
<div class="text-center p-3">
<a href="" class=""><button type="button" style="font-weight: 700;color: white; background-color: black;"><i class="fa-solid fa-cart-shopping"></i>Add To Cart</button></a>

 <a href="" class=""><button type="button" style="font-weight: 700; color: white;background-color: blue;"><i class="fa-solid fa-indian-rupee-sign"></i>300</button></a>   
</div>
<%}
%>



</div>
</div>
</div>
</body>

</html>