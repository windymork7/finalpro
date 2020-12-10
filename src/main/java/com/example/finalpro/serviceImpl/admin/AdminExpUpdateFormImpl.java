package com.example.finalpro.serviceImpl.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminExpUpdateFormService;
import com.example.finalpro.vo.CommonMemberVO;

@Service
public class AdminExpUpdateFormImpl implements AdminExpUpdateFormService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public CommonMemberVO adminExpUpdateForm() {
		return adminDAO.adminExpUpdateForm();
	}
	
	

}
