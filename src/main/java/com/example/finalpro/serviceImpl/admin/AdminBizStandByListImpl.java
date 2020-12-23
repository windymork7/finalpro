package com.example.finalpro.serviceImpl.admin;

import com.example.finalpro.dao.AdminDAO;
import com.example.finalpro.service.admin.AdminBizStandByListService;
import com.example.finalpro.vo.BusinessMemberVO;
import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminBizStandByListImpl implements AdminBizStandByListService {
    @Autowired
    AdminDAO adminDAO;

    @Override
    public List<BusinessMemberVO> bizStandByList(PagingVO pagingVO) {
        List<BusinessMemberVO> list = adminDAO.bizStandByList(pagingVO);
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setBiz_date(list.get(i).getBiz_date().substring(0,11));
        }
        return list;
    }
}
