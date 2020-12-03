package com.example.finalpro.service.mypage;

import com.example.finalpro.vo.CommonMemberVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MypageUpdateFormService {
    public CommonMemberVO mypageUpdateForm(HttpSession session);
}
