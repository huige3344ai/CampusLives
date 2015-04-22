package com.dbo.cao;

import java.sql.SQLException;
import java.util.List;



public interface MessageDao {
public void add(Message t)throws SQLException;
	
	public void delete(String uid)throws SQLException;
	
	public void update(Message t)throws SQLException;
	
	public Message findById(int num)throws SQLException;
	
	public List<Message> findAll()throws SQLException;
}
