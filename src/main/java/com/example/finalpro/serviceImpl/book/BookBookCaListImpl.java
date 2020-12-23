package com.example.finalpro.serviceImpl.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BookDAO;
import com.example.finalpro.service.book.BookBookCaListService;
import com.example.finalpro.vo.QboardVO;

@Service
public class BookBookCaListImpl implements BookBookCaListService{
	
	@Autowired
	BookDAO bookDAO;

	@Override
	public List<QboardVO> bookCaList(int sub_ca_no) {
		List<QboardVO> list = bookDAO.bookCaList(sub_ca_no);

		return list;
	}
}
