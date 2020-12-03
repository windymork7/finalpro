package com.example.finalpro.dao;

import com.example.finalpro.vo.CommonMemberVO;
import com.example.finalpro.vo.QboardVO;
import org.apache.ibatis.annotations.Mapper;

import javax.servlet.http.HttpSession;
import java.util.List;

@Mapper
public interface MypageDAO {
    //내 질문 리스트
    public List<QboardVO> myquestion(int mem_no);
    //업데이트 폼 ( 및 회원정보 )
    public CommonMemberVO mypageUpdateForm(int mem_no);
    //업데이트 액션
    public CommonMemberVO mypageUpdateAction(CommonMemberVO commonMemberVO);

}
