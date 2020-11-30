package com.example.finalpro.vo;

public class BusinessMemberVO {

    private int biz_no;
    private String biz_pw;
    private String biz_trademark;
    private String biz_name;
    private String biz_tel;
    private String biz_email;
    private String biz_address;

    public int getBiz_no() {
        return biz_no;
    }

    public void setBiz_no(int biz_no) {
        this.biz_no = biz_no;
    }


    public String getBiz_pw() {
        return biz_pw;
    }

    public void setBiz_pw(String biz_pw) {
        this.biz_pw = biz_pw;
    }

    public String getBiz_trademark() {
        return biz_trademark;
    }

    public void setBiz_trademark(String biz_trademark) {
        this.biz_trademark = biz_trademark;
    }

    public String getBiz_name() {
        return biz_name;
    }

    public void setBiz_name(String biz_name) {
        this.biz_name = biz_name;
    }


    public String getBiz_tel() {
        return biz_tel;
    }

    public void setBiz_tel(String biz_tel) {
        this.biz_tel = biz_tel;
    }

    public String getBiz_email() {
        return biz_email;
    }

    public void setBiz_email(String biz_email) {
        this.biz_email = biz_email;
    }

    public String getBiz_address() {
        return biz_address;
    }

    public void setBiz_address(String biz_address) {
        this.biz_address = biz_address;
    }

    @Override
    public String toString() {
        return "BusinessMemberVO{" +
                "biz_no=" + biz_no +
                ", biz_trademark='" + biz_trademark + '\'' +
                ", biz_name='" + biz_name + '\'' +
                ", biz_tel='" + biz_tel + '\'' +
                ", biz_email='" + biz_email + '\'' +
                ", biz_address='" + biz_address + '\'' +
                '}';
    }
}
