package com.dbo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbo.ResultSetHandler;

public class JdbcTemplete {

	/**ConnectionManager
	 * ʵ����ɾ�ĵĳ���
	 * @param sql
	 * @param args
	 */
	public int update(String sql,Object...args){
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn = ConnectionManager.getConnection();
			ps = conn.prepareStatement(sql);
			//����ռλ���Ĳ���
			if(args!=null){
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i+1, args[i]);
					
				}
			}
			return ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
			return -1;
		}finally{
			ConnectionManager.close(null, ps, conn);
		}
	}
	
	
	
	/**
	 * ��ѯ�����ĳ���
	 * @param sql
	 * @param handler
	 * @param args
	 * @return
	 */
	public Object query(String sql,ResultSetHandler handler,Object...args){
		Connection conn  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = ConnectionManager.getConnection();
			ps = conn.prepareStatement(sql);
			if(args!=null){
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i+1, args[i]);
				}
			}
			rs = ps.executeQuery();
			return handler.doHandler(rs);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	public Object query1(String sql,Object...args){
		Connection conn  = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = ConnectionManager.getConnection();
			ps = conn.prepareStatement(sql);
			if(args!=null){
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i+1, args[i]);
				}
			}
			rs = ps.executeQuery();
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}



















