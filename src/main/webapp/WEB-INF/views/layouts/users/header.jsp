<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%@include file ="/WEB-INF/views/layouts/users/taglib.jsp" %>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="index.html"><span>Twitter Bootstrap
						ecommerce template</span> <img
					src="<c:url value="/assets/users/img/art.png" />"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Helloooo
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalQuantyCart }"/>Đ <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
				<ul class="nav">
			  <li class=""><a href='<c:url value="/trang-chu/"/>'>Trang chủ	  </a></li>
			   <li class=""><a href="https://th.bing.com/th/id/R.4ff9e09aed9a4d6d76b603297746f1a3?rik=f4SJqxbXRWCATg&riu=http%3a%2f%2fimage.slidesharecdn.com%2fgioithieukenhtruyenhinhsaotv-150701073013-lva1-app6891%2f95%2fgioi-thieu-kenh-truyen-hinh-saotv-1-638.jpg%3fcb%3d1435736158&ehk=bDE3%2fJuTg4bVSwbGco%2fbdhjvggJTwsIGeGyJKOo56wc%3d&risl=&pid=ImgRaw&r=0">Giới thiệu      </a></li>
			  <li class=""><a href='<c:url value="/san-pham/1"/>'>Sản phẩm      </a></li>
			 
			  <li class=""><a href="four-col.html">Liên hê      </a></li>
			  <li class=""><a href="four-col.html">Ưu đãi    </a></li>
			  
			  <li class=""><a href='<c:url value="/Gio-hang"/>'>Giỏ hàng      </a></li>
			</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				<ul class="nav pull-right">
				<c:if test="${ empty LoginInfo }">
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><span class="icon-lock"></span>
							Đăng Nhập <b class="caret"></b></a>
						<div class="dropdown-menu">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="inputEmail"
										placeholder="Email">
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="inputPassword"
										placeholder="Password">
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">
										Remember me
									</label>
									<button type="submit" class="shopBtn btn-block">Sign
										in</button>
								</div>
							</form>
						</div></li>
						</c:if>
						<c:if test="${ not empty LoginInfo }">
							<li><a href="#">${ LoginInfo.display_name } <b
							class="caret"></b></a></li>
						</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>