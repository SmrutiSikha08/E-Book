<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title>Setting</title>
</head>
<body style="background-color: #e3f2fd;">
<c:if test="${empty sessionScope.userobj}">
    <c:redirect url="login.jsp"/>
</c:if>
<%@include file="all_component/navbar.jsp"%>
<style type="text/css">
    a {
        text-decoration: blue;
        color: black;
    }
    a:hover {
        text-decoration: none;
    }
</style>
<div class="container">
    <h3 class="text-center">Hello</h3>
    <div class="row p-5">
        <!-- Sell Old Book Section -->
        <div class="col-md-4">
            <a href="sell_book.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fa-solid fa-book fa-3x"></i>
                        </div>
                        <h3>Sell Old Book</h3>
                    </div>
                </div>
            </a>
        </div>
        <div class="row p-5">
            <!-- Sell Old Book Section -->
            <div class="col-md-4">
                <a href="old_book.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa-solid fa-book fa-3x"></i>
                            </div>
                            <h3> Old Book</h3>
                        </div>
                    </div>
                </a>
            </div>

        <!-- Login & Security Section -->
        <div class="col-md-4">
            <a href="edit_profile.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fa-regular fa-id-card fa-3x"></i>
                        </div>
                        <h3>Login & Security (Edit Profile)</h3>
                    </div>
                </div>
            </a>
        </div>

        <!-- Your Address Section -->
        <div class="col-md-4 mt-3">
            <a href="user_address.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fas fa-map-marker-alt fa-3x"></i>
                        </div>
                        <h3>Your Address</h3>
                        <p>Edit Your Address</p>
                    </div>
                </div>
            </a>
        </div>

        <!-- My Orders Section -->
        <div class="col-md-4 mt-3">
            <a href="order.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-danger">
                            <i class="fas fa-shopping-bag fa-3x"></i>
                        </div>
                        <h3>My Orders</h3>
                        <p>Check Order Info</p>
                    </div>
                </div>
            </a>
        </div>

        <!-- Help Center Section -->
        <div class="col-md-4 mt-3">
            <a href="helpline.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-success">
                            <i class="fas fa-question-circle fa-3x"></i>
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
<%@ include file="all_component/footer.jsp" %>
