package com.example.finalpro.service.reply;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.finalpro.vo.QReplyVO;

public interface QReplyListService {
	public List<QReplyVO> qReplyList(int q_no);
}
