package com.example.finalpro.vo;

public class CategoryVO {

	private int ca_no;
	private int sub_ca_no;
	private int book_ca_no;
	private String ca_name;
	private String sub_ca_name;
	private String book_ca_name;
	
	public int getCa_no() {
		return ca_no;
	}
	public void setCa_no(int ca_no) {
		this.ca_no = ca_no;
	}
	public int getSub_ca_no() {
		return sub_ca_no;
	}
	public void setSub_ca_no(int sub_ca_no) {
		this.sub_ca_no = sub_ca_no;
	}
	public int getBook_ca_no() {
		return book_ca_no;
	}
	public void setBook_ca_no(int book_ca_no) {
		this.book_ca_no = book_ca_no;
	}
	public String getCa_name() {
		return ca_name;
	}
	public void setCa_name(String ca_name) {
		this.ca_name = ca_name;
	}
	public String getSub_ca_name() {
		return sub_ca_name;
	}
	public void setSub_ca_name(String sub_ca_name) {
		this.sub_ca_name = sub_ca_name;
	}
	public String getBook_ca_name() {
		return book_ca_name;
	}
	public void setBook_ca_name(String book_ca_name) {
		this.book_ca_name = book_ca_name;
	}
	@Override
	public String toString() {
		return "CategoryVO [ca_no=" + ca_no + ", sub_ca_no=" + sub_ca_no + ", book_ca_no=" + book_ca_no + ", ca_name="
				+ ca_name + ", sub_ca_name=" + sub_ca_name + ", book_ca_name=" + book_ca_name + "]";
	}
	
	
	
}
