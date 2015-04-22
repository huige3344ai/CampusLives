package com.dbo.point;

/**
 * 数据模型
 * @author lamp
 *
 */
public class Point {

	private String Num;
	private String name;
	private String Information;
	
	public String getImages() {
		return Images;
	}

	
	public void setImages(String images) {
		Images = images;
	}

	public String getImages2() {
		return Images2;
	}

	public void setImages2(String images2) {
		Images2 = images2;
	}

	private String Images;
	private String Images2;

	public Point() {
		super();
	}

	public String getNum() {
		return Num;
	}

	public void setNum(String num) {
		Num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInformation() {
		return Information;
	}

	public void setInformation(String information) {
		Information = information;
	}
	
	
}
