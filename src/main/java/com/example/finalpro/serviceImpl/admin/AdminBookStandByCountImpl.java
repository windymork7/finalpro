package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBookStandByCountService;

@Service
public class AdminBookStandByCountImpl implements AdminBookStandByCountService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public int adminBookStandByCount() {
		return adminDAO.bookStandByCount();
	}

}
