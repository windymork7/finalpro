package com.example.finalpro.service.myscrap;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.finalpro.vo.MyscrapVO;

public interface MyscrapListService {
	public List<MyscrapVO> myscrapList(HttpServletRequest request,HttpSession session);
}
