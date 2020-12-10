package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardListService;
import com.example.finalpro.vo.EditMemberVO;
import com.example.finalpro.vo.PagingVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EditBoardListServiceImpl implements EditBoardListService {

    @Autowired
    EditDAO editDAO;

    @Override
    public List<EditMemberVO> editBoardList(PagingVO pagingVO) {

        List<EditMemberVO> list = editDAO.editBoardList(pagingVO);

        for (int i = 0; i < list.size(); i++) {

            list.get(i).setEdit_date(list.get(i).getEdit_date().substring(0,11));
        }

        return list;
    }
}
