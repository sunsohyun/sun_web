package com.beans.sun_web_project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConn {
	//Field
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521";
	String user = "scott";
	String pass = "tiger";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public DBConn() {
		//�ڹ������̶� JSP������ �ٸ��� �Լ��� �߻��Ѵ�! -> try~catch ����
		try {
			//1. ����̹� �ε�
			Class.forName(driver); //�ڹٿ����� �Լ��� ���� try~catch�� ó�������� JSP�� ������ �ڵ����� ó���ؼ� �����ȶ��!
			System.out.println("-->1. ����̹� �ε� ����!");
			
			//2. Connection ��ü ����
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("-->2. Connection ����!");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
