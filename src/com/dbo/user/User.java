package com.dbo.user;

/**
 * 数据模型
 * @author lamp
 *
 */
public class User {

	private int nid;
	private String uid;
	private String uname;
	private String password;
	private int isadmin;
	public int isIsadmin() {
		return isadmin;
	}

	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
//	public User(int uid, String uname, String password, int isadmin) {
//		super();
//		this.uid = uid;
//		this.uname = uname;
//		this.password = password;
//		this.isadmin = isadmin;
//	}

	public User() {
		super();
	}
	
	
}
