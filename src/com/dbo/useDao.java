package com.dbo;

import java.sql.*;
import java.util.Vector;

public class useDao {
	
	//增加
	public static boolean InsertData (String database,String llostername,String llostname,String lDescription,String lAddress,String lTel,String lPromulgator,String lostername,String lostname,String Description,String Address,String Tel,String Promulgator) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql;
		conn = ConnectionManager.getConnection();
		sql ="insert into "+database+"("+llostername+","+llostname+","+lDescription+","+lAddress+","+lTel+","+lPromulgator+")values('"+lostername+"','"+lostname+"','"+Description+"','"+Address+"','"+Tel+"','"+Promulgator+"')";
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
	public static boolean DeleteData(String database,int id) {
		Connection conn = null;
		PreparedStatement ps = null;	
		String sql;
		conn = ConnectionManager.getConnection();
		 sql ="delete from "+ database+" where id='"+id+"'";
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

	
	
	public static Vector personalData (String database,String Promulgator) {
		Connection conn = ConnectionManager.getConnection();
        Vector data=new Vector();
        PreparedStatement ps = null;
        String sql;
        sql= "Select * from "+database+" where promulgator = '"+Promulgator+"'";
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
	
	
	public static Vector idData (String database,int id) {
		Connection conn = ConnectionManager.getConnection();
        Vector data=new Vector();
        PreparedStatement ps = null;
        String sql;
        sql= "Select * from "+database+" where id = '"+id+"'";
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

	  public static boolean UpdateData(int id,String database,String llostername,String llostname,String lDescription,String lAddress,String lTel,String lostername,String lostname,String Description,String Address,String Tel){
		  Connection conn = null;
			PreparedStatement ps = null;	
			String sql;
			conn = ConnectionManager.getConnection();
			try {
				sql ="update "+database+" set "+llostername+"='"+lostername+"' where id="+id;
				ps = conn.prepareStatement(sql);
	            ps.executeUpdate();
	            sql=" update "+database+" set "+llostname+"='"+lostname+"' where id="+id;
				ps = conn.prepareStatement(sql);
	            ps.executeUpdate();
	            sql="update "+database+" set "+lDescription+"='"+Description+"' where id="+id;
				ps = conn.prepareStatement(sql);
	            ps.executeUpdate();
	            sql="update "+database+" set "+lAddress+"='"+Address+"' where id="+id;
				ps = conn.prepareStatement(sql);
	            ps.executeUpdate();
	            sql="update "+database+" set "+lTel+"='"+Tel+"' where id="+id;
				ps = conn.prepareStatement(sql);
				int rs=ps.executeUpdate();
	            ConnectionManager.closeConnection(conn);
				ConnectionManager.closeStatement(ps);
	            if (rs > 0) {
	                return true;
	            } else {
	                return false;
	            }
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            return false;
	        }
	    }
	
}