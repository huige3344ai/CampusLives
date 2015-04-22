package com.dbo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Suggestion;

public  class SuggestionHandler  {
	

		private JdbcTemplete jdbcTemplete = new JdbcTemplete();

		
	//添加建议
	public void add(Suggestion t) throws SQLException {
		String sql = "insert into suggestion (sumbit_name,suggestion_textarea) values(?,?)";		
		int i =jdbcTemplete.update(sql,t.getSumbit_name(),t.getSuggestion_textarea());
		System.out.println("int i = "+i);
	}



	//	查询建议
	@SuppressWarnings("unchecked")
	public List<Suggestion> findAll() throws SQLException {
		String sql = "select num,sumbit_name,suggestion_textarea from suggestion";			
		return (List<Suggestion>)jdbcTemplete.query(sql, new ResultSetHandler() {
			public Object doHandler(ResultSet rs) throws SQLException {
				List<Suggestion> suggestion = new ArrayList<Suggestion>();
				Suggestion t = null;
				while(rs.next()){
					t = new Suggestion();
					t.setNum(rs.getInt("num"));
					t.setSumbit_name(rs.getString("sumbit_name"));
					t.setSuggestion_textarea(rs.getString("suggestion_textarea"));
				}
				return suggestion;
			}
		});
	}
	
	//删除处理建议
	public void delete(String num) throws SQLException {
		String sql = "delete from suggestion where num=?";
		jdbcTemplete.update(sql, num);
	}

}
