<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>dsq_searchTip</title>
    <!-- 부트스트랩 -->
    <%--	<link rel="stylesheet" href="css/bootstrap.css">--%>
    <%--	<script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
    <%--	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
    <%--	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
    <%--	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>


    <style>
        #c_left {
            float: left;
        }

        #c_right {
            float: right;
        }

        #q_right {
            float: right;
        }

        .fa-quora {
            color: #78c2ad
        }

        .card-title {
            margin-bottom: 0rem;
        }

        #question-text {
            font-size: 1.2em;
        }

        small {
            color: #78c2ad;
        }

        /*a {*/
        /*	color: #fff;*/
        /*	text-decoration: none;*/
        /*	background-color: transparent;*/
        /*}*/

        /*a:hover {*/
        /*	color: #fff;*/
        /*	text-decoration: none;*/
        /*}*/


        #sidebox {
            position: absolute;
        }

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

    </style>
</head>
<body>

<c:set var="length" value="${fn:length(tipVO.new_file)}"/>
<c:set var="q_file3" value="${fn:substring(tipVO.new_file, length-3, length)}"/>
<c:set var="q_file4" value="${fn:substring(tipVO.new_file, length-4, length)}"/>

<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <fieldset>
                <div>
                    <div id="c_left">
                        <legend>검색 Tip</legend>
                    </div>
                    <form action="qboardTipUpAction.bo" method="post">
                        <%--							<input type="hidden" name="new_no" value="${tipVO.new_no}">--%>
                        <input type="hidden" name="mem_no" value="${sessionScope.userNo}">
                            <input type="hidden" name="new_no" value="${tipVO.new_no}">
                        <div id="c_right">
                            <c:choose>
                                <c:when test="${empty sessionScope.userNo}"></c:when>
                            <c:when test="${sessionScope.userNo ne tipVO.mem_no}">
                            <c:if test="${tipVO.new_pick_state == 0}">
                            <button type="button" class="btn btn-primary"
                                    onclick="location.href='/tipReplyWriteForm.bo?new_no=${tipVO.new_no}'">답변하기
                            </button>
                            </c:if>


                            <button type="submit" class="btn btn-info" data-toggle="tooltip" data-placement="top"
                                    title="추천">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                    </form>
                    <span data-toggle="modal" data-target="#Modal_1">
                        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top"
                                title="신고">
                    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                  </button>
                  </span>
                    </c:when>
                    </c:choose>
                </div>
                </form>
        </div>
        <br>

        <hr class="my-4">
        <div class="card bg-light mb-3">
            <div class="card-header">
                <div class="d-flex w-100 justify-content-between">
                    <h4 class="card-title">
                        <i class="fa fa-quora" aria-hidden="true"></i>
                        ${tipVO.new_title}
                    </h4>
                    <small>
                        <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                        ${tipVO.new_up}
                    </small>
                </div>
                <h6 class="card-subtitle mb-2 text-muted text-right">${tipVO.new_date}</h6>
<%--                <h6 class="card-subtitle mb-2">${tipVO.mem_nick}</h6>--%>
                <c:choose>
                    <c:when test="${tipVO.grade_no eq 1}">
                  <span class="badge badge-light"></span>
                    <div class="text-muted">
                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${tipVO.mem_nick}</i>
                    </div></h6>
                    </c:when>
                    <c:when test="${tipVO.grade_no eq 2}">
                        <span class="badge badge-warning"></span>
                        <div class="text-warning">
                            <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${tipVO.mem_nick}</i>
                        </div></h6>
                    </c:when>
                    <c:when test="${tipVO.grade_no eq 3}">
                        <span class="badge badge-primary"></span>
                        <div class="text-primary">
                            <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${tipVO.mem_nick}</i>
                        </div></h6>
                    </c:when>
                    <c:when test="${tipVO.grade_no eq 4}">
                        <span class="badge badge-secondary"></span>
                        <div class="text-secondary">
                            <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${tipVO.mem_nick}</i>
                        </div></h6>
                    </c:when>
                    <c:when test="${tipVO.grade_no eq 5}">
                        <span class="badge badge-danger"></span>
                        <div class="text-danger">
                            <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${tipVO.mem_nick}</i>
                        </div></h6>
                    </c:when>
                </c:choose>

            </div>
            <div class="card-body">
                <div class="card-text" id="question-text">
                    ${tipVO.new_file}
                    <c:if test="${not empty tipVO.new_file}">
                        <a href="${pageContext.request.contextPath}/upload/${tipVO.new_file}">${tipVO.new_file}</a>
                        <c:if test="${q_file3 == 'jpg' || q_file3 == 'gif' || q_file3 == 'png' || q_file4 == 'jpeg'}">
                            <img src="upload/${tipVO.new_file}" width="100%"><br><br>
                        </c:if>
                    </c:if>
                    <textarea class="form-control" rows="20" readonly>
${tipVO.new_content}
                    </textarea>
                    <br>
                    <div id="q_right">

                        <button type="button" class="btn btn-outline-primary" data-toggle="tooltip" data-placement="top"
                                title="편집" onclick="editAddContent()">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </button>

                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->

        <div class="modal fade" id="Modal_1" tabindex="-1"
             aria-labelledby="ModalLabel_1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalLabel_1">신고 사유를 선택하세요.</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="/qboardTipDownAction.bo" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="new_no" value="${tipVO.new_no}">
                                <input type="hidden" name="mem_no" value="${sessionScope.userNo}">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio1" name="customRadio"
                                           class="custom-control-input" value="1">
                                    <label class="custom-control-label" for="customRadio1">주제에 맞지 않음</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio2" name="customRadio"
                                           class="custom-control-input" value="2">
                                    <label class="custom-control-label" for="customRadio2">욕설</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio3" name="customRadio"
                                           class="custom-control-input" value="3">
                                    <label class="custom-control-label" for="customRadio3">광고</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio4" name="customRadio"
                                           class="custom-control-input" value="4">
                                    <label class="custom-control-label" for="customRadio4">사칭</label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">전송</button>
                            <button type="button" class="btn btn-secondary">닫기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="editAddContentForm"></div>

        <div id="editAddContentComplete"></div>

        <%--        <form id="editListForm">--%>
        <ul class="nav nav-tabs">
            <li class="nav-item ml-auto"><a class="nav-link active"
                                            data-toggle="tab" href="#latest">최신순</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                    href="#popular">인기순</a></li>&nbsp;
        </ul>
        <div id="commentList">
        </div>
        <%--        </form>--%>


        <hr class="my-4">
        <!-- 답글 최신순 -->
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade show active" id="latest">
                <c:forEach var="llist" items="${replyLateList}">
                    <div class="card">
                        <div class="card-header">
                            <c:choose>
                                <c:when test="${llist.grade_no eq 1}">
                                    <span class="badge badge-light"></span>
                                    <div class="text-muted">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${llist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${llist.grade_no eq 2}">
                                    <span class="badge badge-warning"></span>
                                    <div class="text-warning">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${llist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${llist.grade_no eq 3}">
                                    <span class="badge badge-primary"></span>
                                    <div class="text-primary">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${llist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${llist.grade_no eq 4}">
                                    <span class="badge badge-secondary"></span>
                                    <div class="text-secondary">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${llist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${llist.grade_no eq 5}">
                                    <span class="badge badge-danger"></span>
                                    <div class="text-danger">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${llist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                            </c:choose>
                        </div>
                        <div class="card-body">
                            <div class="card-text d-flex justify-content-between align-items-center">
                                <div class="btn-group-vertical">
                                    <button type="button" class="btn btn-outline-primary" data-toggle="tooltip"
                                            data-placement="left" title="추천"
                                            onclick="location.href='tipReplyUp.bo?mem_no=${sessionScope.userNo}&new_reply_no=${llist.new_reply_no}'">
                                        <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                            ${llist.new_reply_up}
                                    </button>

                                    <!-- 글 작성자랑 세션 유저랑 같다면 and 게시글이 아직 채택상태가 아니라면 -->
                                    <c:if test="${tipVO.mem_nick == sessionScope.userNick}">
                                        <c:if test="${tipVO.new_pick_state == 0}">
                                            <c:if test="${llist.new_reply_pick == 0}">
                                                <button type="button" class="btn btn-outline-primary"
                                                        data-toggle="tooltip" data-placement="left" title="채택"
                                                        onclick="location.href='/tipReplyPick.bo?new_no=${llist.new_no}&new_reply_no=${llist.new_reply_no}'">
                                                    <i class="fa fa-check" aria-hidden="true"></i>
                                                </button>
                                            </c:if>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${llist.new_reply_pick == 1}">
                                        <button type="button" class="btn btn-primary" data-toggle="tooltip"
                                                data-placement="left" title="채택">
                                            <i class="fa fa-check" aria-hidden="true"></i>
                                        </button>
                                    </c:if>

                                    <c:choose>
                                    <c:when test="${not empty sessionScope.userNick}">
                                    <c:choose>
                                    <c:when test="${llist.mem_no != sessionScope.userNo}">
                                    <button type="button" class="btn btn-outline-primary" data-toggle="tooltip"
                                            data-placement="left" title="신고">
         <span data-toggle="modal" data-target="#Modal_3">
            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
         </span>
                                    </button>
                                    </c:when>
                                    </c:choose>
                                    </c:when>
                                    </c:choose>
                                </div>
                                &nbsp;
                                &nbsp;
                                <textarea class="form-control" rows="8" id="reply_text" readonly>${llist.new_reply_content}
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <br>
                    <!-- 최신순 리스트 신고-->
                    <div class="modal fade" id="Modal_3" tabindex="-1"
                         aria-labelledby="ModalLabel_3" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel_3">신고 사유를 선택하세요.</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="/tipReplyRpt.bo" method="post">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <input type="hidden" name="new_reply_no" value="${llist.new_reply_no}">
                                            <input type="hidden" name="mem_no" value="${sessionScope.userNo}">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio5" name="customRadio"
                                                       class="custom-control-input" value="1">
                                                <label class="custom-control-label" for="customRadio5">주제에 맞지 않음</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio6" name="customRadio"
                                                       class="custom-control-input" value="2">
                                                <label class="custom-control-label" for="customRadio6">욕설</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio7" name="customRadio"
                                                       class="custom-control-input" value="3">
                                                <label class="custom-control-label" for="customRadio7">광고</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio8" name="customRadio"
                                                       class="custom-control-input" value="4">
                                                <label class="custom-control-label" for="customRadio8">사칭</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary">전송</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <!-- 답글 인기순 -->
            <div class="tab-pane fade" id="popular">
                <c:forEach var="ulist" items="${replyUpList}">
                    <c:set var="l" value="0"/>
                    <div class="card">
<%--                        <div class="card-header">--%>
<%--                                ${ulist.mem_nick}--%>
<%--                        </div>--%>
                        <div class="card-header">
                            <c:choose>
                                <c:when test="${ulist.grade_no eq 1}">
                                    <span class="badge badge-light"></span>
                                    <div class="text-muted">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${ulist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${ulist.grade_no eq 2}">
                                    <span class="badge badge-warning"></span>
                                    <div class="text-warning">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${ulist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${ulist.grade_no eq 3}">
                                    <span class="badge badge-primary"></span>
                                    <div class="text-primary">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${ulist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${ulist.grade_no eq 4}">
                                    <span class="badge badge-secondary"></span>
                                    <div class="text-secondary">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${ulist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                                <c:when test="${ulist.grade_no eq 5}">
                                    <span class="badge badge-danger"></span>
                                    <div class="text-danger">
                                        <i class="fa fa-thermometer-full" aria-hidden="true">&nbsp;${ulist.mem_nick}</i>
                                    </div></h6>
                                </c:when>
                            </c:choose>
                        </div>
                        <div class="card-body">
                            <div class="card-text d-flex justify-content-between align-items-center">
                                <div class="btn-group-vertical">

                                    <button type="button" class="btn btn-outline-primary" data-toggle="tooltip"
                                            data-placement="left" title="추천"
                                            onclick="location.href='tipReplyUp.bo?mem_no=${sessionScope.userNo}&new_reply_no=${ulist.new_reply_no}'">
                                        <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                            ${ulist.new_reply_up}
                                    </button>

                                    <c:if test="${tipVO.mem_nick == sessionScope.userNick}">
                                        <c:if test="${tipVO.new_pick_state == 0}">
                                            <c:if test="${ulist.new_reply_pick == 0}">
                                                <button type="button" class="btn btn-outline-primary"
                                                        data-toggle="tooltip" data-placement="left" title="채택"
                                                        onclick="location.href='/tipReplyPick.bo?new_no=${ulist.new_no}&new_reply_no=${ulist.new_reply_no}'">
                                                    <i class="fa fa-check" aria-hidden="true"></i>
                                                </button>
                                            </c:if>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${ulist.new_reply_pick == 1}">
                                        <button type="button" class="btn btn-primary" data-toggle="tooltip"
                                                data-placement="left" title="채택">
                                            <i class="fa fa-check" aria-hidden="true"></i>
                                        </button>
                                    </c:if>

                                    <c:choose>
                                        <c:when test="${not empty sessionScope.userNick}">
                                            <c:choose>
                                            <c:when test="${ulist.mem_no != sessionScope.userNo}">
                                    <button type="button" class="btn btn-outline-primary" data-toggle="tooltip"
                                            data-placement="left" title="신고">
<%--         <span data-toggle="modal" data-target="#Modal_4">--%>
         <span data-toggle="modal" data-target="#${l}">
            <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
         </span>
                                    </button>
                                            </c:when>
                                            </c:choose>
                                        </c:when>
                                    </c:choose>
                                </div>
                                &nbsp;
                                &nbsp;
                                <textarea class="form-control" rows="8" id="reply_text" readonly>
${ulist.new_reply_content}
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <br>
                    <!-- 인기순 리스트 신고 -->
<%--                    <div class="modal fade" id="Modal_4" tabindex="-1"--%>
                    <div class="modal fade" id="${l}" tabindex="-1"
                         aria-labelledby="ModalLabel_3" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ModalLabel_4">신고 사유를 선택하세요.</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="/tipReplyRpt.bo" method="post">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <c:set var="new_reply_no" value="${ulist.new_reply_no}"/>
                                            <input type="hidden" name="new_reply_no" value="${new_reply_no}">
                                            <input type="hidden" name="mem_no" value="${sessionScope.userNo}">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio9" name="customRadio"
                                                       class="custom-control-input" value="1">
                                                <label class="custom-control-label" for="customRadio9">주제에 맞지 않음</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio10" name="customRadio"
                                                       class="custom-control-input" value="2">
                                                <label class="custom-control-label" for="customRadio10">욕설</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio11" name="customRadio"
                                                       class="custom-control-input" value="3">
                                                <label class="custom-control-label" for="customRadio11">광고</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="customRadio12" name="customRadio"
                                                       class="custom-control-input" value="4">
                                                <label class="custom-control-label" for="customRadio12">사칭</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary">전송</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <c:set var="l" value="${l + 1}"/>
                </c:forEach>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>

                </fieldset>
            </div>


            <div class="col-sm-1 offset-sm-2">
                <div id="sidebox">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <p><i class="fa fa-chevron-up fa-2x text-primary" aria-hidden="true" id="topBtn"></i></p>
                    <p><i class="fa fa-chevron-down fa-2x text-primary" aria-hidden="true" id="bottomBtn"></i></p>
                </div>
            </div>
        </div>


    </div>

    <script>
        var html = "";
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        })

        $(document).ready(function () {
            editList();
        });

        function editAddContent() {
            html = "";

            if (${sessionScope.userGrade} >= 3)
            {

                html += "<div class=\"card\">\n" +
                    "\t  <div class=\"card-header\">\n" +
                    "\t  ${sessionScope.userNick}\n" +
                    "\t  </div>\n" +
                    "\t  <div class=\"card-body\">\n" +
                    "\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
                    "\t   <textarea id='editText' name='new_reply_edit_content' class=\"form-control\" rows=\"8\" id=\"reply_text\">\n" +
                    "</textarea>\n" +
                    "\t   </div><br>\n" +
                    "<button type='button' class='btn btn-primary' onclick='editAddContentInsert()'>전송</button>\n" +
                    "<button type='reset' class='btn btn-secondary' data-dismiss=card-body >취소</button>\n" +
                    "\t  </div>\n" +
                    "\t</div>" +
                    "<br>";

                $("#editAddContentForm").html(html);

            }
        }

        function editList() {

            var html = "";

            $.ajax(
                {
                    type: 'GET',
                    url: "/neweditList.bo",
                    dataType: "json",
                    data: {
                        "new_no": ${tipVO.new_no},
                    },
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                    success: function (data) {
                        // alert(data);


                        for (var i = 0; i < data.length; i++) {
                            html += "<div class=\"card\">\n" +
                                "\t  <div class=\"card-header\">\n" +
                                "\t<i class=\"fa fa-pencil-square fa-lg text-warning\" aria-hidden=\"true\"></i>\n" +
                                "\t  " + data[i].mem_nick + "\n" +
                                "\t  </div>\n" +
                                "\t  <div class=\"card-body\">\n" +
                                "\t    <div class=\"card-text d-flex justify-content-between align-items-center\">\n" +
                                "\t   <textarea class=\"form-control\" rows=\"8\" id=\"reply_text\" readonly>" + data[i].new_reply_edit_content +"\n" +
                                "\t\t</textarea>\n" +
                                "\t   </div>\n" +
                                "\t  </div>\n" +
                                "\t</div>" +
                                "<br>";

                            $("#editAddContentComplete").html(html);

                        }


                    },
                    error: function (request, status, error) {
                        alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                    }

                });
        }

        function editAddContentInsert() {

            var editText = $("#editText").val();
            var html = "";

            $.ajax(
                {
                    type: 'GET',
                    url: "/neweditInput.bo",
                    data: {
                        "new_no": ${tipVO.new_no},
                        "mem_no": ${sessionScope.userNo},
                        "new_reply_edit_content": editText
                    },
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                    success: function () {
                        alert("에디터 글이 등록되었습니다.");
                        $("#editAddContentForm").html(html);
                        editList();

                    },
                    error: function (request, status, error) {
                        alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                    }

                });
        }

        $(window).scroll(function () {
            var scrollTop = $(document).scrollTop();
            if (scrollTop < 230) {
                scrollTop = 230;
            }
            $("#sidebox").stop();
            $("#sidebox").animate({"top": scrollTop});
        });

        var topEle = $('#topBtn');
        var delay = 1000;
        topEle.on('click', function () {
            $('html, body').stop().animate({scrollTop: 0}, delay);
        });

        var topEle = $('#bottomBtn');
        var delay = 1000;
        topEle.on('click', function () {
            $("html, body").animate({scrollTop: $(document).height()}, delay);
        });
    </script>

</body>
</html>