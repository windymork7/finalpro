package com.example.finalpro.vo;

public class SurveyVO {
    private int rn;
    private int survey_q_no;
    private int survey_r_no;
    private int survey_r_cnt;
    private String survey_q_content;
    private String survey_r_content;

    public int getRn() {
        return rn;
    }

    public void setRn(int rn) {
        this.rn = rn;
    }

    public int getSurvey_q_no() {
        return survey_q_no;
    }

    public void setSurvey_q_no(int survey_q_no) {
        this.survey_q_no = survey_q_no;
    }

    public int getSurvey_r_no() {
        return survey_r_no;
    }

    public void setSurvey_r_no(int survey_r_no) {
        this.survey_r_no = survey_r_no;
    }

    public int getSurvey_r_cnt() {
        return survey_r_cnt;
    }

    public void setSurvey_r_cnt(int survey_r_cnt) {
        this.survey_r_cnt = survey_r_cnt;
    }

    public String getSurvey_q_content() {
        return survey_q_content;
    }

    public void setSurvey_q_content(String survey_q_content) {
        this.survey_q_content = survey_q_content;
    }

    public String getSurvey_r_content() {
        return survey_r_content;
    }

    public void setSurvey_r_content(String survey_r_content) {
        this.survey_r_content = survey_r_content;
    }

    @Override
    public String toString() {
        return "SurveyVO{" +
                "rn=" + rn +
                ", survey_q_no=" + survey_q_no +
                ", survey_r_no=" + survey_r_no +
                ", survey_r_cnt=" + survey_r_cnt +
                ", survey_q_content='" + survey_q_content + '\'' +
                ", survey_r_content='" + survey_r_content + '\'' +
                '}';
    }
}
