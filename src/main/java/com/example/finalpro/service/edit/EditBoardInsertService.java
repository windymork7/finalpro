package com.example.finalpro.service.edit;

import com.example.finalpro.vo.EditMemberVO;
import org.springframework.web.multipart.MultipartFile;

public interface EditBoardInsertService {
    public void editBoardInsert(MultipartFile edit_img1, EditMemberVO editMemberVO);
}
