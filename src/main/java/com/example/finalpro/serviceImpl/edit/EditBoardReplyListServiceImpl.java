package com.example.finalpro.serviceImpl.edit;

import com.example.finalpro.dao.EditDAO;
import com.example.finalpro.service.edit.EditBoardReplyListService;
import com.example.finalpro.vo.EditMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EditBoardReplyListServiceImpl implements EditBoardReplyListService {
    @Autowired
    EditDAO editDAO;

    @Override
    public List<EditMemberVO> editBoardReplyList(int edit_no) {


        List<EditMemberVO> list = editDAO.editBoardReplyList(edit_no);
        System.out.println("여기2 : " + list);

        return list;
    }
}
