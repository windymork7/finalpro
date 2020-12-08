package com.example.finalpro.vo;

public class QReplyVO {

	private int reply_no;
	private int mem_no;
	private int q_no;
	private String reply_content;
	private int reply_up;
	private int reply_pick;
	private int reply_rpt_cnt;
	private String reply_date;
	private String q_title;
	private String mem_nick;
	private int q_up;

	public int getQ_up() {
		return q_up;
	}

	public void setQ_up(int q_up) {
		this.q_up = q_up;
	}

	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
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
	public int getReply_rpt_cnt() {
		return reply_rpt_cnt;
	}
	public void setReply_rpt_cnt(int reply_rpt_cnt) {
		this.reply_rpt_cnt = reply_rpt_cnt;
	}
	public String getReply_date() {
		return reply_date;
	}
	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}
	@Override
	public String toString() {
		return "QReplyVO [reply_no=" + reply_no + ", mem_no=" + mem_no + ", q_no=" + q_no + ", reply_content="
				+ reply_content + ", reply_up=" + reply_up + ", reply_pick=" + reply_pick + ", reply_rpt_cnt="
				+ reply_rpt_cnt + ", reply_date=" + reply_date + "]";
	}
	
	
	
}
