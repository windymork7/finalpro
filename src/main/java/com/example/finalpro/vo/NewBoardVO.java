package com.example.finalpro.vo;

// 새터 테이블 클래스
public class NewBoardVO {

    private int new_no;
    private int mem_no;
    private int ca_no;
    private String new_title;
    private String new_content;
    private int new_up;
    private int new_rpt_cnt;
    private String new_date;
    private int grade_no;

    public int getNew_no() {
        return new_no;
    }

    public void setNew_no(int new_no) {
        this.new_no = new_no;
    }

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public int getCa_no() {
        return ca_no;
    }

    public void setCa_no(int ca_no) {
        this.ca_no = ca_no;
    }

    public String getNew_title() {
        return new_title;
    }

    public void setNew_title(String new_title) {
        this.new_title = new_title;
    }

    public String getNew_content() {
        return new_content;
    }

    public void setNew_content(String new_content) {
        this.new_content = new_content;
    }

    public int getNew_up() {
        return new_up;
    }

    public void setNew_up(int new_up) {
        this.new_up = new_up;
    }

    public int getNew_rpt_cnt() {
        return new_rpt_cnt;
    }

    public void setNew_rpt_cnt(int new_rpt_cnt) {
        this.new_rpt_cnt = new_rpt_cnt;
    }

    public String getNew_date() {
        return new_date;
    }

    public void setNew_date(String new_date) {
        this.new_date = new_date;
    }

    public int getGrade_no() {
        return grade_no;
    }

    public void setGrade_no(int grade_no) {
        this.grade_no = grade_no;
    }

    @Override
    public String toString() {
        return "NewBoardVO{" +
                "new_no=" + new_no +
                ", mem_no=" + mem_no +
                ", ca_no=" + ca_no +
                ", new_title='" + new_title + '\'' +
                ", new_content='" + new_content + '\'' +
                ", new_up=" + new_up +
                ", new_rpt_cnt=" + new_rpt_cnt +
                ", new_date=" + new_date +
                ", grade_no=" + grade_no +
                '}';
    }
}
