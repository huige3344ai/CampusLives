package com.bean;
import com.dbo.useDao;

	public class lostmessage {
		private String lostername;//遗失者
		private String lostname;//遗失物
		private String description;//描述
		private String address;//地址
		private String tel;//电话
		private String promulgator;//发布者
		
		public  lostmessage(){}

		public String getlostername() {
			return lostername;
		}

		public void setlostername(String lostername) {
			this.lostername = lostername;
		}

		public String getlostname() {
			return lostname;
		}

		public void setlostname(String lostname) {
			this.lostname = lostname;
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
		public String getpromulgator() {
			return promulgator;
		}

		public void setpromulgator(String promulgator) {
			this.promulgator = promulgator;
		}
		

		
		
		
	}
