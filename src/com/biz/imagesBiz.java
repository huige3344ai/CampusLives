package com.biz;

import com.sun.org.apache.commons.digester.rss.Image;

public class imagesBiz {
		public int getTotalPages(int pageSize){
			int count = 4;
			int totalpages=0;
			totalpages = (count%pageSize==0)?(count/pageSize):(count/pageSize+1);
			return totalpages;
			
			
			
		}
		public int[] Pageimages(int pageSize){
			int totalPage = this.getTotalPages(pageSize);
			
			int[] num = new int[10];
			
			
			return num;
		}
}
