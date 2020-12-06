package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminQDeleteActionService;

@Service
public class AdminQDeleteActionImpl implements AdminQDeleteActionService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public void qDeleteAction(int q_no) {
		adminDAO.qDeleteAction(q_no);
		
	}
	
	
	
	

}
