package com.example.finalpro.service.board;

import com.example.finalpro.vo.QboardVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface CommonBoardInsertService {
    public void qBoardInsert(MultipartFile q_file, QboardVO qboardVO, HttpServletRequest request);
}
