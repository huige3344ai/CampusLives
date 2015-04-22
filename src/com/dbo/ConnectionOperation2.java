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
	    //添加数据,增加活动或者申请      1,2
	       public static boolean insertData(Object ob,int i){
	    	   
	    	   //---------------
	    	   Connection conn = null;
				PreparedStatement ps = null;	
				String sql;
				conn = ConnectionManager.getConnection();
				
				
	    	   //---------------
		  	
		  	if(i==1){//插入活动表
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
		  	    else{//插入报名表
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
	  
	 


	//删除数据,删除申请表的数据   333333333333
	  public static boolean deleteApply(int no){//根据申请号删除
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


	//删除数据,删除活动表的数据4444444444
	  public static boolean deleteActivity(String no){//根据活动号删除
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
	   //修改 活动表 5555555555555
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
	   
	   //查询数据，查询活动或者报名情况66666666666
	   public static Vector queryData(String sql)
	   {

          
	   Connection conn=  ConnectionManager.getConnection();
	  
	   //声明保存查询结果的Vector对象
	   Vector data=new Vector();
	    try {
	          Statement stmt= conn.createStatement();
	          //执行查询sql语句返回查询的结果集
	          ResultSet rs=stmt.executeQuery(sql);
	          //rs结果集中还有下一条结果
	          while(rs.next())
	          {
	          //保存查询结果集中每行数据的Vector对象
	              Vector line= new Vector();
	              //查询结果每一行数据保存在LIne对象中
	               
	              for(int i=1;i<=rs.getMetaData().getColumnCount();i++)
	              {
	              line.add(rs.getObject(i));
	              ///////////////////////////////////////////////////////////////////
	            
	              }
	          //将每行数据的line对象添加到data对象中
	              
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
