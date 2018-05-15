<%@ include file="header.jsp"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<div id="all">

	<div id="content">
		<div class="container">

			<div class="col-md-12">
				<ul class="breadcrumb">
					<li><a href="home.do">Home</a></li>
					<li><a href="#">Bid</a></li>
				</ul>

			</div>
			<div class="col-md-9">

				<div class="row" id="productMain"></div>
				<div class="col-sm-6">
					<div class="box">
						<h1 class="text-center">Bid for ${param.pname}</h1>

						<html:form action="addBid" styleId="submit">
							<html:hidden property="auctionid" />
							<html:hidden property="userid" />
							<p class="price">
								Last Bid Amount :
								<html:text property="lastBidAmount" styleId="last_bid"
									disabled="true" />
							</p>
							<p class="price">
								Minimum Bid increment :
								<html:text property="bidAmountIncrement" styleId="bid_inc"
									disabled="true" />
							</p>

							<p class="input">
								<label>Current Bid Amount:</label>
								<html:text property="bidAmount" styleId="cur_bid" />
							</p>
							<p class="text-center buttons">

								<html:submit styleClass="btn btn-primary"> Bid</html:submit>

								<html:button styleClass="btn btn-default fa  fa-arrow-left"
									property="goBack" onclick="history.go(-1)">								
									Go Back</html:button>
									
							</p>
						</html:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- <script type="text/javascript">
	function check() {
		var last_bid, bid_inc, sum, cur_bid;
		last_bid = $("#last_bid").val();
		bid_inc = $("#bid_inc").val();
		cur_bid = $("#cur_bid").val();
		sum = last_bid + bid_inc;
		if (sum < cur_bid) {
			return true;
		}
		return false;

	}
</script> -->
<script src="js/bidvalidate.js"></script>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap-hover-dropdown.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/front.js"></script>

<%@ include file="footer.jsp"%>