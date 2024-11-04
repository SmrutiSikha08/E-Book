<%@ page import="com.entity.Cart" %>
<%@ page import="com.DAO.CartDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 30-10-2024
  Time: 08:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title> Cart Page </title>
</head>
<body style="background-color: #DCDCDC">
<%@include file="all_component/navbar.jsp"%>
<c:if test="${ empty userobj}">
<c:redirect url="login.jsp"> </c:redirect>
</c:if>





     <c:if test="${not empty succMsg}">
         <div class="alert alert-success" role="alert">
             ${succMsg}
         <c:remove var="succMsg" scope="session"/>
         
         </div>
     </c:if>

      <c:if test="${not empty failedMSg}">
    <div class="alert alert-danger" role="alert">
        ${failedMsg}
        <c:remove var="failedMsg" scope="session"/>

    </div>
</c:if>


<div class="container">
<div class ="row p-2">
<div class="col-md-6">

<div class="card bg-white" >
    <div class="card-body" >
        <h3 class="text-center text-success"> Your Selected Item </h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <%
                User u = (User) session.getAttribute("userobj");
                CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
                List<Cart> cart = dao.getBookbyUser(u.getId());
                Double totalPrice=0.0;
                for (Cart c : cart) {
                    totalPrice=c.getTotalPrice();

            %>
            <tr>
                <th scope="row"><%= c.getBoookName() %></th>
                <td><%= c.getAuhtor() %></td>
                <td><%= c.getPrice() %></td>
                <td>
                    <a href="remove_book?bid=<%= c.getBid() %>&uid=<%= c.getUserId() %>" class="btn btn-sm btn-danger">Remove</a>

                </td>
            </tr>
            <% } %>

         <tr>
             <td>Total Price</td>
             <td></td>
             <td></td>
             <td><%=totalPrice %></td>
         </tr>



            </tbody>
        </table>
    </div>

</div>

</div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h3 class="text-center text-success">Your Details for Order</h3>
                <form>
                    <div class="form-row d-flex">
                        <div class="form-group col-md-6">
                            <label for="inputName">Name</label>
                            <input type="text" class="form-control" id="inputName" value="<%=u.getName()%>" readonly="readonly">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail">Email</label>
                            <input type="email" class="form-control" id="inputEmail" value="<%=u.getEmail()%>" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-row d-flex">
                        <div class="form-group col-md-6">
                            <label for="inputPhoneNumber">Phone Number</label>
                            <input type="number" class="form-control" id="inputPhoneNumber" value="<%=u.getPhno()%>" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Address</label>
                            <input type="text" class="form-control" id="inputAddress">
                        </div>

                    </div>
                    <div class="form-row d-flex">
                        <div class="form-group col-md-6">
                            <label for="inputLandmark">Landmark</label>
                            <input type="text" class="form-control" id="inputLandmark" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputCity">City</label>
                            <input type="text" class="form-control" id="inputCity" >
                        </div>
                    </div>
                    <div class="form-row d-flex">
                        <div class="form-group col-md-6">
                            <label for="inputState">State</label>
                            <input type="text" class="form-control" id="inputState" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPincode">Pin Code</label>
                            <input type="number" class="form-control" id="inputPincode" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label> Payment Mode</label>

                        <select class="form-control">
                            <option>--Select--</option>
                            <option>Cash On Dlivery</option>
                        </select>
                    </div>

                    <div class ="text-center">
                        <button class="btn btn-warning">Order Now </button>
                        <a href="index.jsp" class="btn btn-success">Continue Shopping</a>

                    </div>
                    <!-- Add more form rows as needed -->
                </form>
            </div>
        </div>
    </div>

</div>
</div>
</div>
</body>
</html>
