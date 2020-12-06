package com.example.finalpro.serviceImpl.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.BookDAO;
import com.example.finalpro.service.book.BookSubCaListService;
import com.example.finalpro.vo.QboardVO;

@Service
public class BookSubCaListImpl implements BookSubCaListService{
	
	@Autowired
	BookDAO bookDAO;

	@Override
	public List<QboardVO> subCaList() {
		List<QboardVO> list = bookDAO.subCaList();
		return list;
	}
	
}
