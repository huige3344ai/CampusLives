package com.dbo.point;

import java.sql.SQLException;
import java.util.List;


/**
 * DAO ½Ó¿Ú
 * @author lamp
 *
 */
public interface PointDao {

	public void add(Point t)throws SQLException;
	
	public void delete(String id)throws SQLException;
	
	public void update(Point t)throws SQLException;
	
	public Point findById(String uid)throws SQLException;
	
	public List<Point> findAll()throws SQLException;
}
















