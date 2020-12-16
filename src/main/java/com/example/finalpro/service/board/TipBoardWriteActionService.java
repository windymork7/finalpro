package com.example.finalpro.service.board;

import com.example.finalpro.vo.QboardVO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

public interface TipBoardWriteActionService {
    public void tipBoardWriteAction(MultipartFile new_file, QboardVO vo, HttpServletRequest request);
}
