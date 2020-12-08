package com.example.finalpro.vo;

public class EditMemberVO {
    private int edit_no;
    private int mem_no;
    private int edit_reply_no;
    private String edit_reply_content;
    private String mem_nick;
    private String edit_title;
    private String edit_content;
    private String edit_img;
    private int edit_view;
    private String edit_date;

    public int getEdit_no() {
        return edit_no;
    }

    public void setEdit_no(int edit_no) {
        this.edit_no = edit_no;
    }

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public String getEdit_title() {
        return edit_title;
    }

    public void setEdit_title(String edit_title) {
        this.edit_title = edit_title;
    }

    public String getMem_nick() {
        return mem_nick;
    }

    public void setMem_nick(String mem_nick) {
        this.mem_nick = mem_nick;
    }

    public String getEdit_content() {
        return edit_content;
    }

    public void setEdit_content(String edit_content) {
        this.edit_content = edit_content;
    }

    public String getEdit_img() {
        return edit_img;
    }

    public void setEdit_img(String edit_img) {
        this.edit_img = edit_img;
    }

    public int getEdit_view() {
        return edit_view;
    }

    public void setEdit_view(int edit_view) {
        this.edit_view = edit_view;
    }

    public String getEdit_date() {
        return edit_date;
    }

    public void setEdit_date(String edit_date) {
        this.edit_date = edit_date;
    }

    public int getEdit_reply_no() {
        return edit_reply_no;
    }

    public void setEdit_reply_no(int edit_reply_no) {
        this.edit_reply_no = edit_reply_no;
    }

    public String getEdit_reply_content() {
        return edit_reply_content;
    }

    public void setEdit_reply_content(String edit_reply_content) {
        this.edit_reply_content = edit_reply_content;
    }

    @Override
    public String toString() {
        return "EditMemberVO{" +
                "edit_no=" + edit_no +
                ", mem_no=" + mem_no +
                ", edit_reply_no=" + edit_reply_no +
                ", edit_reply_content='" + edit_reply_content + '\'' +
                ", mem_nick='" + mem_nick + '\'' +
                ", edit_title='" + edit_title + '\'' +
                ", edit_content='" + edit_content + '\'' +
                ", edit_img='" + edit_img + '\'' +
                ", edit_view=" + edit_view +
                ", edit_date='" + edit_date + '\'' +
                '}';
    }
}
