package com.example.finalpro.serviceImpl.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBookCaListService;
import com.example.finalpro.vo.CategoryVO;

@Service
public class AdminBookCaListImpl implements AdminBookCaListService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<CategoryVO> bookCaList(int subCa) {
		return adminDAO.bookCaList(subCa);
	}
	
	

}
