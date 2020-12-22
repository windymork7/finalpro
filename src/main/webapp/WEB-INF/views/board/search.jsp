<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=de0vice-width, initial-scale=1">
    <title>search</title>
    <!-- 부트스트랩 -->
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--    <script--%>
<%--            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script--%>
<%--            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--            crossorigin="anonymous"></script>--%>

    <style>
        .nav-tabs {
            color: #5a5a5a;
            border-bottom: 1px solid #eceeef;
        }

        .nav-tabs .nav-item {
            color: #5a5a5a;
            margin-bottom: -1px;
        }

        .nav-tabs .nav-link {
            color: #5a5a5a;
            border: 1px solid transparent;
            border-top-left-radius: 0.4rem;
            border-top-right-radius: 0.4rem;
        }

        .nav-tabs .nav-link:hover, .nav-tabs .nav-link:focus {
            color: #78c2ad;
            border-color: #f7f7f9 #f7f7f9 #eceeef;
        }

        .nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
            color: #78c2ad;
            background-color: #fff;
            border-color: #eceeef #eceeef #fff;
        }

        #emergency2 {
            color: #fff;
        }

        a {
            color: #888;
            text-decoration: none;
            background-color: transparent;
        }

        a:hover {
            color: #888;
            text-decoration: none;
        }

        #guideline {
            border: 2px solid rgba(0, 0, 0, 0.125);
        }

        .fa-quora {
            color: #78c2ad
        }

        small {
            color: #78c2ad;
        }

        .card-header-gd {
            padding: 0.75rem 1.25rem;
            margin-bottom: 0;
            background-color: #f3969a;
            border-bottom: 1px solid rgba(0, 0, 0, 0.125);
            color: #fff;
        }
    </style>

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2">
            <img src="img/banner3.png" width="100%">
    </div>

        <div class="col-sm-7">
            <legend>검색 결과</legend>
            <hr class="my-4">
            <c:forEach var="search" items="${searchList}">
            <div class="card bg-light">
                <div class="card-body">
                    <div class="d-flex w-100 justify-content-between">
                        <h4 class="card-title">
                            <a href="/qboardContent.bo?qboardNum=${search.q_no}&subCa=${search.sub_ca_no}"> <i class="fa fa-quora" aria-hidden="true"></i>
                                ${search.q_title}
                            </a>
                            <c:if test="${search.q_sos == 1}">
                                <span class="badge badge-secondary">현상금</span>
                            </c:if>
                        </h4>
                        <small> <span class="glyphicon glyphicon-thumbs-up"
                                      aria-hidden="true"></span> ${search.q_up}
                        </small>
                    </div>
                    <h6 class="card-subtitle mb-2 text-muted text-right">${search.q_date}</h6>
                    <p class="card-text">
                        ${search.sub_ca_name}
                        <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                        ${search.book_ca_name}
                    </p>
                </div>
            </div>
            <br>
            </c:forEach>

            <div>
                <br> <br>
                <ul
                        class="pagination pagination-lg justify-content-center align-items-center">
                    <c:if test="${searchPaging.startPage != 1 }">
                        <li class="page-item"><a class="page-link" href="qboardSearchList.bo?nowPage=${searchPaging.startPage - 1 }&cntPerPage=${searchPaging.cntPerPage}&searchTerm=${searchTerm}">&laquo;</a></li>
                    </c:if>
                    <c:forEach begin="${searchPaging.startPage }" end="${searchPaging.endPage }" var="p">
                        <c:choose>
                            <c:when test="${p == searchPaging.nowPage}">
                                <li class="page-item active"><a class="page-link">${p}</a></li>
                            </c:when>
                            <c:when test="${p != searchPaging.nowPage}">
                                <li class="page-item"><a class="page-link" href="qboardSearchList.bo?nowPage=${p}&cntPerPage=${searchPaging.cntPerPage}&searchTerm=${searchTerm}">${p}</a></li>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${searchPaging.endPage != searchPaging.lastPage}">
                        <li class="page-item"><a class="page-link" href="qboardSearchList.bo?nowPage=${paging.endPage+1 }&cntPerPage=${searchPaging.cntPerPage}&searchTerm=${searchTerm}">&raquo;</a></li>
                    </c:if>
                </ul>
            </div>

        </div>

        <div class="col-sm-3">

            <div class="card border-secondary mb-3" id="guideline">
                <div class="card-header-gd">
                    <b>필독사항</b>
                </div>
                <div class="card-body">
                    <p>1. 직관적인 키워드로 검색하면 좀 더 정확한 내용을 찾을 수 있습니다!</p>
                    <p>2. 검색 결과는 최신순으로 노출됩니다!</p>
                    <p>3. 제목 키워드로 검색됩니다.</p>

                </div>

            </div>
        </div>
    </div>
</body>
</html>