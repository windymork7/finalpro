package com.example.finalpro.dao;

import com.example.finalpro.vo.*;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDAO {
    //신고 10개 넘은 애들 리스트
    public List<CommonMemberVO> memRptList(PagingVO pagingVO);

    // 블랙처리 액션
    public void memBlackAction(int mem_no);

    // 블랙 리스트
    public List<CommonMemberVO> memBlackList(PagingVO pagingVO);
    
    // 신고 10개 넘은 게시판 리스트
    public List<QboardVO> qRptList(PagingVO pagingVO);

    // 기업회원 승인 대기 리스트
    public List<BusinessMemberVO> bizStandByList(PagingVO pagingVO);
    
    // 신고 10개 넘은 게시판 삭제
    public void qDeleteAction(int q_no);
    
    //게시글 신고 눌렀던 회원들 EXP 다시  UP
    public void memExpReturn(int board_no);
    
    //멤버 신고 눌렀던 회원들 ExP 다시 UP
    //승인이 필요한 게시글들 ( 책가는거 )
    public List<QboardVO> bookStandByList(PagingVO pagingVO);

    //기업회원 승인액션
    public void bizStateUpdate(String biz_no);

    //책에 추가하기  필요 X
    //public void bookAddAction(int q_no, int ca_no, int sub_ca_no, int book_ca_no);
    //책에 추가하면서 어드민상태 업데이트
    public void bookAdminStateUpdate(int q_no);
    
    //카테고리 리스트
    public List<CategoryVO> caList();
    //서브카테고리리스트
    public List<CategoryVO> subCaList(int ca_no);
    //책카테고리리스트
    public List<CategoryVO> bookCaList(int subCa);
    //책카테고리수정폼에정보띄워주기
    public CategoryVO bookCaNameUpdateForm(int book_ca);
    //책카테고리이름수정액션
    public void bookCaNameUpdateAction(int book_ca_no,String book_ca_name);

    //심심해서만든 어드민 EXP 수정
    public CommonMemberVO adminExpUpdateForm();
    //어드민 EXp수정액션
    public void adminExpUpdateAction(int mem_exp);
    
    
    //카운트
    public int memRptCount();	//신고10개 mem
    public int memBlackCount();	//블랙리스트 
    public int qRptCount();		//신고10개 Q
    public int bookStandByCount();	//책승인
    public int bizStandByCount();   //기업회원 승인대기
    
}
