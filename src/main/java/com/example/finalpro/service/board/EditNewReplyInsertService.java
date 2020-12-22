package com.example.finalpro.service.board;

import com.example.finalpro.vo.QboardVO;

import javax.servlet.http.HttpSession;

public interface EditNewReplyInsertService {
    public void editNewReplyInsert(QboardVO qboardVO, HttpSession session);
}
