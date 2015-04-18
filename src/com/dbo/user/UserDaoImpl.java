package com.dbo.user;

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
public class UserDaoImpl implements UserDao {

	private JdbcTemplete jdbcTemplete;
	public UserDaoImpl(){
		jdbcTemplete = new JdbcTemplete();
	}
	
	/**
	 * ��Ӳ���
	 */
	public void add(User t) throws SQLException {
		String sql = "insert into User(name,description,age) values(?,?,?)";
		jdbcTemplete.update(sql, t.getUname());
	}
	/**
	 * ɾ������
	 */
	public void delete(String tid) throws SQLException {
		String sql = "delete from User where tid=?";
		jdbcTemplete.update(sql, tid);
	}
	/**
	 * ���²���
	 */
	public void update(String uid,String password) throws SQLException {
		String sql = "update User set password=? where uid=?";
		jdbcTemplete.update(sql, password,uid);
	}
	/**
	 * ��ѯ��������
	 */
	
	public User findById(final String uid) throws SQLException {
		String sql = "select nid,uname,password,isadmin from User where uid=?";
		return (User)jdbcTemplete.query(sql, new ResultSetHandler() {
			public Object doHandler(ResultSet rs) throws SQLException {
				User t = null;
				if(rs.next()){
					t = new User();
					t.setNid(rs.getInt("nid"));
					t.setUname(rs.getString("uname"));
					t.setPassword(rs.getString("password"));
					t.setIsadmin(rs.getInt("isadmin"));					
				}
				
					
				return t;
				
			}
		},uid);
	}
	/**
	 * ��ѯ���в�������
	 */
	@SuppressWarnings("unchecked")
	public List<User> findAll() throws SQLException {
		String sql = "select tid,name,description,age from User";
		
		return (List<User>)jdbcTemplete.query(sql, new ResultSetHandler() {
			public Object doHandler(ResultSet rs) throws SQLException {
				List<User> Users = new ArrayList<User>();
				User t = null;
				while(rs.next()){
					t = new User();
					t.setUid(rs.getString("uid"));
					t.setUname(rs.getString("uname"));
					t.setPassword(rs.getString("password"));
					t.setIsadmin(rs.getInt("isadmin"));
				}
				return Users;
			}
		});
	}

	public void update(User t) throws SQLException {
		// TODO Auto-generated method stub
		
	}
	
	public void isEmpty(){
		
		String sql = "select nid,uname,password,isadmin from User where uid=?";
	}

}













