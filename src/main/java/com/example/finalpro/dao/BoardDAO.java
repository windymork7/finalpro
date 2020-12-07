package com.example.finalpro.dao;

import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardDAO {
    // q게시글 글쓰기 폼 이동시 북 카테고리 조회
    public List<QboardVO> bookCategory(int subCa);
    // q게시글 서브 카테고리 조회
    public String subCategory(int subCa);
    // q게시글 쓰기
    public void qBoardInsert(QboardVO qboardVO);
    // q게시글 답변 완료 조회
    public List<QboardVO> qBoardList(int subCa);
    // q게시글 답변 대기 조회
    public List<QboardVO> qBoardReadyList(int subCa);
    // q게시글 최근순 조회
    public List<QboardVO> qBoardLatesList(int subCa);
    // q게시글 인기순 조회
    public List<QboardVO> qBoardPopularityList(int subCa);
    // q게시글 현상금 업데이트
    public void qBoardExpUpdate(int q_no, int exp);
    // 해당 게시글 조회
    public QboardVO qBoardContent(int q_no, int subCa);
    public QboardVO qBoardReplyContent(int q_no, int subCa);
    public int qBoardReplyCheck(int q_no, int subCa);
    // 해당 게시글 추천
    public int qBoardUpCheck(int mem_no, int q_no);
    public void qBoardUpUpdate(int q_no);
    public void qBoardUpInsert(int q_no,int mem_no);

    //해당 게시글 신고
    public int qBoardDownCheck(int mem_no,int q_no);
    public void qBoardDownUpdate(int q_no);
    public void qBoardDownInsert(int q_no,int mem_no,int rpt_no);

    // 댓글 채택 있는지 체크
    public QboardVO qBoardReplyPickCheck(int q_no);

    // 댓글 리스트
    public List<ReplyBoardVO> replyList(ReplyBoardVO replyBoardVO);
    // 해당 댓글 번호 댓글 조회
    public ReplyBoardVO replyContent(int reply_no);
    // 댓글 글쓰기 프로세스
    public void replyInsertProcess(ReplyBoardVO replyBoardVO);
    // 댓글 추천
    public int replyUpCheck(int mem_no, int reply_no);
    public void replyUpUpdate(int reply_no);
    public void replyUpInsert(int reply_no, int mem_no);

    // 댓글 채택
    public void replyPick(int reply_no);
    public void replyAnotherPick();
    
    // 댓글 신고
    public int replyDownCheck(int reply_no, int mem_no);
    public void replyDownUpdate(int reply_no);
    public void replyDownInsert(int reply_no, int mem_no, int rpt_no);







}
