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
		//자바파일이라 JSP에서와 다르게 입셉션 발생한다! -> try~catch 쓰기
		try {
			//1. 드라이버 로딩
			Class.forName(driver); //자바에서는 입셉션 떠서 try~catch로 처리했지만 JSP는 엔진이 자동으로 처리해서 오류안뜬다!
			System.out.println("-->1. 드라이버 로딩 성공!");
			
			//2. Connection 객체 생성
			conn = DriverManager.getConnection(url,user,pass);
			System.out.println("-->2. Connection 성공!");
			
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
