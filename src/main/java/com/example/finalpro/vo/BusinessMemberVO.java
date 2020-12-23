package com.example.finalpro.vo;

public class BusinessMemberVO {

    private String biz_no;
    private String biz_pw;
    private String biz_trademark;
    private String biz_name;
    private String biz_tel;
    private String biz_email;
    private String biz_address;
    private String biz_detail_address;
    private int biz_state;
    private String biz_date;
    private int rn;

    public int getRn() {
        return rn;
    }

    public void setRn(int rn) {
        this.rn = rn;
    }

    public int getBiz_state() {
        return biz_state;
    }

    public void setBiz_state(int biz_state) {
        this.biz_state = biz_state;
    }

    public String getBiz_date() {
        return biz_date;
    }

    public void setBiz_date(String biz_date) {
        this.biz_date = biz_date;
    }

    public String getBiz_no() {
        return biz_no;
    }

    public void setBiz_no(String biz_no) {
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

    public String getBiz_detail_address() {
        return biz_detail_address;
    }

    public void setBiz_detail_address(String biz_detail_address) {
        this.biz_detail_address = biz_detail_address;
    }

    @Override
    public String toString() {
        return "BusinessMemberVO{" +
                "biz_no=" + biz_no +
                ", biz_pw='" + biz_pw + '\'' +
                ", biz_trademark='" + biz_trademark + '\'' +
                ", biz_name='" + biz_name + '\'' +
                ", biz_tel='" + biz_tel + '\'' +
                ", biz_email='" + biz_email + '\'' +
                ", biz_address='" + biz_address + '\'' +
                ", biz_detail_address='" + biz_detail_address + '\'' +
                '}';
    }
}
