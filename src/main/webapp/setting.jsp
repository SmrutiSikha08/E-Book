<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02-11-2024
  Time: 02:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title>Setting</title>
</head>
<body style="background-color: #e3f2fd;">

<%@include file="all_component/navbar.jsp"%>
<style type="text/css">
    a{
        text-decoration:blue;
        color: black;
    }
    a:hover{
        text-decoration: none;

    }
</style>
<div class="container">
    <h3 class="text-center">  Hello </h3>
    <div class ="row p-5">
        <div class ="col-md-6">
            <a href="sell_book.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary" >
                        <i class="fa-solid fa-book fa-3x "></i>
                        </div>
                        <h3> Sell Old Book</h3>


                    </div>
                </div>




            </a>

        </div>

        <div class ="col-md-6">
            <a href="edit_profile.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary" >
                            <i class="fa-regular fa-id-card fa-3x "></i>
                        </div>
                        <h3>Login & Security(Edit Profile)</h3>


                    </div>
                </div>




            </a>

        </div>
        <div class ="col-md-4 mt-3">
            <a href="user_address.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary" >
                            <i class="fas fa-map-marker-alt fa-3x "></i>
                        </div>
                        <h3>Your Address</h3>
                        <p>Edit Your Address</p>


                    </div>
                </div>




            </a>

        </div>

        <div class ="col-md-4 mt-3">
            <a href="order.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-danger" >
                            <i class="fas fa-shopping-bag fa-3x "></i>
                        </div>
                        <h3>My Orders</h3>
                        <p>Check Order Info </p>


                    </div>
                </div>




            </a>

        </div>
        <div class ="col-md-4 mt-3">
            <a href="helpline.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-success" >
                            <i class="fas fa-question-circle fa-3x "></i>
                        </div>
                        <h3>Help Center</h3>
                        <p>24*7 Support</p>


                    </div>
                </div>




            </a>

        </div>

    </div>
</div>

</body>
</html>
<%@ include file="all_component/footer.jsp"%>
