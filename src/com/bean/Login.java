package com.bean;


import java.sql.SQLException;

import com.dbo.user.User;
import com.dbo.user.UserDaoImpl;

public class Login {
	//��¼��ѯ�ж�
	public String  checkLogin(String uid,String password){
		UserDaoImpl td = new UserDaoImpl();
		String result="";
	
		User user = new User();
		try {
			 user = td.findById(String.valueOf(uid));
			
				if(user!=null&&user.getPassword().equals(password)){					
					result= "success";
					
				}else{
					
					result ="false";
				}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result="false";
			
		} 
			

		return result;
	}
	//��ȡ�û�����
public String getUname(String uid){
	UserDaoImpl td = new UserDaoImpl();
	String uname="";

	try {
		User user = td.findById(String.valueOf(uid));
		uname = user.getUname();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return uname;
	
}
	
	//�����������
	public String  exChagePassword(String  uid,String password){
		UserDaoImpl td = new UserDaoImpl();
		String result="";
		try {
			td.update(uid,password);
			result="success";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="false";
		}
		
			

		return result;
	}	
	
	
	public int getIsAm(String  uid){
		UserDaoImpl td = new UserDaoImpl();
		int isad=0;

		try {
			User user = td.findById(String.valueOf(uid));
			isad = user.getIsadmin();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isad;
		
	}
	
}
