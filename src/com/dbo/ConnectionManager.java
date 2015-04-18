package com.dbo;

import java.sql.*;



public class ConnectionManager {
	private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private static String DatabaseName="test";
	private static String USER_NAME="root";
	private static String PASSWORD="1234";	
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3309/"+DatabaseName;//数据库名称
	
	//数据库连接
	public static Connection getConnection(){
		
		Connection conn = null;
		try {
			Class.forName(DRIVER_CLASS);
			conn = DriverManager.getConnection(DATABASE_URL,USER_NAME,PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	//关闭连接
	public static void closeConnection(Connection conn){
		try {
			if(conn!=null&&!(conn.isClosed())){		
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	//关闭结果集
	public static void closeResultSet(ResultSet res){
		if(res!=null){
			
			try {
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			res=null;
		}
		
	}
	
	
	//关闭预编译
	public static void closeStatement(PreparedStatement ps){
		if(ps!=null){
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ps = null;
		}
		
	}
	
	//关闭
	public static void close(ResultSet rs,Statement stat,Connection conn){
		try {
			if(rs!=null)rs.close();
			if(stat!=null)stat.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
}
}
