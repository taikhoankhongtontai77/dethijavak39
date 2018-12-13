package com.nhathuy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.nhathuy.daoipm.BenhImp;
import com.nhathuy.entity.Benh;

public class BenhDAO implements BenhImp {

	@Override
	public ArrayList<Benh> layDanhSach() {
		ArrayList<Benh> ds = new ArrayList<>();
		Connection conn = DBConnection.open();
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			statement = conn.prepareStatement("select * from Benh");
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				ds.add(new Benh(resultSet.getString("maBenh"), resultSet.getString("tenBenh"), resultSet.getString("moTa")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, statement, resultSet);
		}

		return ds;
	}

	public boolean kiemTraTrungMa(String mabenh) {
		Connection conn = DBConnection.open();
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			statement = conn.prepareStatement("select maBenh from Benh where maBenh = ?");
			statement.setString(1, mabenh);
			resultSet = statement.executeQuery();
			return resultSet.next();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, statement, resultSet);
		}

		return false;
	}

	@Override
	public boolean themMoiBenh(String maBenh, String tenBenh, String moTa) {
		Connection conn = DBConnection.open();
		PreparedStatement statement = null;

		if (kiemTraTrungMa(maBenh)) {
			return false;
		}

		try {
			statement = conn.prepareStatement("insert into Benh(maBenh, tenBenh, moTa) values(?, ?, ?)");
			statement.setString(1, maBenh);
			statement.setString(2, tenBenh);
			statement.setString(3, moTa);
			int row = statement.executeUpdate();
			System.out.println("số bệnh đã thêm: " + row);

			return row > 0 ? true : false;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, statement, null);
		}

		return false;
	}

	@Override
	public boolean capNhat(String maBenh, String tenBenh, String moTa) {
		Connection conn = DBConnection.open();
		PreparedStatement statement = null;

		try {
			statement = conn.prepareStatement("update Benh set tenBenh = ?, moTa = ? where maBenh = ?");
			statement.setString(1, tenBenh);
			statement.setString(2, moTa);
			statement.setString(3, maBenh);
			int row = statement.executeUpdate();
			System.out.println("-------- số bệnh đã cập nhật: " + row);

			return row > 0 ? true : false;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, statement, null);
		}

		return false;
	}

	@Override
	public Benh timBenhTheoMa(String mabenh) {
		Connection conn = DBConnection.open();
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			statement = conn.prepareStatement("select * from Benh where maBenh = ?");
			statement.setString(1, mabenh);
			resultSet = statement.executeQuery();
			if (resultSet.next()) {
				return new Benh(resultSet.getString("maBenh"), resultSet.getString("tenBenh"), resultSet.getString("moTa"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, statement, resultSet);
		}

		return null;
	}
}
