package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminMemRptCountService;

@Service
public class AdminMemRptCountImpl implements AdminMemRptCountService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public int memRptCount() {
		return adminDAO.memRptCount();
	}
	
	

}
