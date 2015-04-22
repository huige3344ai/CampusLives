package com.dbo.cao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.dbo.JdbcTemplete;

public class test {
	
	@SuppressWarnings("unchecked")
	public static void main(String [] agrs) throws SQLException{
		
		JdbcTemplete a = new JdbcTemplete();
		int w =1;
		String sql = "select price from restaurant where Num="+w;
		ResultSet rs = null;
		rs = (ResultSet) a.query1(sql);
		List<Message> Users = new ArrayList<Message>();
		Message t = null;
//		while(rs.next()){
//			t = new Message();
//
//			t.setPrice(rs.getInt("price"));
////			System.out.println("getNum:"+t.getNum());
////			System.out.println("getName:"+t.getName());
////			System.out.println("getComments:"+t.getComments());
//			System.out.println("getImg:"+t.getPrice());
//			
//			Users.add(t);
//		}
		rs.next();
		System.out.println("getImg:"+rs.getInt("price"));
	}

}
