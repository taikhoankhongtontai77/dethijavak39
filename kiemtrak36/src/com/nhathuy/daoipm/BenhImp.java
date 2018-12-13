package com.nhathuy.daoipm;

import java.util.ArrayList;

import com.nhathuy.entity.Benh;

public interface BenhImp {

	ArrayList<Benh> layDanhSach();
	boolean themMoiBenh(String maBenh, String tenBenh, String moTa);
	boolean capNhat(String maBenh, String tenBenh, String moTa);
	Benh timBenhTheoMa(String mabenh);
}
