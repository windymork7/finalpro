package com.example.finalpro.dao;

import com.example.finalpro.vo.QboardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardDAO {
    // q게시글 쓰기
    public void qBoardInsert(int subCa, QboardVO qboardVO);
    // q게시글 조회
    public List<QboardVO> qBoardList(int subCa);
    // 해당 게시글 조회
    public QboardVO qBoardContent(int q_no, int subCa);
    // 해당 게시글 추천
    public int qBoardUpCheck(int mem_no, int q_no);
    public void qBoardUpUpdate(int q_no);
    public void qBoardUpInsert(int q_no,int mem_no);

    //해당 게시글 신고
    public int qBoardDownCheck(int mem_no,int q_no);
    public void qBoardDownUpdate(int q_no);
    public void qBoardDownInsert(int q_no,int mem_no,int rpt_no);



}
