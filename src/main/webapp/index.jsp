<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook: Index</title>

<style type="text/css">
.back-img {
	background: url("img/ebook-1.jpg");
	height: 90vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.back-img h1 {
	font-weight: bold;
	font-family: " sans-serif;
	color: Black;
	position: absolute;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
}

.rbk h3 {
	font-weight: bold;
	font-family: " sans-serif;
	color: Black;
	margin-top: 40px;
	text-align: center;
}

.p1 {
	text-align: center;
	font-weight: bold;
	font-family: " sans-serif;
	color: Black;
}

.p2 {
	text-align: center;
	font-weight: bold;
	font-family: " sans-serif;
	color: #d81b60;
}

.crd-ho:hover {
	background-color: #bbdefb;
}
</style>
</head>
<body style="background-color: #e3f2fd;">
	<%@include file="all_component/allCSS.jsp"%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h1>E-Book Management System</h1>
	</div>






	<!--  Start of Recent Book -->
	<div class="container rbk">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-3.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Python Programming
						<p>
						<p class=p2>Poonam Rana
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹636</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-5.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Gender Equality & Human Rights
						<p>
						<p class=p2>Dr. Tanmoy Rudra
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹680</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-7.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Environmental Studies
						<p>
						<p class=p2>Jayakara Bhandary M.
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹350</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-10.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Discrete Mathematics
						<p>
						<p class=p2>Norman L. Biggs
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹580</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-6.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Engineering Mechanics
						<p>
						<p class=p2>J.K. Gupta
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹459</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-2.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Basic Electrical Engineering
						<p>
						<p class=p2>Ramana Pilla & H D Mehta
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹499</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-8.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Engineering Materials
						<p>
						<p class=p2>Elkhattabi El Mehdi
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹450</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-19.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Engineering Economy
						<p>
						<p class=p2>Leland Blank
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹530</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-13.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>C Programming
						<p>
						<p class=p2>Shimpy Goyal, Meenakshi Yadav
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹750</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-15.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Probability & Statistics
						<p>
						<p class=p2>Vijay K. Rohatagi
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹630</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-16.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Internent of Things
						<p>
						<p class=p2>B.K. Tripathy, J. Anuradha
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹690</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-18.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Data Structres
						<p>
						<p class=p2>Alfred V. Aho
						<p>
						<p>Categories: New
						<p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm mb-1"> <i
								class="fa-solid fa-cart-shopping"></i> Add to Cart
							</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹630</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-30.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Defensive Security
						<p>
						<p class=p2>Amanda Berlin
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹480</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-27.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Cloud Security Privacy
						<p>
						<p class=p2>Shahed Latif
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹559</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-24.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>The Electrical Engineering
						<p>
						<p class=p2>Richard C. Dorf
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹500</a>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ebook-30.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p class=p1>Defensive Security
						<p>
						<p class=p2>Amanda Berlin
						<p>
						<p>Categories: Old
						<p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm mb-1">View Details</a> <a
								href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹480</a>
						</div>
					</div>
				</div>
			</div>

			<!--  End of Recent Book -->





			<hr>




			<!--  Start of New Book -->
			<div class="container rbk">
				<h3 class="text-center">New Book</h3>
				<div class="row">
					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-25.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Cloud Computing
								<p>
								<p class=p2>Thomas Erl
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹550</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-31.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Security Analysis
								<p>
								<p class=p2>James Grant
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹600</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-36.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Product Development
								<p>
								<p class=p2>Mohamadd Raman
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹750</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-22.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Operating System Concepts
								<p>
								<p class=p2>Peter B. Galvin
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹500</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-42.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Advance Analytics & Deep Learning Models
								<p>
								<p class=p2>Archana Mere
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹660</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-3.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Python Programming
								<p>
								<p class=p2>Poonam Rana
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹636</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-5.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Gender Equality & Human Rights
								<p>
								<p class=p2>Dr. Tanmoy Rudra
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹680</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-7.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Environmental Studies
								<p>
								<p class=p2>Jayakara Bhandary M.
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹350</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-10.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Discrete Mathematics
								<p>
								<p class=p2>Norman L. Biggs
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹580</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-13.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>C Programming
								<p>
								<p class=p2>Shimpy Goyal, Meenakshi Yadav
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹750</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-15.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Probability & Statistics
								<p>
								<p class=p2>Vijay K. Rohatagi
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹630</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-16.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Internent of Things
								<p>
								<p class=p2>B.K. Tripathy, J. Anuradha
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹690</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-18.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Data Structres
								<p>
								<p class=p2>Alfred V. Aho
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1"> <i
										class="fa-solid fa-cart-shopping"></i> Add to Cart
									</a> <a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹630</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-20.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Cloud Practitioner
								<p>
								<p class=p2>Todo Montgomery
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P : ₹540</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-58.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Fundamentals of Computer Programming
								<p>
								<p class=p2>Alexander Bell
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹499</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-57.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Object-oriented Programming
								<p>
								<p class=p2>Rudolf Pecinovsky
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹549</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-56.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Computer Architecture and Organisation
								<p>
								<p class=p2>Pankaj Sharma
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹599</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-55.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Design and Analysis of Algorithms
								<p>
								<p class=p2>Parag Himanshu Dave
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹749</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-54.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Fundamental of Information Technology
								<p>
								<p class=p2>N Radhakrishnan
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹599</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-53.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Computer Networks
								<p>
								<p class=p2>Devid J. Wetherall
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹699</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-50.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Introduction to Gaming
								<p>
								<p class=p2>Carlson J.G
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹650</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-49.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Web3 Demystified
								<p>
								<p class=p2>Afshan Ahmad
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹472</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-45.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Artificial Intelligence
								<p>
								<p class=p2>Sumita Arora
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹699</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-41.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Predictive Analysis
								<p>
								<p class=p2>Dursun Delen
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹499</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-38.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>MicroGrids Design & Implementation
								<p>
								<p class=p2>Antonio Carlos
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹345</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-35.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>SpringBoot & Angular
								<p>
								<p class=p2>Devlin Basilan
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹799</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-33.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Advanced Java Programming
								<p>
								<p class=p2>B PrasanaLaxmi
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹585</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-29.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Offensive Security Web Expert
								<p>
								<p class=p2>Hb Meher
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹699</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-28.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Linux Security & Hardening
								<p>
								<p class=p2>Donalt A. Tevault
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹500</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-26.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Cloud Computing & DevOps
								<p>
								<p class=p2>Ramana Pilla & H D Mehta
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹460</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-21.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Web Development
								<p>
								<p class=p2>Andy Vickler
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹635</a>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="book/ebook-34.jpg"
									style="width: 150px; height: 200px" class="img-thumblin">
								<p class=p1>Angular
								<p>
								<p class=p2>Nate Murry
								<p>
								<p>Categories: New
								<p>
								<div class="row">
									<a href="" class="btn btn-success btn-sm mb-1">Add to Cart</a>
									<a href="" class="btn btn-danger btn-sm mb-1">View Details</a>
									<a href="" class="btn btn-success btn-sm mb-1">M.R.P: ₹572</a>
								</div>
							</div>
						</div>
					</div>
					<!--  End of New Book -->
					<hr>





					<!--  Start of Old Book -->
					<div class="container rbk">
						<h3 class="text-center">Old Book</h3>
						<div class="row">
							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-2.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Basic Electrical Engineering
										<p>
										<p class=p2>Ramana Pilla & H D Mehta
										<p>
										<p>Categories: New
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">299</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-37.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Renewable Energy Technology
										<p>
										<p class=p2>Ehmed F Zobba
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹350</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-52.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>C++ Game Programming
										<p>
										<p class=p2>John Horton
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹580</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-51.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>3D.Game Environments
										<p>
										<p class=p2>Luke Ahearn
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹430</a>
										</div>
									</div>
								</div>
							</div>




							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-47.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>The BLockChain Developer
										<p>
										<p class=p2>Elad Elrom
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹539</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-46.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Smart Contracts
										<p>
										<p class=p2>JEFF REED
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹399</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-30.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Defensive Security
										<p>
										<p class=p2>Amanda Berlin
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹480</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-40.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Renewable Energy
										<p>
										<p class=p2>John M. Cimbala
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹390</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-48.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Advanced BlockChain Development
										<p>
										<p class=p2>Imran Basir
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹600</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-44.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Introduction to BlockChain
										<p>
										<p class=p2>Zeeshan-ul-hassan Usmal
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹580</a>
										</div>
									</div>
								</div>
							</div>




							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-27.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Cloud Security Privacy
										<p>
										<p class=p2>Shahed Latif
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹559</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-59.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Plant Biotechnology
										<p>
										<p class=p2>B.D. Singh
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹400</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-60.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Animal Biotechnology
										<p>
										<p class=p2>Anchol Singh
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹560</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-61.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Environmental Biotechnology
										<p>
										<p class=p2>Sibi G
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹450</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-62.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Pharmaceutical Biotechnology
										<p>
										<p class=p2>O. Kayser
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹510</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-64.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Fundamental of Microbiology
										<p>
										<p class=p2>Jeffrey C.
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹540</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-65.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Molecular Biology
										<p>
										<p class=p2>Robort F. weaver
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹450</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-66.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Thermal Engineering
										<p>
										<p class=p2>ER R.K. Rajput
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹500</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-67.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Engineering Physics
										<p>
										<p class=p2>S. Chand
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹499</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-68.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Mechanical Vibration
										<p>
										<p class=p2>S. Rao
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹560</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-69.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Heat & Thermodynamics
										<p>
										<p class=p2>Pramila Shukla
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹430</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-70.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Robotics
										<p>
										<p class=p2>John Craig
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹555</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-71.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Introduction to Computing
										<p>
										<p class=p2>David Evans
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹499</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-72.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Kinamatics of Machinery
										<p>
										<p class=p2>Eugene S.
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹285</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-73.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Design of Machine Elements
										<p>
										<p class=p2>V B Bhandari
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹340</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-74.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Heat & Mass Transfer
										<p>
										<p class=p2>Afshin J.
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹410</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-75.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Control System
										<p>
										<p class=p2>M Gopal
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹450</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-76.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Applied ThermoDynamics
										<p>
										<p class=p2>Dr. Rahul
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹490</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-77.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>TAerospace Engineering
										<p>
										<p class=p2>Johns Singhman
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹560</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-78.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Automotive Engineering
										<p>
										<p class=p2>S. Narayan
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹611</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-79.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>Automobile Engineering
										<p>
										<p class=p2>S. Chand
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹420</a>
										</div>
									</div>
								</div>
							</div>



							<div class="col-md-3">
								<div class="card crd-ho">
									<div class="card-body text-center">
										<img alt="" src="book/ebook-80.jpg"
											style="width: 150px; height: 200px" class="img-thumblin">
										<p class=p1>SQL
										<p>
										<p class=p2>Thomas Nield
										<p>
										<p>Categories: Old
										<p>
										<div class="row">
											<a href="" class="btn btn-danger btn-sm mb-1">View
												Details</a> <a href="" class="btn btn-success btn-sm mb-1">M.R.P
												: ₹699</a>
										</div>
									</div>
								</div>
							</div>

							<!--  End of Old Book -->
</body>
</html>
<%@ include file="all_component/footer.jsp"%>



