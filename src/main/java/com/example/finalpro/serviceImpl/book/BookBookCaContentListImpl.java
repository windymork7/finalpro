package com.example.finalpro.serviceImpl.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BookDAO;
import com.example.finalpro.service.book.BookBookCaContentListService;
import com.example.finalpro.vo.QboardVO;

@Service
public class BookBookCaContentListImpl implements BookBookCaContentListService{

	@Autowired
	BookDAO bookDAO;

	@Override
	public List<QboardVO> bookCaContentList(int sub_ca_no,int book_ca_no) {
		
		List<QboardVO> list = bookDAO.bookCaContentList(sub_ca_no,book_ca_no);
		return list;
	}
	
	
}
