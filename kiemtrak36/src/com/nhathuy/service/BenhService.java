package com.nhathuy.service;

import java.util.ArrayList;

import com.nhathuy.dao.BenhDAO;
import com.nhathuy.daoipm.BenhImp;
import com.nhathuy.entity.Benh;

public class BenhService implements BenhImp {

	@Override
	public ArrayList<Benh> layDanhSach() {
		return new BenhDAO().layDanhSach();
	}

	@Override
	public boolean themMoiBenh(String maBenh, String tenBenh, String moTa) {
		return new BenhDAO().themMoiBenh(maBenh, tenBenh, moTa);
	}

	@Override
	public boolean capNhat(String maBenh, String tenBenh, String moTa) {
		return new BenhDAO().capNhat(maBenh, tenBenh, moTa);
	}

	@Override
	public Benh timBenhTheoMa(String mabenh) {
		return new BenhDAO().timBenhTheoMa(mabenh);
	}
}
