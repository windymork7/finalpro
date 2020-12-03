package com.example.finalpro.serviceImpl.reply;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.QReplyDAO;
import com.example.finalpro.service.reply.QReplyListService;
import com.example.finalpro.vo.QReplyVO;

@Service
public class QReplyListImpl implements QReplyListService{
	
	@Autowired
	QReplyDAO qReplyDAO;

	@Override
	public List<QReplyVO> qReplyList(int q_no) {
		
		List<QReplyVO> list = qReplyDAO.qReplyList(q_no);
		return list;
	}
	
	

}
