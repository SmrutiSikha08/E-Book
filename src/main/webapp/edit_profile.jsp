<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02-11-2024
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title>Edit Profile</title>
</head>
<body style="background-color: #e3f2fd;">
<%@include file="all_component/navbar.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="text-center text-primary"> Edit Profile </h5>
                    <form action="" method="post">
                        <!-- Full Name Input -->
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Enter Full Name</label>
                            <input type="text" class="form-control" id="fullName" required="required" name="fname">
                        </div>

                        <!-- Email Address Input -->
                        <div class="mb-3">
                            <label for="email" class="form-label">Email Address</label> <input
                                type="email" class="form-control" id="email" required="required" name="email">
                        </div>

                        <!-- Contact Number Input -->
                        <div class="mb-3">
                            <label for="contact" class="form-label">Contact Number</label> <input
                                type="tel" class="form-control" id="contact" required="required" name="phno">
                        </div>

                        <!-- Password Input -->
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label> <input
                                type="password" class="form-control" id="password" required="required" name="password">
                        </div>



                        <!-- Submit Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>
