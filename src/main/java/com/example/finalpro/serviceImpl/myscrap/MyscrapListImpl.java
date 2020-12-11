package com.example.finalpro.serviceImpl.myscrap;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.MyscrapDAO;
import com.example.finalpro.service.myscrap.MyscrapListService;
import com.example.finalpro.vo.MyscrapVO;

@Service
public class MyscrapListImpl implements MyscrapListService {

	@Autowired
	MyscrapDAO myscrapDAO;

	@Override
	public List<MyscrapVO> myscrapList(HttpServletRequest request, HttpSession session, PagingVO pagingVO) {

		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.mm.dd");

		int mem_no =  (Integer) session.getAttribute("userNo");
		pagingVO.setMem_no(mem_no);
		List<MyscrapVO> list = myscrapDAO.myscrapList(pagingVO);

		for (int i = 0; i < list.size(); i++) {

			list.get(i).setMy_scrap_date(list.get(i).getMy_scrap_date().substring(0,11));
		}

		return list;
	}

}
