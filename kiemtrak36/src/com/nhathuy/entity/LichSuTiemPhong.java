package com.nhathuy.entity;

import java.sql.Date;

public class LichSuTiemPhong {
	private String maKH;
	private String maVacxin;
	private int STTMui;
	private Date ngayTiemPhong;
	private Date ngayHenTiepTheo;

	public LichSuTiemPhong() {
	}

	public LichSuTiemPhong(String maKH, String maVacxin, int sTTMui, Date ngayTiemPhong, Date ngayHenTiepTheo) {
		this.maKH = maKH;
		this.maVacxin = maVacxin;
		STTMui = sTTMui;
		this.ngayTiemPhong = ngayTiemPhong;
		this.ngayHenTiepTheo = ngayHenTiepTheo;
	}

	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getMaVacxin() {
		return maVacxin;
	}

	public void setMaVacxin(String maVacxin) {
		this.maVacxin = maVacxin;
	}

	public int getSTTMui() {
		return STTMui;
	}

	public void setSTTMui(int sTTMui) {
		STTMui = sTTMui;
	}

	public Date getNgayTiemPhong() {
		return ngayTiemPhong;
	}

	public void setNgayTiemPhong(Date ngayTiemPhong) {
		this.ngayTiemPhong = ngayTiemPhong;
	}

	public Date getNgayHenTiepTheo() {
		return ngayHenTiepTheo;
	}

	public void setNgayHenTiepTheo(Date ngayHenTiepTheo) {
		this.ngayHenTiepTheo = ngayHenTiepTheo;
	}

	@Override
	public String toString() {
		return String.format("LichSuTiemPhong{%s, %s}", getMaKH(), getMaVacxin());
	}
}
