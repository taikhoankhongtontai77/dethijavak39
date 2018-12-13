<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Sửa thông tin bệnh</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

	<div class="container-fluid">
        <div class="row">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="HomeController">Trang chủ</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="">Giới thiệu</a>
                        </li>
                        <li>
                            <a href="">Liên hệ</a>
                        </li>
                    </ul>

                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" id="txtSearch" class="form-control" placeholder="Search">
                        </div>
                        <button type="button" id="btnSearch" class="btn btn-default">Tìm kiếm</button>
                    </form>

                    <ul class="nav navbar-nav pull-right">
                        <li>
                            <a>
                                <span class="glyphicon glyphicon-user"></span>Nhật Huy
                            </a>
                        </li>

                        <li>
                            <a href="">Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

		<div class="container-fluid" style="padding-top: 100px;">
			<div class="row">
				<div class="list-group col-12 col-sm-3 col-md-3">
					<a href="" class="list-group-item active">Các chức năng</a>
					<a href="HomeController" class="list-group-item list-group-item-action">Danh sách loại bệnh</a>
					<a href="taomoibenh.jsp" class="list-group-item list-group-item-action">Tạo mới bệnh</a>
					<a href="suathongtinbenh.jsp" class="list-group-item list-group-item-action">Sửa thông tin bệnh</a>
					<a href="lichsutiemphong.jsp" class="list-group-item list-group-item-action">Lịch sử tiêm phòng</a>
					<a href="thongkemuitiem.jsp" class="list-group-item list-group-item-action">Thống kê số mũi</a>
				</div>

				<div class="col-12 col-sm-9 col-md-9">
					<div class="row carousel-holder">
						<div class="col-md-0">
						</div>
						<div class="col-md-8">
							<div class="panel panel-default">
								<div class="panel-heading" style="text-align: center; font-size: 170%;"><b>Sửa thông tin bệnh</b></div>
								<div class="panel-body">
									<form method="post" action="ProcessCapNhatBenhController">
										<div>
											<label>Mã bệnh</label>
											<input name="txtMaBenh" disabled="disabled" type="text" class="form-control" value="${currentBenh.getMaBenh() }">
										</div> <br>
										<div>
											<label>Tên loại bệnh</label>
											<input name="txtTenBenh" type="text" class="form-control" value="${currentBenh.getTenBenh() }" placeholder="Tên loại bệnh mới">
										</div> <br>
										<div>
											<label>Mô tả ngắn gọn</label>
											<textarea name="txtMoTa" rows="3" class="form-control" placeholder="Mô tả mới">${currentBenh.getMoTa() }</textarea>
										</div> <br>
										<button type="submit" class="btn btn-success form-control">Cập nhật</button>
										<span>${msgCapNhatBenh }</span>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-4">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
