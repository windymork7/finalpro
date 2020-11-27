package com.example.finalpro.vo;

// 댓글 테이블 클래스
public class ReplyBoardVO {

    private int reply_no;
    private int mem_no;
    private int q_no;
    private String reply_content;
    private int reply_up;
    private int reply_pick;
    private String reply_date;
    private int grade_no;
    private int ca_no;
    private int sub_ca_no;
    private int book_ca_no;

    public int getReply_no() {
        return reply_no;
    }

    public void setReply_no(int reply_no) {
        this.reply_no = reply_no;
    }

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public int getQ_no() {
        return q_no;
    }

    public void setQ_no(int q_no) {
        this.q_no = q_no;
    }

    public String getReply_content() {
        return reply_content;
    }

    public void setReply_content(String reply_content) {
        this.reply_content = reply_content;
    }

    public int getReply_up() {
        return reply_up;
    }

    public void setReply_up(int reply_up) {
        this.reply_up = reply_up;
    }

    public int getReply_pick() {
        return reply_pick;
    }

    public void setReply_pick(int reply_pick) {
        this.reply_pick = reply_pick;
    }

    public String getReply_date() {
        return reply_date;
    }

    public void setReply_date(String reply_date) {
        this.reply_date = reply_date;
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

    @Override
    public String toString() {
        return "ReplyBoardVO{" +
                "reply_no=" + reply_no +
                ", mem_no=" + mem_no +
                ", q_no=" + q_no +
                ", reply_content='" + reply_content + '\'' +
                ", reply_up=" + reply_up +
                ", reply_pick=" + reply_pick +
                ", reply_date=" + reply_date +
                ", grade_no=" + grade_no +
                ", ca_no=" + ca_no +
                ", sub_ca_no=" + sub_ca_no +
                ", book_ca_no=" + book_ca_no +
                '}';
    }
}
