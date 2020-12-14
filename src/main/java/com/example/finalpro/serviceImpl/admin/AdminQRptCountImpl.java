package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminQRptCountService;

@Service
public class AdminQRptCountImpl implements AdminQRptCountService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public int qRptCount() {
		return adminDAO.qRptCount();
	}
	
	

}
