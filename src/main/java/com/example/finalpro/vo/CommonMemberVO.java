package com.example.finalpro.vo;

// 일반회원 테이블 클래스
public class CommonMemberVO {
    private int mem_no;
    private int grade_no;
    private String mem_email;
    private String mem_pw;
    private String mem_nick;
    private String mem_name;
    private String mem_tel;
    private String grade_name;
    private int mem_exp;
    private String mem_date;
    private int rownum;
    private String mem_black_date;
    private String sysdate;
    private int replycnt;
    private int questioncnt;
    private int scrapcnt;
    private int rn;
    private int mem_rpt_cnt;
    private int mem_survey;

    public int getMem_survey() {
        return mem_survey;
    }

    public void setMem_survey(int mem_survey) {
        this.mem_survey = mem_survey;
    }

    public int getMem_rpt_cnt() {
		return mem_rpt_cnt;
	}

	public void setMem_rpt_cnt(int mem_rpt_cnt) {
		this.mem_rpt_cnt = mem_rpt_cnt;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getScrapcnt() {
        return scrapcnt;
    }

    public void setScrapcnt(int scrapcnt) {
        this.scrapcnt = scrapcnt;
    }

    public int getReplycnt() {
        return replycnt;
    }

    public void setReplycnt(int replycnt) {
        this.replycnt = replycnt;
    }

    public int getQuestioncnt() {
        return questioncnt;
    }

    public void setQuestioncnt(int questioncnt) {
        this.questioncnt = questioncnt;
    }

    public String getSysdate() {
        return sysdate;
    }

    public void setSysdate(String sysdate) {
        this.sysdate = sysdate;
    }

    public String getMem_black_date() {
        return mem_black_date;
    }

    public void setMem_black_date(String mem_black_date) {
        this.mem_black_date = mem_black_date;
    }

    public int getRownum() {
        return rownum;
    }

    public void setRownum(int rownum) {
        this.rownum = rownum;
    }

    public String getMem_date() {
        return mem_date;
    }

    public void setMem_date(String mem_date) {
        this.mem_date = mem_date;
    }

    public int getMem_exp() {
        return mem_exp;
    }

    public void setMem_exp(int mem_exp) {
        this.mem_exp = mem_exp;
    }

    public String getGrade_name() {
        return grade_name;
    }

    public void setGrade_name(String grade_name) {
        this.grade_name = grade_name;
    }

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public int getGrade_no() {
        return grade_no;
    }

    public void setGrade_no(int grade_no) {
        this.grade_no = grade_no;
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
//
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
                "mem_no=" + mem_no +
                ", grade_no=" + grade_no +
                ", mem_email='" + mem_email + '\'' +
                ", mem_pw='" + mem_pw + '\'' +
                ", mem_nick='" + mem_nick + '\'' +
                ", mem_name='" + mem_name + '\'' +
                ", mem_tel='" + mem_tel + '\'' +
                ", grade_name='" + grade_name + '\'' +
                ", mem_exp=" + mem_exp +
                ", mem_date='" + mem_date + '\'' +
                '}';
    }
}
