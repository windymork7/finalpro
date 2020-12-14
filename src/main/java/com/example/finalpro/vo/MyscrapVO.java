package com.example.finalpro.vo;


public class MyscrapVO {
    private int my_scrap_no;    //스크랩번호 ( 기본키 )
    private int q_no;           //게시글 번호 ( 외래키 )
    private int mem_no;         //스크랩한 회원번호 ( 외래키 )
    private String my_scrap_memo;   //스크랩글에대한 메모 ( 아마 안쓸듯 )
    private String my_scrap_date;   //스크랩한 날짜
    private String q_title;
    private int rownum;
    private String book_ca_name;
    private String sub_ca_name;
    private int q_up;
    private String q_date;
    private int rn;
    private int sub_ca_no;


    public int getSub_ca_no() {
        return sub_ca_no;
    }

    public void setSub_ca_no(int sub_ca_no) {
        this.sub_ca_no = sub_ca_no;
    }

    public int getRn() {
        return rn;
    }

    public void setRn(int rn) {
        this.rn = rn;
    }

    public String getQ_date() {
        return q_date;
    }

    public void setQ_date(String q_date) {
        this.q_date = q_date;
    }

    public int getQ_up() {
        return q_up;
    }

    public void setQ_up(int q_up) {
        this.q_up = q_up;
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

    public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public int getMy_scrap_no() {
        return my_scrap_no;
    }

    public void setMy_scrap_no(int my_scrap_no) {
        this.my_scrap_no = my_scrap_no;
    }

    public int getQ_no() {
        return q_no;
    }

    public void setQ_no(int q_no) {
        this.q_no = q_no;
    }

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public String getMy_scrap_memo() {
        return my_scrap_memo;
    }

    public void setMy_scrap_memo(String my_scrap_memo) {
        this.my_scrap_memo = my_scrap_memo;
    }

    public String getMy_scrap_date() {
        return my_scrap_date;
    }

    public void setMy_scrap_date(String my_scrap_date) {
        this.my_scrap_date = my_scrap_date;
    }

    @Override
    public String toString() {
        return "MyscrapVO{" +
                "my_scrap_no=" + my_scrap_no +
                ", q_no=" + q_no +
                ", mem_no=" + mem_no +
                ", my_scrap_memo='" + my_scrap_memo + '\'' +
                ", my_scrap_date='" + my_scrap_date + '\'' +
                ", q_title='" + q_title + '\'' +
                ", rownum=" + rownum +
                ", book_ca_name='" + book_ca_name + '\'' +
                ", sub_ca_name='" + sub_ca_name + '\'' +
                ", q_up=" + q_up +
                ", q_date='" + q_date + '\'' +
                ", rn=" + rn +
                '}';
    }
}
