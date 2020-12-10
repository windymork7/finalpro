package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminExpUpdateActionService;

@Service
public class AdminExpUpdateActionImpl implements AdminExpUpdateActionService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public void adminExpUpdateAction(int mem_exp) {
		adminDAO.adminExpUpdateAction(mem_exp);
	}
}
