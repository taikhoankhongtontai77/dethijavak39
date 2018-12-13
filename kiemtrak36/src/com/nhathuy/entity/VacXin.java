package com.nhathuy.entity;

public class VacXin {
	private String maVacxin;
	private String tenVacxin;
	private int soMui;
	private String moTa;
	private int gia;
	private String tenHangSX;

	public VacXin() {
	}

	public VacXin(String maVacxin, String tenVacxin, int soMui, String moTa, int gia, String tenHangSX) {
		this.maVacxin = maVacxin;
		this.tenVacxin = tenVacxin;
		this.soMui = soMui;
		this.moTa = moTa;
		this.gia = gia;
		this.tenHangSX = tenHangSX;
	}

	public String getMaVacxin() {
		return maVacxin;
	}

	public void setMaVacxin(String maVacxin) {
		this.maVacxin = maVacxin;
	}

	public String getTenVacxin() {
		return tenVacxin;
	}

	public void setTenVacxin(String tenVacxin) {
		this.tenVacxin = tenVacxin;
	}

	public int getSoMui() {
		return soMui;
	}

	public void setSoMui(int soMui) {
		this.soMui = soMui;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getTenHangSX() {
		return tenHangSX;
	}

	public void setTenHangSX(String tenHangSX) {
		this.tenHangSX = tenHangSX;
	}

	@Override
	public String toString() {
		return String.format("Vacxin{id: %s, vacxin: %s}", getMaVacxin(), getTenVacxin());
	}
}
