package com.example.finalpro.serviceImpl.myscrap;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.finalpro.dao.MyscrapDAO;
import com.example.finalpro.service.myscrap.MyscrapListService;
import com.example.finalpro.vo.MyscrapVO;
import com.example.finalpro.vo.QboardVO;

@Service
public class MyscrapListImpl implements MyscrapListService {

	@Autowired
	MyscrapDAO myscrapDAO;

	@Override
	public List<MyscrapVO> myscrapList(HttpServletRequest request,HttpSession session) {

		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.mm.dd");

		int mem_no =  (Integer) session.getAttribute("userNo");
		List<MyscrapVO> list = myscrapDAO.myscrapList(mem_no);

		for (int i = 0; i < list.size(); i++) {

			list.get(i).setMy_scrap_date(list.get(i).getMy_scrap_date().substring(0,11));
		}

		return list;
	}

}
