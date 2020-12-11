<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=de0vice-width, initial-scale=1">
    <title>adminPage_main</title>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://use.fontawesome.com/b490e94c82.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>

    <style>
        .nav-tabs .nav-link {
            border: 1px solid transparent;
            border-top-left-radius: 1rem;
            border-top-right-radius: 1rem;
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

        a {
            color: #888;
            text-decoration: none;
            background-color: transparent;
        }

        a:hover {
            color: #888;
            text-decoration: none;
        }
    </style>

</head>
<body>

<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-10 offset-sm-1">
            <ul class="nav nav-tabs">
                <li class="nav-item text-center" style="width: 16.666666%"><a
                        class="nav-link active" data-toggle="tab" href="#site_statistics"><b>
                    사이트 통계</b></a></li>

                <li class="nav-item text-center" style="width: 16.666666%"><a
                        class="nav-link" data-toggle="tab" href="#survey_statistics"><b>
                    설문조사 통계</b></a></li>

                <li class="nav-item text-center" style="width: 16.666666%"><a
                        class="nav-link" data-toggle="tab" href="#mem_management1"><b>회원
                    관리1</b></a></li>

                <li class="nav-item text-center" style="width: 16.666666%"><a
                        class="nav-link" data-toggle="tab" href="#mem_management2"><b>회원
                    관리2</b></a></li>

                <li class="nav-item text-center" style="width: 16.666666%"><a
                        class="nav-link" data-toggle="tab" href="#post_management"><b>게시물
                    관리</b></a></li>

                <li class="nav-item text-center" style="width: 16.666666%"><a
                        class="nav-link" data-toggle="tab" href="#scrapBook"><b>
                    스크랩북</b></a></li>
            </ul>
            <br>

            <div id="myTabContent" class="tab-content">

                <div class="tab-pane fade active show" id="site_statistics">
                    <div class="text-center">
                        <legned>일일 접속자 수 통계</legend> <br>
                            <legend>게시물 조회 순위 통계</legend>
                    </div>
                </div>

                <div class="tab-pane fade" id="survey_statistics">
                    <div class="text-center">
                        <legend>프로그래밍 언어 설문조사 통계</legend>
                    </div>
                </div>

                <div class="tab-pane fade" id="mem_management1">
                    <div class="text-center">
                        <legend>
                            <b>신고 10회 이상 받은 회원 목록</b>
                        </legend>

                        <table class="table">
                            <thead>
                            <tr class="table-secondary">
                                <th scope="col" style="width: 10%" class="text-center">번호</th>
                                <th scope="col" style="width: 25%" class="text-center">이메일</th>
                                <th scope="col" style="width: 15%" class="text-center">닉네임</th>
                                <th scope="col" style="width: 15%" class="text-center">이름</th>
                                <th scope="col" style="width: 10%" class="text-center">등급</th>
                                <th scope="col" style="width: 12.5%" class="text-center">회원번호</th>
                                <th scope="col" style="width: 12.5%" class="text-center">활동정지</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="table-light">
                                <td style="width: 10%" class="text-center">1</td>
                                <td style="width: 25%" class="text-center">sl@dsq.com</td>
                                <td style="width: 15%" class="text-center">디에스큐</td>
                                <td style="width: 15%" class="text-center">김땡떙</td>
                                <td style="width: 10%" class="text-center">1</td>
                                <td style="width: 12.5%" class="text-center">1</td>
                                <td style="width: 12.5%" class="text-center">
                                    <button type="button" class="btn btn-danger">제재</button>
                                </td>


                            </tr>
                            </tbody>
                        </table>

                        <br> <br>

                        <div>
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

                <div class="tab-pane fade" id="mem_management2">
                    <div class="text-center">
                        <legend>
                            <b>블랙리스트</b>
                        </legend>
                    </div>

                    <table class="table">
                        <thead>
                        <tr class="table-secondary">
                            <th scope="col" style="width: 10%" class="text-center">번호</th>
                            <th scope="col" style="width: 25%" class="text-center">이메일</th>
                            <th scope="col" style="width: 15%" class="text-center">닉네임</th>
                            <th scope="col" style="width: 15%" class="text-center">이름</th>
                            <th scope="col" style="width: 10%" class="text-center">등급</th>
                            <th scope="col" style="width: 25%" class="text-center">해지일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="table-light">
                            <td style="width: 10%" class="text-center">1</td>
                            <td style="width: 20%" class="text-center">sl@dsq.com</td>
                            <td style="width: 15%" class="text-center">디에스큐</td>
                            <td style="width: 15%" class="text-center">김땡떙</td>
                            <td style="width: 10%" class="text-center">1</td>
                            <td style="width: 30%" class="text-center">2020.12.06</td>
                        </tr>
                        </tbody>
                    </table>


                    <br> <br>
                    <div>
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

                <div class="tab-pane fade" id="post_management">
                    <div class="text-center">
                        <legend>
                            <b>신고 10회 이상 받은 게시물</b>
                        </legend>
                    </div>
                    <table class="table">
                        <thead>
                        <tr class="table-secondary">
                            <th scope="col" style="width: 10%" class="text-center">번호</th>
                            <th scope="col" style="width: 20%" class="text-center">카테고리</th>
                            <th scope="col" style="width: 50%" class="text-center">제목</th>
                            <th scope="col" style="width: 20%" class="text-center">작성자</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="table-light">
                            <td style="width: 10%" class="text-center">1</td>
                            <td style="width: 20%" class="text-center">카테고리카테고리</td>
                            <td style="width: 50%"><a href="#">글제목글제목글제목글제목글제목</a></td>
                            <td style="width: 20%" class="text-center">초뚜</td>
                        </tr>
                        </tbody>
                    </table>


                    <br> <br>

                    <div>
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

                <div class="tab-pane fade" id="scrapBook">
                    <div class="text-center">
                        <legend>
                            <b>스크랩북 승인 대기 목록</b>
                        </legend>
                    </div>
                    <table class="table">
                        <thead>
                        <tr class="table-secondary">
                            <th scope="col" style="width: 5%" class="text-center">번호</th>
                            <th scope="col" style="width: 12%" class="text-center">대분류</th>
                            <th scope="col" style="width: 15%" class="text-center">소분류</th>
                            <th scope="col" style="width: 7%" class="text-center">작성자</th>
                            <th scope="col" style="width: 25%" class="text-center">제목</th>
                            <th scope="col" style="width: 10%" class="text-center">작성일</th>
                            <th scope="col" style="width: 8%" class="text-center">추천수</th>
                            <th scope="col" style="width: 8%" class="text-center">신고수</th>
                            <th scope="col" style="width: 10%" class="text-center">승인상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="table-light">
                            <td style="width: 5%" class="text-center">1</td>
                            <td style="width: 12%" class="text-center">데이터베이스</td>
                            <td style="width: 15%" class="text-center">객체지향 프로그래밍</td>
                            <td style="width: 7%" class="text-center">작성자</td>
                            <td style="width: 25%"><a href="#">제목</a></td>
                            <td style="width: 10%" class="text-center">2020.12.11</td>
                            <td style="width: 8%" class="text-center">ㅋㅋㅋㅋ</td>
                            <td style="width: 8%" class="text-center">ㅋㅋㅋㅋ</td>
                            <td style="width: 10%" class="text-center">ㅋㅋㅋㅋ</td>
                        </tr>
                        </tbody>
                    </table>

                    <br> <br>
                    <div>
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
    </div>
</div>
</body>
</html>