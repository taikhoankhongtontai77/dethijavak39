package com.nhathuy.entity;

public class PhongBenh {
	private String maVacxin;
	private String maBenh;
	private String ghiChu;

	public PhongBenh() {
	}

	public PhongBenh(String maVacxin, String maBenh, String ghiChu) {
		this.maVacxin = maVacxin;
		this.maBenh = maBenh;
		this.ghiChu = ghiChu;
	}

	public String getMaVacxin() {
		return maVacxin;
	}

	public void setMaVacxin(String maVacxin) {
		this.maVacxin = maVacxin;
	}

	public String getMaBenh() {
		return maBenh;
	}

	public void setMaBenh(String maBenh) {
		this.maBenh = maBenh;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	@Override
	public String toString() {
		return String.format("PhongBenh{maVacxin: %s, maBenh: %s}", getMaVacxin(), getMaBenh());
	}
}
