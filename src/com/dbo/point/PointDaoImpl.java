package com.dbo.point;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbo.ConnectionManager;
import com.dbo.JdbcTemplete;
import com.dbo.ResultSetHandler;



/**
 * DAOʵ����
 * @author lamp
 *
 */
public class PointDaoImpl implements PointDao {

	private JdbcTemplete jdbcTemplete;
	public PointDaoImpl(){
		jdbcTemplete = new JdbcTemplete();
	}
	
	/**
	 * ��Ӳ���
	 */
	public void add(Point t) throws SQLException {
		String sql = "insert into Point(Num,Name,Information,Images) values(?,?,?,?)";
		jdbcTemplete.update(sql, t.getNum());
	}
	/**
	 * ɾ������
	 */
	public void delete(String id) throws SQLException {
		String sql = "delete from Point where num=?";
		jdbcTemplete.update(sql, id);
	}
	
	/**
	 * ��ѯ��������
	 */
	
	public Point findById(final String num) throws SQLException {
		String sql = "select Num,name,Information from Point where num=?";
		return (Point)jdbcTemplete.query(sql, new ResultSetHandler() {
			public Object doHandler(ResultSet rs) throws SQLException {
				Point t = null;
				if(rs.next()){
					t = new Point();
					t.setNum(rs.getString("num"));
					t.setName(rs.getString("name"));
					t.setInformation(rs.getString("Information"));	
				}
				
					
				return t;
				
			}
		},num);
	}
	/**
	 * ��ѯ���в�������
	 */
	@SuppressWarnings("unchecked")
	public List<Point> findAll() throws SQLException {
		String sql = "select Num,name,Information,Images,Images2 from point ";
		
		return (List<Point>)jdbcTemplete.query(sql, new ResultSetHandler() {
			public Object doHandler(ResultSet rs) throws SQLException {
				List<Point> Users = new ArrayList<Point>();
				Point t = null;
				while(rs.next()){
					t = new Point();
					t.setNum(rs.getString("num"));
					t.setName(rs.getString("name"));
					t.setInformation(rs.getString("Information"));	
					t.setImages(rs.getString("Images"));
					Users.add(t);
				}
				
				return Users;
			}
		});
	}

	public void update(Point t) throws SQLException {
		// TODO Auto-generated method stub
		
	}

}













