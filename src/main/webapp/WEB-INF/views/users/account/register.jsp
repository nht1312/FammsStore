<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
<title>ĐĂNG KÝ TÀI KHOẢN</title>
</head>
<body>
	<div class="row">
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>ĐĂNG KÝ TÀI KHOẢN</h5>
						
						<form:form action="dang-ky" method="POST" modelAttribute="users">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="email" class="span3"
										placeholder="Mời nhập Email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3"
										placeholder="Mời nhập mật khẩu" path="password" />
								</div>
							</div>
							<br><div class="control-group">
								<label class="control-label" for="inputEmail">Họ Tên</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder="Mời nhập họ và tên" path="display_name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Địa chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder="Mời nhập địa chỉ" path="address" />
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Đăng ký thành
									viên</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập hệ thống</h5>
						<h1>${ statusLogin }</h1>
						<form:form action="dang-nhap" method="POST" modelAttribute="users">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
								<form:input type="email" class="span3"
										placeholder="Mời nhập email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật
									khẩu</label>
								<div class="controls">
								<form:input type="password" class="span3"
										placeholder="Mời nhập mật khẩu" path="password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng nhập</button>
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
