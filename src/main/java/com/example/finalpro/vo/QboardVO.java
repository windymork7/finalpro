package com.example.finalpro.vo;

// 게시글 테이블 클래스
public class QboardVO {

    private int q_no;
    private int mem_no;
    private int reply_no;
    private int reply_pick;
    private String sub_ca_name;
    private String book_ca_name;
    private String mem_nick;
    private int sub_ca_no;
    private int book_ca_no;
    private String q_title;
    private String q_content;
    private String q_file;
    private int q_exp;
    private int q_sos;
    private int q_up;
    private int q_rpt_cnt;
    private String q_date;
    private int q_admin_state;
    private int grade_no;
    private int ca_no;
    private int rownum;
    private String ca_name;
    private String reply_Edit_Content;
    private int book_scrap_cnt;
    private int rn;
    /*여기부터 새터 */
    private int new_no;
    private int new_up;
    private int new_rpt_cnt;
    private String new_date;
    private String new_title;
    private String new_content;
    private int new_reply_no;
    private int new_reply_up;
    private int new_reply_pick;
    private int new_reply_rpt_cnt;
    private int new_pick_state;
    private String new_reply_date;
    private int new_reply_edit_no;
    private String new_reply_edit_content;
    private String new_reply_edit_date;

    private String new_file;
    private String new_reply_content;

    public int getNew_reply_edit_no() {
        return new_reply_edit_no;
    }

    public void setNew_reply_edit_no(int new_reply_edit_no) {
        this.new_reply_edit_no = new_reply_edit_no;
    }

    public String getNew_reply_edit_content() {
        return new_reply_edit_content;
    }

    public void setNew_reply_edit_content(String new_reply_edit_content) {
        this.new_reply_edit_content = new_reply_edit_content;
    }

    public String getNew_reply_edit_date() {
        return new_reply_edit_date;
    }

    public void setNew_reply_edit_date(String new_reply_edit_date) {
        this.new_reply_edit_date = new_reply_edit_date;
    }

    public String getNew_reply_content() {
        return new_reply_content;
    }

    public void setNew_reply_content(String new_reply_content) {
        this.new_reply_content = new_reply_content;
    }

    public String getNew_file() {
        return new_file;
    }

    public void setNew_file(String new_file) {
        this.new_file = new_file;
    }

    public int getNew_pick_state() {
		return new_pick_state;
	}

	public void setNew_pick_state(int new_pick_state) {
		this.new_pick_state = new_pick_state;
	}

	public int getNew_reply_no() {
        return new_reply_no;
    }

    public void setNew_reply_no(int new_reply_no) {
        this.new_reply_no = new_reply_no;
    }

    public int getNew_reply_up() {
        return new_reply_up;
    }

    public void setNew_reply_up(int new_reply_up) {
        this.new_reply_up = new_reply_up;
    }

    public int getNew_reply_pick() {
        return new_reply_pick;
    }

    public void setNew_reply_pick(int new_reply_pick) {
        this.new_reply_pick = new_reply_pick;
    }

    public int getNew_reply_rpt_cnt() {
        return new_reply_rpt_cnt;
    }

    public void setNew_reply_rpt_cnt(int new_reply_rpt_cnt) {
        this.new_reply_rpt_cnt = new_reply_rpt_cnt;
    }

    public String getNew_reply_date() {
        return new_reply_date;
    }

    public void setNew_reply_date(String new_reply_date) {
        this.new_reply_date = new_reply_date;
    }

    public int getNew_no() {
        return new_no;
    }

    public void setNew_no(int new_no) {
        this.new_no = new_no;
    }

    public int getNew_up() {
        return new_up;
    }

    public void setNew_up(int new_up) {
        this.new_up = new_up;
    }

    public int getNew_rpt_cnt() {
        return new_rpt_cnt;
    }

    public void setNew_rpt_cnt(int new_rpt_cnt) {
        this.new_rpt_cnt = new_rpt_cnt;
    }

    public String getNew_date() {
        return new_date;
    }

    public void setNew_date(String new_date) {
        this.new_date = new_date;
    }

    public String getNew_title() {
        return new_title;
    }

    public void setNew_title(String new_title) {
        this.new_title = new_title;
    }

    public String getNew_content() {
        return new_content;
    }

    public void setNew_content(String new_content) {
        this.new_content = new_content;
    }

    public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getBook_scrap_cnt() {
		return book_scrap_cnt;
	}

	public void setBook_scrap_cnt(int book_scrap_cnt) {
		this.book_scrap_cnt = book_scrap_cnt;
	}

	public String getCa_name() {
		return ca_name;
	}

	public void setCa_name(String ca_name) {
		this.ca_name = ca_name;
	}

	public int getRownum() {
        return rownum;
    }

    public void setRownum(int rownum) {
        this.rownum = rownum;
    }

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

    public int getReply_no() {
        return reply_no;
    }

    public void setReply_no(int reply_no) {
        this.reply_no = reply_no;
    }

    public int getReply_pick() {
        return reply_pick;
    }

    public void setReply_pick(int reply_pick) {
        this.reply_pick = reply_pick;
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

    public int getQ_exp() {
        return q_exp;
    }

    public void setQ_exp(int q_exp) {
        this.q_exp = q_exp;
    }

    public String getReply_Edit_Content() {
        return reply_Edit_Content;
    }

    public void setReply_Edit_Content(String reply_Edit_Content) {
        this.reply_Edit_Content = reply_Edit_Content;
    }

    public String getQ_file() {
        return q_file;
    }

    public void setQ_file(String q_file) {
        this.q_file = q_file;
    }

    /*
    @Override
    public String toString() {
        return "QboardVO{" +
                "q_no=" + q_no +
                ", mem_no=" + mem_no +
                ", reply_no=" + reply_no +
                ", reply_pick=" + reply_pick +
                ", sub_ca_name='" + sub_ca_name + '\'' +
                ", book_ca_name='" + book_ca_name + '\'' +
                ", mem_nick='" + mem_nick + '\'' +
                ", sub_ca_no=" + sub_ca_no +
                ", book_ca_no=" + book_ca_no +
                ", q_title='" + q_title + '\'' +
                ", q_content='" + q_content + '\'' +
                ", q_file='" + q_file + '\'' +
                ", q_exp=" + q_exp +
                ", q_sos=" + q_sos +
                ", q_up=" + q_up +
                ", q_rpt_cnt=" + q_rpt_cnt +
                ", q_date='" + q_date + '\'' +
                ", q_admin_state=" + q_admin_state +
                ", grade_no=" + grade_no +
                ", ca_no=" + ca_no +
                ", rownum=" + rownum +
                ", ca_name='" + ca_name + '\'' +
                ", reply_Edit_Content='" + reply_Edit_Content + '\'' +
                '}';
    }
    */

    @Override
    public String toString() {
        return "QboardVO{" +
                "mem_no=" + mem_no +
                ", mem_nick='" + mem_nick + '\'' +
                ", grade_no=" + grade_no +
                ", ca_no=" + ca_no +
                ", rownum=" + rownum +
                ", ca_name='" + ca_name + '\'' +
                ", rn=" + rn +
                ", new_no=" + new_no +
                ", new_up=" + new_up +
                ", new_rpt_cnt=" + new_rpt_cnt +
                ", new_pick_state=" + new_pick_state +
                ", new_date='" + new_date + '\'' +
                ", new_title='" + new_title + '\'' +
                ", new_content='" + new_content + '\'' +
                ", new_reply_no=" + new_reply_no +
                ", new_reply_up=" + new_reply_up +
                ", new_reply_pick=" + new_reply_pick +
                ", new_reply_rpt_cnt=" + new_reply_rpt_cnt +
                ", new_reply_date='" + new_reply_date + '\'' +
                ", new_file='" + new_file + '\'' +
                ", new_reply_date='" + new_reply_date + '\'' +
                ", new_reply_edit_no='" + new_reply_edit_no + '\'' +
                ", new_reply_edit_content='" + new_reply_edit_content + '\'' +
                ", new_reply_edit_date='" + new_reply_edit_date + '\'' +
                ", new_reply_content='" + new_reply_content + '\'' +
                '}';
    }
}
