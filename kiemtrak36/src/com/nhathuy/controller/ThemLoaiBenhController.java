package com.nhathuy.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhathuy.service.BenhService;

@WebServlet("/ThemLoaiBenhController")
public class ThemLoaiBenhController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String mabenh = request.getParameter("txtMaBenh");
		String tenbenh = request.getParameter("txtTenBenh");
		String mota = request.getParameter("txtMoTa");

		if (!mabenh.isEmpty() && !tenbenh.isEmpty()) {
			BenhService benhService = new BenhService();
			boolean ktra = benhService.themMoiBenh(mabenh, tenbenh, mota);
			if (ktra) {
				request.setAttribute("msgThemBenh", "Thêm thành công!");
			} else {
				request.setAttribute("msgThemBenh", "Mã bệnh bị trùng. Thêm thất bại!");
			}
		} else {
			request.setAttribute("msgThemBenh", "ko dc để trống thông tin");
		}

		request.getRequestDispatcher("taomoibenh.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
