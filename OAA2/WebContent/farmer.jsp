<%@ include file="header.jsp"%>
<div id="all">

	<div id="content">
		<div class="container">

			<div class="col-md-12">

				<ul class="breadcrumb">
					<li><a href="home.do">Home</a></li>

					<li>Farmer</li>
				</ul>

			</div>

			<div class="col-md-3">

				<!-- *** Farmer MENU ***
 _________________________________________________________ -->
				<div class="panel panel-default sidebar-menu">

					<div class="panel-heading">
						<h3 class="panel-title">Farmer section</h3>
					</div>

					<div class="panel-body">

						<ul class="nav nav-pills nav-stacked">
							<li><a href="launchauction.do"><i class="fa fa-list"></i>
									Launch Auction</a></li>
							<li><a href="myproducts.do"><i class="fa fa-list"></i>
									My Products</a></li>

							<li><a href="farmeracc.do"><i class="fa fa-user"></i> My
									account</a></li>
							<li><a href="index.jsp"><i class="fa fa-sign-out"></i>
									Logout</a></li>
						</ul>
					</div>

				</div>

			</div>

			<div class="col-md-9" id="customer-order">
				<div class="box">
					<h1>Auction Details</h1>

					<hr>

					<div class="table-responsive">
						<table class="table">
							<div id="hot">

								<div class="box">
									<div class="container">
										<div class="col-md-8">
											<h2>Ongoing Auctions</h2>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="col-md-8">
										<div class="product-slider">
											<%
												int index = -1;
											%>
											<c:forEach items="${sessionScope.AuctionList}" var="auction">
												<div class="item">
													<div class="product">
														<div class="flip-container">
															<div class="flipper">
																<div class="front">
																	<a href="#"> <img
																		src="image?type=auction&index=<%=(++index)%>" alt=""
																		class="img-responsive">
																	</a>
																</div>
																<div class="back">
																	<a href="#"> <img
																		src="image?type=auction&index=<%=(index)%>" alt=""
																		class="img-responsive">
																	</a>
																</div>
															</div>
														</div>
														<a href="#" class="invisible"> <img
															src="img/product1.jpg" alt="" class="img-responsive">
														</a>
														<div class="text">
															<h3>
																<a href="#">${auction.productName}</a>
															</h3>

															<p class="price">&#8377;${auction.minBidPrice}</p>
															<p class="description">${auction.description }</p>
															<p class="date">Start Date - ${auction.startDate }</p>
															<p class="date">End Date - ${auction.endDate }</p>

														</div>
														<!-- /.text -->
													</div>
													<!-- /.product -->
												</div>
											</c:forEach>
										</div>
									</div>
									<!-- /.product-slider -->
								</div>
								<!-- /.container -->

							</div>
						</table>
					</div>


					<!-- /.container -->
					<div class="table-responsive">
						<table class="table">
							<div id="hot">
								<div class="box">
									<div class="container">
										<div class="col-md-8">
											<h2>Recent Auctions</h2>
										</div>
									</div>
								</div>
								<div class="container">
									<div class="col-md-8">
										<div class="product-slider">
											<%
												int value = -1;
											%>
											<c:forEach items="${sessionScope.CompletedAuctionList}"
												var="auction">
												<div class="item">
													<div class="product">
														<div class="flip-container">
															<div class="flipper">
																<div class="front">
																	<a href="detail.html"> <img
																		src="image?type=auction&value=<%=(++value)%>" alt=""
																		class="img-responsive">
																	</a>
																</div>
																<div class="back">
																	<a href="detail.html"> <img
																		src="image?type=auction&value=<%=(value)%>" alt=""
																		class="img-responsive">
																	</a>
																</div>
															</div>
														</div>
														<a href="initiateBid.do" class="invisible"> <img
															src="img/product1.jpg" alt="" class="img-responsive">
														</a>
														<div class="text">
															<h3>
																<a href="detail.html">${auction.productName}</a>
															</h3>
															<p class="price">&#8377;${auction.minBidPrice}</p>
															<p class="description">${auction.description }</p>
															<p class="date">Start Date - ${auction.startDate }</p>
															<p class="date">End Date - ${auction.endDate }</p>

														</div>
													</div>

												</div>
											</c:forEach>
										</div>
									</div>
								</div>
								<!-- /.container -->
							</div>

						</table>
					</div>

				</div>
			</div>

		</div>
	</div>
</div>
<!-- /#content -->





<%@ include file="footer.jsp"%>