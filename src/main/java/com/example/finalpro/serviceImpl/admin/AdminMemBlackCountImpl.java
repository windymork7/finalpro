package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminMemBlackCountService;

@Service
public class AdminMemBlackCountImpl implements AdminMemBlackCountService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public int memBlackCount() {
		return adminDAO.memBlackCount();
	}
	
	

}
