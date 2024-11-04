<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02-11-2024
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title>Helpline</title>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>
 <div class="container">
     <div class="row p-5">
         <div class="col-md-4 offset-md-4 text-center">
             <div class="text-success text-center">
                 <i class="fas fa-phone-square-alt fa-3x"></i>

             </div>
             <h3>24*7 Service</h3>
             <h4>Help Line Number </h4>
             <h5>+919937491122</h5>
             <a href="index.jsp" class="btn btn-primary">Home</a>
         </div>
     </div>

 </div>
</body>
</html>
