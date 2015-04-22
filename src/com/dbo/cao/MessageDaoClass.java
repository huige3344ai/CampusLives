package com.dbo.cao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbo.JdbcTemplete;
import com.dbo.ResultSetHandler;



public class MessageDaoClass implements MessageDao {
	private JdbcTemplete jdbcTemplete;
	public MessageDaoClass(){
		jdbcTemplete = new JdbcTemplete();
	}


	public void add(Message t) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	public void delete(String uid) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	public void update(Message t) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	public Message findById(int num) throws SQLException {
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Message> findAll() throws SQLException {
			String sql = "select * from restaurant";
		
		return (List<Message>)jdbcTemplete.query(sql, new ResultSetHandler() {
			public Object doHandler(ResultSet rs) throws SQLException {
				List<Message> Users = new ArrayList<Message>();
				Message t = null;
				while(rs.next()){
					t = new Message();
					t.setNum(rs.getInt("Num"));
					t.setName(rs.getString("Rname"));
					t.setComments(rs.getString("commemts"));
					t.setImg(rs.getString("images"));
					Users.add(t);
				}
				return Users;
			}
		});
	}

}
