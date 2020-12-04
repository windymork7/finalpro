package com.example.finalpro.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.finalpro.vo.QReplyVO;

@Mapper
public interface QReplyDAO {

	//답글 셀랙
	public List<QReplyVO> qReplyList(int q_no);
}
