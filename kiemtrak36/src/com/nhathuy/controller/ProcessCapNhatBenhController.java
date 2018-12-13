package com.nhathuy.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhathuy.service.BenhService;

@WebServlet("/ProcessCapNhatBenhController")
public class ProcessCapNhatBenhController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String mabenh = request.getParameter("mabenh");
		if (mabenh != null) {
			request.setAttribute("currentBenh", new BenhService().timBenhTheoMa(mabenh));
		} else {
			String maBenh = request.getParameter("txtMaBenh");
			String tenBenh = request.getParameter("txtTenBenh");
			String moTa = request.getParameter("txtMoTa");
			boolean ktra = new BenhService().capNhat(maBenh, tenBenh, moTa);
			if (ktra) {
				request.setAttribute("msgCapNhatBenh", "Cập nhật thành công!");
			} else {
				request.setAttribute("msgCapNhatBenh", "Cập nhật thất bại!");
			}
		}
		request.getRequestDispatcher("suathongtinbenh.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
