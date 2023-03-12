<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<title>Trang chủ</title>
<body>

	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categorys }">
						<li><a href='<c:url value="/san-pham/${ item.id }"/>'><span
								class="icon-circle-blank"></span> ${ item.name } </a></li>
					</c:forEach>

					<li><a class="totalInCart" href="cart.html"><strong>Đã
								Mua<span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/>Đ</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>Sale 50% lận nèeee</h2>
				<p>
					Duy nhất hôm nay. <br> <br> <a class="defaultBtn"
						href="#">Bấm vào đây </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src=" <c:url value="/assets/users/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> Xem chi tiết</a> <img
							src=" <c:url value="/assets/users/img/slide/bia1.png"/>"
							alt="">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">Xem</a> <span
									class="pull-right">${ TotalPriceCart }</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> Xem chi tiết</a> <img src=" <c:url value="/assets/users/img/bia2.png"/>"
							alt="">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">Xem</a> <span
									class="pull-right">399,000 VNĐ</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> Xem chi tiết</a> <img src=" <c:url value="/assets/users/img/bia3.png"/>"
							alt="">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">Xem</a> <span
									class="pull-right">399,000 VNĐ</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
					
					<c:forEach var="item" items="${ slides }" varStatus="index">
						<c:if test="${ index.first }">
							<div class="item active">
						</c:if>
						<c:if test="${ not index.first }">
							<div class="item">
						</c:if>
						<img style="width: 100%"
								src=" <c:url value="/assets/users/img/slide/${item.img }"/>"
								
								alt="bia4">
							<div class="carousel-caption">
								<h4>${item.caption }</h4>
								<p>
									<span>${item.content }</span>
									
								</p>
							</div>
					</div>
					</c:forEach>
		
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản Phẩm Mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
					<c:if test="${ products.size() > 0 }">
						<div class="item active">
							<ul class="thumbnails">
							<c:forEach var="item" items="${ products }" varStatus="loop">
								<li class="span3">
									<div class="thumbnail">
										<a class="zoomTool" href="product_details.html"
											title="add to cart"><span class="icon-search"></span>
											Xem chi tiết</a> <a href="#" class="tag"></a> <a
											href="product_details.html"><img
											src="<c:url value="/assets/users/img/${ item.img }"/>" alt=""></a>
									</div>
								</li>
							<c:if test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
									</ul>
									</div>
								<c:if test="${ (loop.index + 1) < products.size() }">
									<div class="item">
										<ul class="thumbnails">
								</c:if>
							</c:if>
							</c:forEach>
					</c:if>
			

					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>

		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"	
					title="View more">Xem thêm<span class="icon-plus"></span></a> Sản
				Phẩm Nổi Bật
			</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<c:if test="${ products.size() > 0 }">
					<ul class="thumbnails">

						<c:forEach var="item" items="${ products }" varStatus="loop">
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="chi-tiet-san-pham/${ item.id_product }" title="add to cart"><span
										class="icon-search"></span>Xem chi tiết</a> <a
										href="chi-tiet-san-pham/${ item.id_product }"><img
										src="<c:url value="/assets/users/img/${ item.img }"/>" alt=""></a>
									<div class="caption cntr">
										<h5>${ item.name }</h5>
										<h4>
											<a class="defaultBtn" href="product_details.html"
												title="Click to view"><span class="icon-zoom-in"></span></a>
											<a class="shopBtn" href="<c:url value="/AddCart/${ item.id_product }"/>" title="add to cart"><span
												class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />₫</span>
										</h4>
									</div>
								</div>
							</li>

							<c:if
								test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
					</ul>
					<c:if test="${ (loop.index + 1) < products.size() }">
						<ul class="thumbnails">
					</c:if>
				</c:if>

				</c:forEach>

				</c:if>
			</div>
		</div>
		<hr>
		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">Xem thêm <span
				class="icon-plus"></span></a> Tất cả sản phẩm
		</div>
	</div>
	</div>
	<!-- 
Clients 
-->
	<section class="our_client">
		<hr class="soften" />
		<h4 class="title cntr">
			<span class="text">Manufactures</span>
		</h4>
		<hr class="soften" />
		<div class="row">
			<div class="span2">
				<a href="#"><img alt=""
					src=" <c:url value="/assets/users/img/1.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src=" <c:url value="/assets/users/img/2.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src=" <c:url value="/assets/users/img/3.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src=" <c:url value="/assets/users/img/4.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src=" <c:url value="/assets/users/img/5.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src=" <c:url value="/assets/users/img/6.png"/>"></a>
			</div>
		</div>
	</section>


































</body>