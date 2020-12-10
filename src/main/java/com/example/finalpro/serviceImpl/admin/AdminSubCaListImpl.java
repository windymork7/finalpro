package com.example.finalpro.serviceImpl.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminSubCaListService;
import com.example.finalpro.vo.CategoryVO;

@Service
public class AdminSubCaListImpl implements AdminSubCaListService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<CategoryVO> subCaList(int ca_no) {
		return adminDAO.subCaList(ca_no);
	}
	
	

}
