<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02-11-2024
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%><title>Update Address</title>

<div class="container">
    <div class="row p-3">

        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Update Address</h3>
                    <form>
                    <div class="form-row d-flex">
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Address</label>
                            <input type="text" class="form-control" id="inputAddress"  >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputLandmark">Landmark</label>
                            <input type="text" class="form-control" id="inputLandmark">
                        </div>

                    </div>
                        <div class="form-row d-flex">
                            <div class="form-group col-md-4">
                                <label for="inputCity">City</label>
                                <input type="text" class="form-control" id="inputCity"  >
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State</label>
                                <input type="text" class="form-control" id="inputState">
                            </div>
                            <div class="form-group col-md-4">
                            <label for="inputPincode">Pincode</label>
                            <input type="number" class="form-control" id="inputPincode">
                        </div>

                        </div>

                        <div class="text-center ">
                            <button class="btn btn-warning text-white">Add Address</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>
</div>



</body>
</html>
