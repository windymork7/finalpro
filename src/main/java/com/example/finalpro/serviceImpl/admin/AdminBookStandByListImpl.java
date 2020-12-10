package com.example.finalpro.serviceImpl.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBookStandByListService;
import com.example.finalpro.vo.QboardVO;

@Service
public class AdminBookStandByListImpl implements AdminBookStandByListService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<QboardVO> bookStandByList() {
		List<QboardVO> list = adminDAO.bookStandByList();

		return list;
	}
	
	

}
