package com.example.finalpro.serviceImpl.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminQRptListService;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

@Service
public class AdminQRptListImpl implements AdminQRptListService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<QboardVO> qRptList(PagingVO pagingVO) {
		
		List<QboardVO> list = adminDAO.qRptList(pagingVO);
		return list;
	}
	
	

}
