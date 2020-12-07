package com.example.finalpro.serviceImpl.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BookDAO;
import com.example.finalpro.service.book.BookBookCaNameService;
import com.example.finalpro.vo.QboardVO;

@Service
public class BookBookCaNameImpl implements BookBookCaNameService{
	
	@Autowired
	BookDAO bookDAO;

	@Override
	public QboardVO bookCaName(int book_ca_no) {
		QboardVO qboardVO = bookDAO.bookCaName(book_ca_no);
		return qboardVO;
	}
	
	

}
