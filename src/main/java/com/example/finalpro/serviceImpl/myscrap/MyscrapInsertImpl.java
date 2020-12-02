package com.example.finalpro.serviceImpl.myscrap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.MyscrapDAO;
import com.example.finalpro.service.myscrap.MyscrapInsertService;

@Service
public class MyscrapInsertImpl implements MyscrapInsertService{
	
	@Autowired
	MyscrapDAO myscrapDAO;

	@Override
	public void myscrapInsert(int mem_no, int q_no) {
		myscrapDAO.myscrapInsert(mem_no, q_no);
	}
	
	
}
