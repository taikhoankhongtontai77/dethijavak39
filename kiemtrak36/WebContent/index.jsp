<%@page import="com.nhathuy.service.BenhService"%>
<%@page import="com.nhathuy.entity.Benh"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Trang chủ</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<%
ArrayList<Benh> dsLoaiBenh = (ArrayList<Benh>) request.getAttribute("dsLoaiBenh");

%>

    <div class="container-fluid">
        <div class="row">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">Trang chủ</a>
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

                <div class="col-12 col-sm-9 col-md-9;">
                    <table class="table table-striped table-bordered">
						<thead>
							<tr style="background-color: #04B4AE;">
								<th>Mã bệnh</th>
								<th>Loại bệnh</th>
								<th>Mô tả</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="benh" items="${dsLoaiBenh }">
								<tr>
									<td>${benh.getMaBenh() }</td>
									<td>${benh.getTenBenh() }</td>
									<td>${benh.getMoTa() }</td>
									<td><a href="ProcessCapNhatBenhController?mabenh=${benh.getMaBenh() }"><button class="btn btn-warning">Cập nhật</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
