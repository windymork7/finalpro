package com.example.finalpro.vo;

// 게시글 테이블 클래스
public class QboardVO {

    private int q_no;
    private int mem_no;
    private String sub_ca_name;
    private String book_ca_name;
    private String mem_nick;
    private int sub_ca_no;
    private int book_ca_no;
    private String q_title;
    private String q_content;
    private int q_sos;
    private int q_up;
    private int q_rpt_cnt;
    private String q_date;
    private int q_admin_state;
    private int grade_no;
    private int ca_no;


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

    public String getMem_nick() {
        return mem_nick;
    }

    public void setMem_nick(String mem_nick) {
        this.mem_nick = mem_nick;
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

    public String getQ_title() {
        return q_title;
    }

    public void setQ_title(String q_title) {
        this.q_title = q_title;
    }

    public String getQ_content() {
        return q_content;
    }

    public void setQ_content(String q_content) {
        this.q_content = q_content;
    }

    public int getQ_sos() {
        return q_sos;
    }

    public void setQ_sos(int q_sos) {
        this.q_sos = q_sos;
    }

    public int getQ_up() {
        return q_up;
    }

    public void setQ_up(int q_up) {
        this.q_up = q_up;
    }

    public int getQ_rpt_cnt() {
        return q_rpt_cnt;
    }

    public void setQ_rpt_cnt(int q_rpt_cnt) {
        this.q_rpt_cnt = q_rpt_cnt;
    }

    public String getQ_date() {
        return q_date;
    }

    public void setQ_date(String q_date) {
        this.q_date = q_date;
    }

    public int getQ_admin_state() {
        return q_admin_state;
    }

    public void setQ_admin_state(int q_admin_state) {
        this.q_admin_state = q_admin_state;
    }

    public int getGrade_no() {
        return grade_no;
    }

    public void setGrade_no(int grade_no) {
        this.grade_no = grade_no;
    }

    public int getCa_no() {
        return ca_no;
    }

    public void setCa_no(int ca_no) {
        this.ca_no = ca_no;
    }

    @Override
    public String toString() {
        return "QboardVO{" +
                "q_no=" + q_no +
                ", mem_no=" + mem_no +
                ", sub_ca_no=" + sub_ca_no +
                ", book_ca_no=" + book_ca_no +
                ", q_title='" + q_title + '\'' +
                ", q_content='" + q_content + '\'' +
                ", q_sos=" + q_sos +
                ", q_up=" + q_up +
                ", q_rpt_cnt=" + q_rpt_cnt +
                ", q_date=" + q_date +
                ", q_admin_state=" + q_admin_state +
                ", grade_no=" + grade_no +
                ", ca_no=" + ca_no +
                '}';
    }
}
