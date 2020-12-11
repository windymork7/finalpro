package com.example.finalpro.dao;

import com.example.finalpro.vo.MyscrapVO;
import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MyscrapDAO {
    //마이스크랩 체크
    public int myscrapCheck(int mem_no,int q_no);
    //마이스크랩 삽입
    public void myscrapInsert(int mem_no,int q_no);
    //마이스크랩 리스트 ( 컨트롤러에서는 qBoardVO의 title만 보이면 되려나 )
    public List<MyscrapVO> myscrapList(PagingVO pagingVO);
    //마이스크랩 내용
    public QboardVO myscrapContent(int q_no);
    //마이스크랩 삭제
    public void myscrapDelete(int scrap_no);
    //마이스크랩 카운트
    public int myscrapCount(int mem_no);


}
