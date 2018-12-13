package com.nhathuy.entity;

import java.sql.Date;

public class KhachHang {
	private String maKH;
	private String hoten;
	private String sdt;
	private String diaChi;
	private Date ngaySinh;
	private String gioiTinh;

	public KhachHang() {
	}

	public KhachHang(String maKH, String hoten, String sdt, String diaChi, Date ngaySinh, String gioiTinh) {
		this.maKH = maKH;
		this.hoten = hoten;
		this.sdt = sdt;
		this.diaChi = diaChi;
		this.ngaySinh = ngaySinh;
		this.gioiTinh = gioiTinh;
	}

	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	@Override
	public String toString() {
		return String.format("KhachHang{id: %s, hoten: %s}", getMaKH(), getHoten());
	}
}
