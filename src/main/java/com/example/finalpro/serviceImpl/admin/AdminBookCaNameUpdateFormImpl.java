package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBookCaNameUpdateFormService;
import com.example.finalpro.vo.CategoryVO;

@Service
public class AdminBookCaNameUpdateFormImpl implements AdminBookCaNameUpdateFormService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public CategoryVO bookCaNameUpdateForm(int book_ca_no) {
		return adminDAO.bookCaNameUpdateForm(book_ca_no);
	}
}
