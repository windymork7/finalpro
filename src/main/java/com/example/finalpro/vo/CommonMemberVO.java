package com.example.finalpro.vo;

// 일반회원 테이블 클래스
public class CommonMemberVO {
    private int mem_no;
    private String mem_email;
    private String mem_pw;
    private String mem_nick;
    private String mem_name;
    private String mem_tel;

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public String getMem_email() {
        return mem_email;
    }

    public void setMem_email(String mem_email) {
        this.mem_email = mem_email;
    }

    public String getMem_pw() {
        return mem_pw;
    }

    public void setMem_pw(String mem_pw) {
        this.mem_pw = mem_pw;
    }

    public String getMem_nick() {
        return mem_nick;
    }

    public void setMem_nick(String mem_nick) {
        this.mem_nick = mem_nick;
    }

    public String getMem_name() {
        return mem_name;
    }

    public void setMem_name(String mem_name) {
        this.mem_name = mem_name;
    }

    public String getMem_tel() {
        return mem_tel;
    }

    public void setMem_tel(String mem_tel) {
        this.mem_tel = mem_tel;
    }

    @Override
    public String toString() {
        return "CommonMemberVO{" +
                "mem_email='" + mem_email + '\'' +
                ", mem_pw='" + mem_pw + '\'' +
                ", mem_nick='" + mem_nick + '\'' +
                ", mem_name='" + mem_name + '\'' +
                ", mem_tel='" + mem_tel + '\'' +
                '}';
    }
}
