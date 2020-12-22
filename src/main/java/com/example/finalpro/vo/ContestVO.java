package com.example.finalpro.vo;

public class ContestVO {
    private int contest_no;
    private String biz_no;
    private String contest_title;
    private String contest_hosting;
    private String contest_period;
    private String contest_target;
    private String contest_application;
    private String contest_scale;
    private String contest_firstMoney;
    private String contest_tel;
    private String contest_email;
    private String contest_homepage;
    private String contest_content;
    private String contest_img;

    public int getContest_no() {
        return contest_no;
    }

    public void setContest_no(int contest_no) {
        this.contest_no = contest_no;
    }

    public String getBiz_no() {
        return biz_no;
    }

    public void setBiz_no(String biz_no) {
        this.biz_no = biz_no;
    }

    public String getContest_title() {
        return contest_title;
    }

    public void setContest_title(String contest_title) {
        this.contest_title = contest_title;
    }

    public String getContest_hosting() {
        return contest_hosting;
    }

    public void setContest_hosting(String contest_hosting) {
        this.contest_hosting = contest_hosting;
    }

    public String getContest_period() {
        return contest_period;
    }

    public void setContest_period(String contest_period) {
        this.contest_period = contest_period;
    }

    public String getContest_target() {
        return contest_target;
    }

    public void setContest_target(String contest_target) {
        this.contest_target = contest_target;
    }

    public String getContest_application() {
        return contest_application;
    }

    public void setContest_application(String contest_application) {
        this.contest_application = contest_application;
    }

    public String getContest_scale() {
        return contest_scale;
    }

    public void setContest_scale(String contest_scale) {
        this.contest_scale = contest_scale;
    }

    public String getContest_firstMoney() {
        return contest_firstMoney;
    }

    public void setContest_firstMoney(String contest_firstMoney) {
        this.contest_firstMoney = contest_firstMoney;
    }

    public String getContest_tel() {
        return contest_tel;
    }

    public void setContest_tel(String contest_tel) {
        this.contest_tel = contest_tel;
    }

    public String getContest_email() {
        return contest_email;
    }

    public void setContest_email(String contest_email) {
        this.contest_email = contest_email;
    }

    public String getContest_homepage() {
        return contest_homepage;
    }

    public void setContest_homepage(String contest_homepage) {
        this.contest_homepage = contest_homepage;
    }

    public String getContest_content() {
        return contest_content;
    }

    public void setContest_content(String contest_content) {
        this.contest_content = contest_content;
    }

    public String getContest_img() {
        return contest_img;
    }

    public void setContest_img(String contest_img) {
        this.contest_img = contest_img;
    }

    @Override
    public String toString() {
        return "ContestVO{" +
                "contest_no=" + contest_no +
                ", biz_no=" + biz_no +
                ", contest_title='" + contest_title + '\'' +
                ", contest_hosting='" + contest_hosting + '\'' +
                ", contest_period='" + contest_period + '\'' +
                ", contest_target='" + contest_target + '\'' +
                ", contest_application='" + contest_application + '\'' +
                ", contest_scale='" + contest_scale + '\'' +
                ", contest_firstMoney='" + contest_firstMoney + '\'' +
                ", contest_tel='" + contest_tel + '\'' +
                ", contest_email='" + contest_email + '\'' +
                ", contest_homepage='" + contest_homepage + '\'' +
                ", contest_content='" + contest_content + '\'' +
                ", contest_img='" + contest_img + '\'' +
                '}';
    }
}
