package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBookCaNameUpdateActionService;

@Service
public class AdminBookCaNameUpdateActionImpl implements AdminBookCaNameUpdateActionService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public void bookCaNameUpdateAction(int book_ca_no,String book_ca_name) {
		adminDAO.bookCaNameUpdateAction(book_ca_no,book_ca_name);
	}

}
