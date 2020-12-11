package com.example.finalpro.dao;

import com.example.finalpro.vo.CommonMemberVO;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import org.apache.ibatis.annotations.Mapper;

import javax.servlet.http.HttpSession;
import java.util.List;

@Mapper
public interface MypageDAO {
    //내 질문 리스트
    public List<QboardVO> myquestion(PagingVO pagingVO);
    //내 답변 리스트
    public List<ReplyBoardVO> myreply(PagingVO pagingVO);
    //업데이트 폼 ( 및 회원정보 )
    public CommonMemberVO mypageUpdateForm(int mem_no);
    //업데이트 액션
    public CommonMemberVO mypageUpdateAction(CommonMemberVO commonMemberVO);
    //내 질문 카운트
    public int myquestionCount(int mem_no);
    //내 답변 카운트
    public int myreplyCount(int mem_no);


}
