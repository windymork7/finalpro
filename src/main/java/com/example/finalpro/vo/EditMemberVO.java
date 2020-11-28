package com.example.finalpro.vo;

public class EditMemberVO {
    private int edit_no;
    private int mem_no;
    private String mem_nick;
    private String edit_title;
    private String edit_content;
    private String edit_img;

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

    @Override
    public String toString() {
        return "EditMemberVO{" +
                "edit_no=" + edit_no +
                ", mem_no=" + mem_no +
                ", edit_title='" + edit_title + '\'' +
                ", edit_content='" + edit_content + '\'' +
                '}';
    }
}
