package com.example.finalpro.serviceImpl.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminCaListService;
import com.example.finalpro.vo.CategoryVO;

@Service
public class AdminCaListImpl implements AdminCaListService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<CategoryVO> caList() {
		return adminDAO.caList();
	}
	
	

}
