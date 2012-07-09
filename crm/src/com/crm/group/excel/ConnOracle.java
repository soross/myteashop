package com.crm.group.excel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ConnOracle {
	/**
	 *私有构造函数
	 */
	private ConnOracle(){
		
	}
	/** 
	 * 获得连接
	 */
	public static Connection getConn(){
		String url = "";
		String user = "";
		String pswd = "";
		String driver = "";
		Connection  conn = null;
		try{
			driver = "oracle.jdbc.driver.OracleDriver";
			url = "jdbc:oracle:thin:@localhost:1521:oracle";
			user = "crm";
			pswd = "crm";
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url,user,pswd);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
		return conn;
	}
	/**
	 *执行事务
	 */
	public static boolean TranExecSQL(String[] sql){
		boolean flag = false;
		Connection conn = null;
		Statement stmt = null;
		try{
			conn = ConnOracle.getConn();
			conn.setAutoCommit(false);
			stmt = conn.createStatement();
			for (int i = 0; i < sql.length; i++){
				if (sql[i] != null)
					stmt.addBatch(sql[i]);
			}
			int rtn[] = stmt.executeBatch();
			conn.commit();
			conn.setAutoCommit(true);
			flag = true;
		}catch(Exception ex){
			ex.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			flag = false;
		}finally{
			try{
				if (stmt != null){
					stmt.close();
				}
				if (conn != null){
					conn.close();
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return flag;
	}
	public static void main(String []args){
		Connection conn = ConnOracle.getConn();
		System.out.println(conn);
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		}

		
	}
}
