package com.example.finalpro.service.book;

import java.util.List;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

public interface BookBookCaContentListService {
	public List<QboardVO> bookCaContentList(int sub_ca_no, int book_ca_no, int ca_no, PagingVO contentPaging);

}
