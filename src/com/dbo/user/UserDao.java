package com.dbo.user;

import java.sql.SQLException;
import java.util.List;


/**
 * DAO ½Ó¿Ú
 * @author lamp
 *
 */
public interface UserDao {

	public void add(User t)throws SQLException;
	
	public void delete(String uid)throws SQLException;
	
	public void update(User t)throws SQLException;
	
	public User findById(String uid)throws SQLException;
	
	public List<User> findAll()throws SQLException;
}
















