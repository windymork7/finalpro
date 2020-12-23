package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.admin.AdminQDeleteActionService;

@Service
public class AdminQDeleteActionImpl implements AdminQDeleteActionService{
	
	@Autowired
	AdminDAO adminDAO;
	
	@Autowired
	MemberDAO memberDAO;
	@Override
	public void qDeleteAction(int q_no) {
		System.out.println("여기로 와서 ? q_no :  "+ q_no);
		memberDAO.memRptExpReturn(q_no);
		System.out.println("이거 실행 못해 ?");
		adminDAO.qDeleteAction(q_no);
		System.out.println("이건 실행해 ?");
	}
	
	
	
	

}
