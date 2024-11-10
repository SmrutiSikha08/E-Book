<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02-11-2024
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <%@include file="all_component/allCSS.jsp"%>
    <title>Sell_Book</title>
</head>
<body style="background-color: #e3f2fd;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>
</c:if>
     <%@include file="all_component/navbar.jsp"%>


   <div class="container">
       <div class="row">
           <div class="col-md-4 offset-md-4">
               <div class="card">
                   <div class="card-body">
                          <h5 class="text-center text-primary " > Sell Old Books</h5>

                       <c:if test="${not empty succMsg}">
                           <p class="text-center text-success">${succMsg}</p>
                           <c:remove var="succMsg" scope="session"/>
                       </c:if>

                       <c:if test="${not empty failedMsg}">
                           <p class="text-center text-danger">${failedMsg}</p>
                           <c:remove var="failedMsg" scope="session"/>
                       </c:if>
                       <form action="add_old_book" method="post"
                             enctype="multipart/form-data">

                           <input type="hidden" value="${userobj.email}" name="user">

                           <div class="form-group">
                               <label for="bookName" class="form-label">Book Name</label> <input
                                   name="bname" type="text" class="form-control" id="bookName"
                                   placeholder="Enter book name" required>
                           </div>

                           <div class="form-group">
                               <label for="authorName" class="form-label">Author Name</label> <input
                                   name="author" type="text" class="form-control" id="authorName"
                                   placeholder="Enter author name" required>
                           </div>

                           <div class="form-group">
                               <label for="price" class="form-label">Price*</label> <input
                                   name="price" type="number" class="form-control" id="price"
                                   placeholder="Enter price" required>
                           </div>





                           <div class="form-group">
                               <label for="bookImage" class="form-label">Upload Photo</label> <input
                                   name="bimg" type="file" class="form-control-file"
                                   id="bookImage" required>
                               <!-- Displays default text when no file selected -->
                           </div>

                           <button type="submit" class="btn btn-primary1">Sell </button>
                       </form>
                   </div>
               </div>
           </div>
       </div>

   </div>
</body>
</html>
