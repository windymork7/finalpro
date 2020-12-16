package com.example.finalpro.dao;

import com.example.finalpro.vo.PagingVO;
import com.example.finalpro.vo.QboardVO;
import com.example.finalpro.vo.ReplyBoardVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BoardDAO {

    // q게시글 총 갯수
    public int qBoardCount();
    // q게시글 글쓰기 폼 이동시 북 카테고리 조회
    public List<QboardVO> bookCategory(int subCa);
    // q게시글 서브 카테고리 조회
    public String subCategory(int subCa);
    // q게시글 쓰기
    public void qBoardInsert(QboardVO qboardVO);
    // q게시글 답변 완료 조회
    public List<QboardVO> qBoardList(PagingVO pagingVO);
    // q게시글 답변 대기 조회
    public List<QboardVO> qBoardReadyList(PagingVO pagingVO);
    // q게시글 최근순 조회
    public List<QboardVO> qBoardLatesList(PagingVO pagingVO);
    // q게시글 인기순 조회
    public List<QboardVO> qBoardPopularityList(PagingVO pagingVO);
    // q게시글 현상글 조회
    public List<QboardVO> qboardExpList(PagingVO pagingVO);
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


    // 에디터 댓글
    public void editQboardReplyInsert(QboardVO qboardVO);
    // 에디터 댓글 리스트
    public List<QboardVO> editBoardReplyList(QboardVO qboardVO);


    // 게시글 갯수
    public int qBoardCompleteCount(int subCa);
    public int qBoardReadyCount(int subCa);
    public int qBoardLatesCount(int subCa);
    public int qBoardPopularityCount(int subCa);
    public int qBoardExpCount(int subCa);


    // 게시글 검색
    public List<QboardVO> qBoardSearchList(PagingVO searchPaging);
    // 검색된 게시글 총 수
    public int qBoardSearchCount(String searchTerm);


    /**********새터*************/
    //새터 답변 완료 조회
    public List<QboardVO> tipBoardPickList(PagingVO pagingVO);
    //새터 답변 대기 조회
    public List<QboardVO> tipBoardReadyList(PagingVO pagingVO);
    //새터 최근순
    public List<QboardVO> tipBoardLatesList(PagingVO pagingVO);
    //새터 인기순
    public List<QboardVO> tipBoardPopularityList(PagingVO pagingVO);

    //새터 답변 완료 카운트
    public int tipBoardPickCount();
    //새터 답변 대기 카운트
    public int tipBoardReadyCount();
    //전체글 카운트
    public int tipBoardCount();

    //새터 게시슬 내용 보기
    public QboardVO tipBoardContent(int new_no);
    //새터 신고 체크 ( 같은 게시물에 신고를 했던 회원인지 체크  )
    public int tipBoardRptCheck(int mem_no,int new_no);
    //새터글 신고 체크 ( 최초신고당한 게시글인지 체크)
    public int tipBoardDownCheck(int new_no);
    //새터 신고 게시글에 카운트 + 1
    public void tipBoardRptCntUp(int new_no);
    //새터 신고 당한 게시글 new_down테이블에  insert
    public void tipBoardDownInsert(int mem_no,int new_no,int radio);
    //새터 DOWN테이블에 Update   : ( 생각해보니 update는 필요없어서 일단 주석 해놓음 )
    //public void tipBoardDownUpdate(int mem_no,int new_no,int radio);
    //새터 신고당한유저 명성 내려감 ( 신고한유저도 )    ( 당한유저 -1 한 유저 -2 ( 나중에 +4로 받을수도 )
    public void tipBoardRptExpUpdate(int mem_no,int exp);

    //새터 추천 체크 ( 같은 게시물에 추천을 했던 회원인지 체크 )
    public int tipBoardUpCheck(int mem_no, int new_no);
    // 새터 게시글에 추천 카운트 + 1
    public void tipBoardUpCntUp(int new_no);
    // 새터 추천 당한 게시글 new_up테이블에 insert
    public void tipBoardUpInsert(int mem_no,int new_no);
    //새터 추천당한유저 명성 올라감 ( + 3 )
    public void tipBoardUpExpUpdate(int mem_no);

    //새터 글쓰기
    public void tipBoardWriteAction(QboardVO qboardVO);
}
