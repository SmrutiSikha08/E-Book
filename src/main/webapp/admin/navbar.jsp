<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery, Popper.js, and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<div class="container-fluid"
	style="height: 10px; background-color: #ff80ab"></div>



<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3 text-primary d-flex align-items-center">
			<h3 class="custom-title">
				<i class="fa-solid fa-book"></i> e-Books
			</h3>
		</div>
		
		<div class="col-md-3 text-end">
		<c:if test="${not empty userobj }">
		<a  class="btn btn-success me-2 text-white"> <i
				class="fa-solid fa-user"></i>${ userobj.name}
			</a> 
			<a data-toggle="modal" data-target="#exampleModalCenter"class="btn btn-primary text-white"> <i
				class="fa-solid fa-user-plus me-2"></i>Logout
			</a>
		</c:if>
		<c:if test="${empty userobj }">
		<a href="../login.jsp" class="btn btn-success me-2"> <i
				class="fa-solid fa-right-to-bracket me-2"></i>Login
			</a> <a href="../register.jsp" class="btn btn-primary"> <i
				class="fa-solid fa-user-plus me-2"></i>Register
			</a>
		</c:if>
			
		</div>

	</div>
</div>

<style>
.custom-title {
	font-weight: bold;
	font-family: "sans-serif";
	color: #f50057;
	padding-left: 10px;
}

.fa-book {
	margin-right: 10px;
}

.btn {
	padding: 8px 15px;
}

.text-end {
	text-align: right;
}
</style>


<!-- Logout session -->
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="text-center">
       <h4>Hope to see you back soon</h4>
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <a href="../logout" type="button" class="btn btn-primary">Logout</a>
       </div>
      </div>
      
     <div class="modal-footer">
        </div>
    </div>
  </div>
</div>

<!-- Logout end session -->


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link active" aria-current="page"
					href="home.jsp">Home<span class="icon-text-spacing"></span>
				</a></li>
				</ul>
		</div>
	</div>
</nav>

<style>
.icon-text-spacing {
	margin-left: 5px;
}

.btn {
	padding: 8px 12px;
}

.btn-light {
	margin-right: 10px;
}
</style>
