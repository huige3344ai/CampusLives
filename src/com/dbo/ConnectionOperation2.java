package com.dbo;


import java.sql.*;
import java.util.Vector;

import com.bean.ActivityApply;
import com.bean.LoveActivity;

public class ConnectionOperation2 {

		//xinli========================================
	
		//xinli========================================
		  //me===========================
		  private static  Connection con = null;
	   	     private static   Statement sql = null;
		     private static ResultSet rs = null;
		  
	    ////////////////////////////////////////////////////////////
	    //�������,���ӻ��������      1,2
	       public static boolean insertData(Object ob,int i){
	    	   
	    	   //---------------
	    	   Connection conn = null;
				PreparedStatement ps = null;	
				String sql;
				conn = ConnectionManager.getConnection();
				
				
	    	   //---------------
		  	
		  	if(i==1){//������
			  	      LoveActivity loveactivity= (LoveActivity)ob;
		            
				         //-------------

						
       sql ="insert into LoveActivity(ac_id,ac_name,ac_time,ac_place,p_name,p_tel,ac_content) values('"+loveactivity.ac_id+"','"+loveactivity.ac_name+"','"+loveactivity.ac_time+
              "','"+loveactivity.ac_place+"','"+loveactivity.p_name+"','"+loveactivity.p_tel+"','"+loveactivity.ac_content+"')";
						try {
							ps = conn.prepareStatement(sql);
							int rs=ps.executeUpdate();
							ConnectionManager.closeConnection(conn);
							ConnectionManager.closeStatement(ps);
							if (rs > 0) {
					            return true;
					        } else {
					            return false;
					        }
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							return false;
						
						}
		            
		    	}//if
		  	    else{//���뱨����
		  		ActivityApply apply= (ActivityApply)ob;
		          
		  		  String  sqling ="insert into ActivityApply(ac_id,ac_name,u_id,u_name,u_tel)" +
		  		  		"values('"+apply.ac_id+"','"+apply.ac_name+"','"+apply.u_id+
		  	              "','"+apply.u_name+"','"+apply.u_tel+"')";
				         
				  		try {
							ps = conn.prepareStatement(sqling);
							int rs=ps.executeUpdate();
							ConnectionManager.closeConnection(conn);
							ConnectionManager.closeStatement(ps);
							if (rs > 0) {
					            return true;
					        } else {
					            return false;
					        }
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							return false;
						
						}
		  		
		  		
		  	   }//else
	      
	  }//add  apply
	  
	 


	//ɾ������,ɾ������������   333333333333
	  public static boolean deleteApply(int no){//���������ɾ��
		  //------------
			Connection conn = null;
			PreparedStatement ps = null;	
			String sql;
			conn = ConnectionManager.getConnection();
			 sql ="delete from ActivityApply where ap_no='"+no+"'";
			 System.out.print("\n ap_no="+no);
			try {
				ps = conn.prepareStatement(sql);
				int rs=ps.executeUpdate();
				ConnectionManager.closeConnection(conn);
				ConnectionManager.closeStatement(ps);
				if (rs > 0) {
		            return true;
		        } else {
		            return false;
		        }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			
			}
		  //-----------
	     
	  }


	//ɾ������,ɾ����������4444444444
	  public static boolean deleteActivity(String no){//���ݻ��ɾ��
		  Connection conn = null;
			PreparedStatement ps = null;	
			String sql;
			conn = ConnectionManager.getConnection();
			 sql ="delete from LoveActivity where ac_no='"+no+"'";
			try {
				ps = conn.prepareStatement(sql);
				int rs=ps.executeUpdate();
				ConnectionManager.closeConnection(conn);
				ConnectionManager.closeStatement(ps);
				if (rs > 0) {
		            return true;
		        } else {
		            return false;
		        }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			
			}
	  
	  }
	   //�޸� ��� 5555555555555
	   public static boolean updateActivity(String sql)
		   {Connection conn = null;
			PreparedStatement ps = null;	
			conn = ConnectionManager.getConnection();
			try {
				 
				ps = conn.prepareStatement(sql);
				int rs=ps.executeUpdate();
	           ConnectionManager.closeConnection(conn);
				ConnectionManager.closeStatement(ps);
	           if (rs > 0) {
	               return true;
	           } else {
	               return false;
	           }
	       } catch (SQLException ex) {
	           ex.printStackTrace();
	           return false;
	       }
	   }
	   
	   //��ѯ���ݣ���ѯ����߱������66666666666
	   public static Vector queryData(String sql)
	   {

          
	   Connection conn=  ConnectionManager.getConnection();
	  
	   //���������ѯ�����Vector����
	   Vector data=new Vector();
	    try {
	          Statement stmt= conn.createStatement();
	          //ִ�в�ѯsql��䷵�ز�ѯ�Ľ����
	          ResultSet rs=stmt.executeQuery(sql);
	          //rs������л�����һ�����
	          while(rs.next())
	          {
	          //�����ѯ�������ÿ�����ݵ�Vector����
	              Vector line= new Vector();
	              //��ѯ���ÿһ�����ݱ�����LIne������
	               
	              for(int i=1;i<=rs.getMetaData().getColumnCount();i++)
	              {
	              line.add(rs.getObject(i));
	              ///////////////////////////////////////////////////////////////////
	            
	              }
	          //��ÿ�����ݵ�line������ӵ�data������
	              
	              data.add(line);
	              System.out.print("\n line="+line);
	             
	          }
	          
	          rs.close();
	          stmt.close();
	          conn.close();
	          return data;
	      } catch (SQLException ex) {
	          return null;
	       }
	   }      
	   
	   
		//me=======================
	
}
