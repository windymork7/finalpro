package com.example.finalpro.dao;

import com.example.finalpro.vo.CategoryVO;
import com.example.finalpro.vo.CommonMemberVO;
import com.example.finalpro.vo.QboardVO;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDAO {
    //신고 10개 넘은 애들 리스트
    public List<CommonMemberVO> memRptList();

    // 블랙처리 액션
    public void memBlackAction(int mem_no);

    // 블랙 리스트
    public List<CommonMemberVO> memBlackList();
    
    // 신고 10개 넘은 게시판 리스트
    public List<QboardVO> qRptList();
    
    // 신고 10개 넘은 게시판 삭제
    public void qDeleteAction(int q_no);
    
    //승인이 필요한 게시글들 ( 책가는거 )
    public List<QboardVO> bookStandByList();

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
}
