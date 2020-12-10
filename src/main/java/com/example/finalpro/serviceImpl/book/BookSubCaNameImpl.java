package com.example.finalpro.serviceImpl.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BookDAO;
import com.example.finalpro.service.book.BookSubCaNameService;
import com.example.finalpro.vo.QboardVO;

@Service
public class BookSubCaNameImpl implements BookSubCaNameService{

	@Autowired
	BookDAO bookDAO;

	@Override
	public QboardVO subCaName(int sub_ca_no) {
		
		QboardVO qboardVO = bookDAO.subCaName(sub_ca_no);
		return qboardVO;
	}
	
	
	
}
