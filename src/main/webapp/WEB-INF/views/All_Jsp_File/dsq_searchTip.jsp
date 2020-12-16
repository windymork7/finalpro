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
    <title>dsq_searchTip</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            crossorigin="anonymous"></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>

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

        .badge {
            display: inline-block;
            padding: 0.25em 0.8em;
            font-size: 100%;
            font-weight: 700;
            line-height: 1;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: 0.4rem;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
            border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
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
            <div class="card mb-3">
                <h3 class="card-header">Card header</h3>
                <div class="card-body">
                    <h5 class="card-title">Special title treatment</h5>
                    <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg"
                     class="d-block user-select-none" width="100%" height="200"
                     aria-label="Placeholder: Image cap" focusable="false" role="img"
                     preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180"
                     style="font-size: 1.125rem; text-anchor: middle">
                    <rect width="100%" height="100%" fill="#868e96"></rect>
                    <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
                </svg>
                <div class="card-body">
                    <p class="card-text">Some quick example text to build on the
                        card title and make up the bulk of the card's content.</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Cras justo odio</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Card link</a> <a href="#"
                                                                   class="card-link">Another link</a>
                </div>
                <div class="card-footer text-muted">2 days ago</div>
            </div>

        </div>
        <div class="col-sm-7">
            <ul class="nav nav-tabs">
                <li class="nav-item"><a class="nav-link active"
                                        data-toggle="tab" href="#complete"><b>답변완료</b></a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                        href="#await"><b>답변대기</b></a></li>
                <li class="nav-item ml-auto"><a class="nav-link"
                                                data-toggle="tab" href="#latest">최신순</a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                        href="#popular">인기순</a></li>&nbsp;

            </ul>
            <br>

            <div id="myTabContent" class="tab-content">

                <div class="tab-pane fade active show" id="complete">
                    <!-- for each문 여기 넣으면 됩니다 -->
                    <div class="card bg-light">
                        <div class="card-body">
                            <div class="d-flex w-100 justify-content-between">
                                <h4 class="card-title">
                                    <a href="#"> <i class="fa fa-quora" aria-hidden="true"></i>
                                        답변 완료 질문 제목이 들어갑니다.
                                    </a>
                                </h4>
                                <small> <span class="glyphicon glyphicon-thumbs-up"
                                              aria-hidden="true"></span> 추천수
                                </small>
                            </div>
                            <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                            <p class="card-text">
                                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                1~5번 책 대분류 선택한 것
                            </p>
                        </div>
                    </div>
                    <br>

                    <div>
                        <br>
                        <br>
                        <ul
                                class="pagination pagination-lg justify-content-center align-items-center">
                            <li class="page-item"><a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="tab-pane fade" id="await">
                    <div class="card bg-light">
                        <div class="card-body">
                            <div class="d-flex w-100 justify-content-between">
                                <h4 class="card-title">
                                    <a href="#"> <i class="fa fa-quora" aria-hidden="true"></i>
                                        답변 대기 질문 제목이 들어갑니다.
                                    </a>
                                </h4>
                                <small> <span class="glyphicon glyphicon-thumbs-up"
                                              aria-hidden="true"></span> 추천수
                                </small>
                            </div>
                            <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                            <p class="card-text">
                                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                1~5번 책 대분류 선택한 것
                            </p>
                        </div>
                    </div>
                    <br>

                    <div>
                        <br>
                        <br>
                        <ul
                                class="pagination pagination-lg justify-content-center align-items-center">
                            <li class="page-item"><a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="tab-pane fade" id="latest">
                    <div class="card bg-light">
                        <div class="card-body">
                            <div class="d-flex w-100 justify-content-between">
                                <h4 class="card-title">
                                    <a href="#"> <i class="fa fa-quora" aria-hidden="true"></i>
                                        최신순으로 나열됩니다.
                                    </a>
                                </h4>
                                <small> <span class="glyphicon glyphicon-thumbs-up"
                                              aria-hidden="true"></span> 추천수
                                </small>
                            </div>
                            <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                            <p class="card-text">
                                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                1~5번 책 대분류 선택한 것
                            </p>
                        </div>
                    </div>
                    <br>

                    <div>
                        <br>
                        <br>
                        <ul
                                class="pagination pagination-lg justify-content-center align-items-center">
                            <li class="page-item"><a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="tab-pane fade" id="popular">
                    <div class="card bg-light">
                        <div class="card-body">
                            <div class="d-flex w-100 justify-content-between">
                                <h4 class="card-title">
                                    <a href="#"> <i class="fa fa-quora" aria-hidden="true"></i>
                                        인기순으로 나열됩니다.
                                    </a>
                                </h4>
                                <small> <span class="glyphicon glyphicon-thumbs-up"
                                              aria-hidden="true"></span> 추천수
                                </small>
                            </div>
                            <h6 class="card-subtitle mb-2 text-muted text-right">2020-12-01</h6>
                            <p class="card-text">
                                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                1~5번 책 대분류 선택한 것
                            </p>
                        </div>
                    </div>
                    <br>

                    <div>
                        <br>
                        <br>
                        <ul
                                class="pagination pagination-lg justify-content-center align-items-center">
                            <li class="page-item"><a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>


            </div>
        </div>

        <div class="col-sm-3">
            <div class="card border-secondary mb-3" id="guideline">
                <div class="card-header-gd">
                    <b>필독사항</b>
                </div>
                <div class="card-body">
                    <p>1. 검색어를 추천 받을 수 있습니다!</p>
                    <p>2. 토론을 유발할 가능성이 높은 질문은 피하세요!</p>
                    <p>3. 질문 내용에 개인정보(실명, 주민번호, 연락처)가 포함되지 않게 작성해주세요!</p>
                    <p>4. 추측성 답변은 삼가 주세요!</p>
                </div>
            </div>
            <div>
                <a href="#"><button type="button"
                                    class="btn btn-secondary btn-block">질문하기</button></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>