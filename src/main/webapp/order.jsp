<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02-11-2024
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title>Order Book</title>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>
<div class="container">
    <h3 class="text-center text-primary">Order Details</h3>
    <table class="table table-hover mt-3">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Orde Id</th>
            <th scope="col">Name</th>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Payment Type</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
            <td>@mdo</td>


        </tr>

        </tbody>
    </table>




</div>


</body>
</html>
