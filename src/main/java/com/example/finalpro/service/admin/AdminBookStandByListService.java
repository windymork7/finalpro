package com.example.finalpro.service.admin;

import java.util.List;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;

public interface AdminBookStandByListService {
	public List<QboardVO> bookStandByList(PagingVO pagingVO);

}
