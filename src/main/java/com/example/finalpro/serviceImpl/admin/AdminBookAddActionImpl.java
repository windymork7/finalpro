package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBookAddActionService;

@Service
public class AdminBookAddActionImpl implements AdminBookAddActionService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public void bookAddActionService(int q_no, int ca_no, int sub_ca_no, int book_ca_no) {
		//adminDAO.bookAddAction(q_no,ca_no,sub_ca_no,book_ca_no);
		adminDAO.bookAdminStateUpdate(q_no);
	}
	
	

}
