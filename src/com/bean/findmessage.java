package com.bean;

import com.dbo.useDao;

public class findmessage {
	private String findername;//遗失者
	private String findname;//遗失物
	private String description;//描述
	private String address;//地址
	private String tel;//电话
	private String promulgator;//发布者
	
	public  findmessage(){}
	
	public String getfindername() {
		return findername;
	}
	public void setfindername(String findername) {
		this.findername = findername;
	}
	public String getfindname() {
		return findname;
	}
	public void setfindname(String findname) {
		this.findname = findname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPromulgator() {
		return promulgator;
	}
	public void setPromulgator(String promulgator) {
		this.promulgator = promulgator;
	}
	
				

}
