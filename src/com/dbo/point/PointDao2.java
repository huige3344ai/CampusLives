package com.dbo.point;

import java.sql.*;
import java.util.Vector;

import com.dbo.ConnectionManager;

public class PointDao2 {
	
	//增加
	public static boolean InsertData (String Num,String name,String Information,String Images) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql;
		conn = ConnectionManager.getConnection();
		sql ="insert into Point (Num,name,Information,Images )values('"+Num+"','"+name+"','"+Information+"','"+Images+"')";
		try {
			ps = conn.prepareStatement(sql);
			int rs=ps.executeUpdate();
			ConnectionManager.closeConnection(conn);
			ConnectionManager.closeStatement(ps);
			if (rs > 0) {
	            return true;
	        } else {
	            return false;
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		
		}
	}
	
	//删除
	public static boolean DeleteData(String num) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql;
		conn = ConnectionManager.getConnection();
		 sql ="delete from  Point where id='"+num+"'";
		try {
			ps = conn.prepareStatement(sql);
			int rs=ps.executeUpdate();
			ConnectionManager.closeConnection(conn);
			ConnectionManager.closeStatement(ps);
			if (rs > 0) {
	            return true;
	        } else {
	            return false;
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		
		}
	}
	
	
	//用户查询
	@SuppressWarnings("rawtypes")
	public static Vector queryData (String sql) {
		Connection conn = ConnectionManager.getConnection();
        Vector data=new Vector();
		try {
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			 while(rs.next()){
	                Vector line=new Vector();
	                for(int i =1;i<=7;i++){
	                    line.add(rs.getObject(i));
	                }
	                data.add(line);
			   }
	            rs.close();
	            stmt.close();
	            conn.close();
	            return data;
	        }catch(SQLException ex){
	            ex.printStackTrace();;
	            return null;
	        }
	    }

}