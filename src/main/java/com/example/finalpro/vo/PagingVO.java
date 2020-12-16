package com.example.finalpro.vo;

public class PagingVO {

    //현재,시작,끝게시글총갯수,페이지당글갯수,마지막페이지,sql쿼리에 쓸 start,end
    private int nowPage; // 현재 페이지
    private int startPage; // 시작 페이지
    private int endPage; // 끝 페이지
    private int total; // 게시글 총 갯수
    private int cntPerPage; // 페이지당 글 갯수
    private int lastPage; // 마지막 페이지
    private int	start; // SQL쿼리에 쓸 start
    private int end; // SQL 쿼리에 쓸 end
    private int cntPage = 5;
    private int subCa;
    private int mem_no;
    private String searchTerm;
    private int ca_no;
    private int book_no;

    public int getMem_no() {
        return mem_no;
    }

    public void setMem_no(int mem_no) {
        this.mem_no = mem_no;
    }

    public PagingVO()
    {

    }

    public PagingVO(int total, int nowPage, int cntPerPage)
    {
        setNowPage(nowPage);
        setCntPerPage(cntPerPage);
        setTotal(total);
        calcLastPage(getTotal(), getCntPerPage());
        calcStartEndPage(getNowPage(), cntPage);
        calcStartEnd(getNowPage(), getCntPerPage());
    }

    // 제일 마지막 페이지 계산
    public void calcLastPage(int total, int cntPerPage)
    {
        setLastPage((int) Math.ceil((double) total / (double) cntPerPage));
    }

    // 시작, 끝 페이지 계산
    public void calcStartEndPage(int nowPage, int cntPage)
    {
        setEndPage(((int) Math.ceil((double) nowPage / (double) cntPage)) * cntPage);
        if (getLastPage() < getEndPage())
        {
            setEndPage(getLastPage());
        }
        setStartPage(getEndPage() - cntPage + 1);
        if (getStartPage() < 1)
        {
            setStartPage(1);
        }
    }

    // DB 쿼리에서 사용할 start, end값 계산
    public void calcStartEnd(int nowPage, int cntPerPage)
    {
        setEnd(nowPage * cntPerPage);
        setStart(getEnd() - cntPerPage + 1);
    }

    public int getNowPage()
    {
        return nowPage;
    }

    public void setNowPage(int nowPage)
    {
        this.nowPage = nowPage;
    }

    public int getStartPage()
    {
        return startPage;
    }

    public void setStartPage(int startPage)
    {
        this.startPage = startPage;
    }

    public int getEndPage()
    {
        return endPage;
    }

    public void setEndPage(int endPage)
    {
        this.endPage = endPage;
    }

    public int getTotal()
    {
        return total;
    }

    public void setTotal(int total)
    {
        this.total = total;
    }

    public int getCntPerPage()
    {
        return cntPerPage;
    }

    public void setCntPerPage(int cntPerPage)
    {
        this.cntPerPage = cntPerPage;
    }

    public int getLastPage()
    {
        return lastPage;
    }

    public void setLastPage(int lastPage)
    {
        this.lastPage = lastPage;
    }

    public int getStart()
    {
        return start;
    }

    public void setStart(int start)
    {
        this.start = start;
    }

    public int getEnd()
    {
        return end;
    }

    public void setEnd(int end)
    {
        this.end = end;
    }

    public int setCntPage()
    {
        return cntPage;
    }

    public void getCntPage(int cntPage)
    {
        this.cntPage = cntPage;
    }

    public int getCntPage() {
        return cntPage;
    }

    public void setCntPage(int cntPage) {
        this.cntPage = cntPage;
    }

    public int getSubCa() {
        return subCa;
    }

    public void setSubCa(int subCa) {
        this.subCa = subCa;
    }

    public String getSearchTerm() {
        return searchTerm;
    }

    public void setSearchTerm(String searchTerm) {
        this.searchTerm = searchTerm;
    }

    public int getCa_no() {
        return ca_no;
    }

    public void setCa_no(int ca_no) {
        this.ca_no = ca_no;
    }

    public int getBook_no() {
        return book_no;
    }

    public void setBook_no(int book_no) {
        this.book_no = book_no;
    }

    @Override
    public String toString() {
        return "PagingVO{" +
                "nowPage=" + nowPage +
                ", startPage=" + startPage +
                ", endPage=" + endPage +
                ", total=" + total +
                ", cntPerPage=" + cntPerPage +
                ", lastPage=" + lastPage +
                ", start=" + start +
                ", end=" + end +
                ", cntPage=" + cntPage +
                ", subCa=" + subCa +
                ", mem_no=" + mem_no +
                ", searchTerm='" + searchTerm + '\'' +
                ", ca_no=" + ca_no +
                ", book_no=" + book_no +
                '}';
    }
}
