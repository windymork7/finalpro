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
    <title>sb_problem</title>
    <!-- 부트스트랩 -->
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--            crossorigin="anonymous"></script>--%>

    <style>

        .nav-tabs .nav-link {
            border: 1px solid transparent;
            border-top-left-radius: 0.4rem;
            border-top-right-radius: 0.4rem;
        }


        .btn3-outline-gray {
            color: #888;
            border-color: #888;
        }

        .btn3-outline-gray:hover {
            color: #fff;
            background-color: #888;
            border-color: #888;
        }

        .btn3-outline-gray:focus, .btn3-outline-gray.focus {
            box-shadow: 0 0 0 0.2rem rgba(136, 136, 136, 0.5);
        }

        .btn3-outline-gray.disabled, .btn3-outline-gray:disabled {
            color: #888;
            background-color: transparent;
        }

        .btn3-outline-gray:not(:disabled):not(.disabled):active, .btn3-outline-gray:not(:disabled):not(.disabled).active,
        .show > .btn3-outline-gray.dropdown-toggle {
            color: #fff;
            background-color: #888;
            border-color: #888;
        }

        .btn3-outline-gray:not(:disabled):not(.disabled):active:focus, .btn3-outline-gray:not(:disabled):not(.disabled).active:focus,
        .show > .btn3-outline-gray.dropdown-toggle:focus {
            box-shadow: 0 0 0 0.2rem rgba(136, 136, 136, 0.5);
        }

        .btn3-outline-deepgreen {
            color: #34551F;
            border-color: #34551F;
        }

        .btn3-outline-deepgreen:hover {
            color: #fff;
            background-color: #34551F;
            border-color: #34551F;
        }

        .btn3-outline-deepgreen:focus, .btn3-outline-deepgreen.focus {
            box-shadow: 0 0 0 0.2rem rgba(52, 85, 31, 0.5);
        }

        .btn3-outline-deepgreen.disabled, .btn3-outline-deepgreen:disabled {
            color: #34551F;
            background-color: transparent;
        }

        .btn3-outline-deepgreen:not(:disabled):not(.disabled):active, .btn3-outline-deepgreen:not(:disabled):not(.disabled).active,
        .show > .btn3-outline-deepgreen.dropdown-toggle {
            color: #fff;
            background-color: #34551F;
            border-color: #34551F;
        }

        .btn3-outline-deepgreen:not(:disabled):not(.disabled):active:focus, .btn3-outline-deepgreen:not(:disabled):not(.disabled).active:focus,
        .show > .btn3-outline-deepgreen.dropdown-toggle:focus {
            box-shadow: 0 0 0 0.2rem rgba(52, 85, 31, 0.5);
        }

        .card-header-gd {
            padding: 0.75rem 1.25rem;
            margin-top:0;
            margin-bottom: 0;
            background-color: #f3969a;
            color: #fff;
            border-radius: 0.4rem 0.4rem 0 0;
            border-top: 2px solid #f3969a;
            border-left: 2px solid #f3969a;
            border-bottom:0px;
            border-right: 2px solid #f3969a;
        }

        .fa-quora {
            color: #78c2ad
        }

        .btn2 {
            display: inline-block;
            font-weight: 400;
            color: #888;
            text-align: center;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-color: transparent;
            border: 1px solid transparent;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.4rem;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .btn2:hover {
            color: #888;
            text-decoration: none;
        }

        .btn2:focus, .btn2.focus {
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(120, 194, 173, 0.25);
        }

        .btn2.disabled, .btn2:disabled {
            opacity: 0.65;
        }

        .btn2:not(:disabled):not(.disabled) {
            cursor: pointer;
        }

        a.btn2.disabled,
        fieldset:disabled a.btn {
            pointer-events: none;
        }

        .btn2-primary {
            color: #fff;
            background-color: #78c2ad;
            border-color: #78c2ad;
        }

        .btn2-primary:hover {
            color: #fff;
            background-color: #5eb69d;
            border-color: #55b298;
        }

        .btn2-primary:focus, .btn2-primary.focus {
            color: #fff;
            background-color: #5eb69d;
            border-color: #55b298;
            box-shadow: 0 0 0 0.2rem rgba(140, 203, 185, 0.5);
        }

        .btn2-primary.disabled, .btn2-primary:disabled {
            color: #fff;
            background-color: #78c2ad;
            border-color: #78c2ad;
        }

        .btn2-primary:not(:disabled):not(.disabled):active, .btn2-primary:not(:disabled):not(.disabled).active,
        .show > .btn-primary.dropdown-toggle {
            color: #fff;
            background-color: #55b298;
            border-color: #4eac92;
        }

        .btn2-primary:not(:disabled):not(.disabled):active:focus, .btn2-primary:not(:disabled):not(.disabled).active:focus,
        .show > .btn-primary.dropdown-toggle:focus {
            box-shadow: 0 0 0 0.2rem rgba(140, 203, 185, 0.5);
        }

    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row">

        <div class="col-sm-2">
            <div class="card mb-3">
                <img src="img/Banner1.png" width="100%">
            </div>
        </div>

        <div class="col-sm-7">

            <ul class="nav nav-tabs">

                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn-outline-info active"
                       style="border-color:#6cc3d5; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro" onclick="cProblem()"><b>C</b></a>
                </li>
                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn-outline-secondary"
                       style="border-color:#f3969a; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro" onclick="javaProblem()"><b>JAVA</b></a>
                </li>
                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn-outline-warning"
                       style="border-color:#ffce67; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro" onclick="pythonProblem()"><b>PYTHON</b></a>
                </li>
                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn3-outline-gray"
                       style="border-color:#888; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro" onclick="oracleProblem()"><b>ORACLE</b></a>
                </li>
                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn-outline-danger"
                       style="border-color:#ff7851; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro"><b>MYSQL</b></a>
                </li>
                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn-outline-success"
                       style="border-color:#56cc9d; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro"><b>SPRING</b></a>
                </li>
                <li class="nav-item text-center" style="width: 14.285714%; border-radius: 0rem;">
                    <a class="nav-link btn3 btn3-outline-deepgreen"
                       style="border-color:#34551F; border-width: 2px; margin: 0px 1.5px 0px 1.5px;" data-toggle="tab"
                       href="#Pro"><b>DJANGO</b></a>
                </li>

            </ul>


            <div class="tab-pane fade show active" id="Pro">
                <br>
                <div class="card mb-3">
                    <div class="card-header">
                        <h4 class="card-title" style="margin: 2px;">
                            <i class="fa fa-quora" aria-hidden="true"></i>
                            <%-- 문제 --%>
                            <span id="Problem"></span>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="card-text" id="question-text">
                            <%-- 문제 이미지 --%>
                            <div id="Image"></div>
                            <br>
                            <br>
                            <fieldset>
                                <div class="form-group">
                                    <div id="Exm"></div>
                                </div>
                            </fieldset>
                            <br>
                            <div class="d-flex w-100 justify-content-between">
                                <%-- 답 버튼 --%>
                                <div id="AnswerButton"></div>
                                <%-- 답--%>
                                <div id="AnswerHere"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3">

            <div class="card" style="border:0">
                <div class="card-header-gd">
                    <b>오늘의 문제</b>
                </div>
                <div class="card-body" style="border: 2px solid #f3969a;  border-radius: 0rem 0rem 0.4rem 0.4rem;">
                    <p>1. 풀기 원하는 출제 영역을 고르세요.</p>
                    <p>2. 문제가 랜덤으로 출제됩니다.</p>
                    <p>3. 문제를 풀어보며 공부한 내용을 점검해보세요.</p>
                </div>
            </div>

        </div>

    </div>
</div>
</body>
<script>
/*
    $(window).on('load', function(){

    });*/

    $(document).ready(function() {
        cProblem();
    });



    function cProblem() {
        $("#Image").html("");
        $("#AnswerHere").html("");

        random = Math.floor(Math.random() * 8);

        $.ajax({
            url: "/CProblem.bp",
            type: "get",
            data: "",
            success: function (data) {
                var obj = JSON.parse(data);
                var program = obj.program;
                var html = "";


                answer = program[random].pro[0].val6;

                html += "<b><font size='5' style=''>" + program[random].pro[0].val0 + "</font>";
                $("#Problem").html(html);

                // if (random == 1){
                //     html = "<img src=\"img/Check.jpg\" width=\"100%\">";
                //     $("#JavaImage").html(html);
                // }


                html = "<div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio6\" name=\"customRadio\" class=\"custom-control-input\" value=\"val1\">\n" +
                    "                                            <label id='val1' class=\"custom-control-label\" for=\"customRadio6\" style=\"font-size: 20px;\">" + program[random].pro[0].val1 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio7\" name=\"customRadio\" class=\"custom-control-input\" value=\"val2\">\n" +
                    "                                            <label id='val2' class=\"custom-control-label\" for=\"customRadio7\" style=\"font-size: 20px;\">" + program[random].pro[0].val2 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio8\" name=\"customRadio\" class=\"custom-control-input\" value=\"val3\">\n" +
                    "                                            <label id='val3' class=\"custom-control-label\" for=\"customRadio8\" style=\"font-size: 20px;\">" + program[random].pro[0].val3 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio9\" name=\"customRadio\" class=\"custom-control-input\" value=\"val4\">\n" +
                    "                                            <label id='val4' class=\"custom-control-label\" for=\"customRadio9\" style=\"font-size: 20px;\">" + program[random].pro[0].val4 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio10\" name=\"customRadio\" class=\"custom-control-input\" value=\"val5\">\n" +
                    "                                            <label id='val5' class=\"custom-control-label\" for=\"customRadio10\" style=\"font-size: 20px;\">" + program[random].pro[0].val5 + "</label>\n" +
                    "                                        </div>";

                $("#Exm").html(html);

                html = "";
                html += "<button type=\"button\" class=\"btn2 btn2-primary\" onclick=\"submit(" + 'answer' + ")\">\n" +
                    "                                        <h4 style=\"margin: 0px;\">정답 확인 &nbsp;\n" +
                    "                                            <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i></h4>\n" +
                    "                                    </button>";

                $("#AnswerButton").html(html);

            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });
    }

    // 자바 문제
    function javaProblem() {
        $("#Image").html("");
        $("#AnswerHere").html("");

        random = Math.floor(Math.random() * 8);

        $.ajax({
            url: "/JavaProblem.bp",
            type: "get",
            data: "",
            success: function (data) {
                var obj = JSON.parse(data);
                var program = obj.program;
                var html = "";

                answer = program[random].pro[0].val6;

                html += "<b><font size='5' style=''>" + program[random].pro[0].val0 + "</font>";
                $("#Problem").html(html);

                // if (random == 1){
                //     html = "<img src=\"img/Check.jpg\" width=\"100%\">";
                //     $("#JavaImage").html(html);
                // }


                html = "<div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio6\" name=\"customRadio\" class=\"custom-control-input\" value=\"val1\">\n" +
                    "                                            <label id='val1' class=\"custom-control-label\" for=\"customRadio6\" style=\"font-size: 20px;\">" + program[random].pro[0].val1 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio7\" name=\"customRadio\" class=\"custom-control-input\" value=\"val2\">\n" +
                    "                                            <label id='val2' class=\"custom-control-label\" for=\"customRadio7\" style=\"font-size: 20px;\">" + program[random].pro[0].val2 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio8\" name=\"customRadio\" class=\"custom-control-input\" value=\"val3\">\n" +
                    "                                            <label id='val3' class=\"custom-control-label\" for=\"customRadio8\" style=\"font-size: 20px;\">" + program[random].pro[0].val3 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio9\" name=\"customRadio\" class=\"custom-control-input\" value=\"val4\">\n" +
                    "                                            <label id='val4' class=\"custom-control-label\" for=\"customRadio9\" style=\"font-size: 20px;\">" + program[random].pro[0].val4 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio10\" name=\"customRadio\" class=\"custom-control-input\" value=\"val5\">\n" +
                    "                                            <label id='val5' class=\"custom-control-label\" for=\"customRadio10\" style=\"font-size: 20px;\">" + program[random].pro[0].val5 + "</label>\n" +
                    "                                        </div>";

                $("#Exm").html(html);

                html = "";
                html += "<button type=\"button\" class=\"btn2 btn2-primary\" onclick=\"submit(" + 'answer' + ")\">\n" +
                    "                                        <h4 style=\"margin: 0px;\">정답 확인 &nbsp;\n" +
                    "                                            <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i></h4>\n" +
                    "                                    </button>";

                $("#AnswerButton").html(html);

            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });
    }

    function pythonProblem() {
        $("#Image").html("");
        $("#AnswerHere").html("");

        random = Math.floor(Math.random() * 8);

        $.ajax({
            url: "/PythonProblem.bp",
            type: "get",
            data: "",
            success: function (data) {
                var obj = JSON.parse(data);
                var program = obj.program;
                var html = "";

                answer = program[random].pro[0].val6;

                html += "<b><font size='5' style=''>" + program[random].pro[0].val0 + "</font>";
                $("#Problem").html(html);

                // if (random == 1){
                //     html = "<img src=\"img/Check.jpg\" width=\"100%\">";
                //     $("#JavaImage").html(html);
                // }

                // 그림
                if (random == 1){
                    html = "<img src='img/PyProblem1.png' width='100%'/>"
                    $("#Image").html(html);
                } else if(random == 3){
                    html = "<img src='img/PyProblem3.png' width='100%'/>";
                    $("#Image").html(html);
                }else if(random == 4){
                    html = "<img src='img/PyProblem4.png' width='100%'/>";
                    $("#Image").html(html);
                }else{
                    html = "";
                    $("#Image").html(html);
                }


                html = "<div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio6\" name=\"customRadio\" class=\"custom-control-input\" value=\"val1\">\n" +
                    "                                            <label id='val1' class=\"custom-control-label\" for=\"customRadio6\" style=\"font-size: 20px;\">" + program[random].pro[0].val1 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio7\" name=\"customRadio\" class=\"custom-control-input\" value=\"val2\">\n" +
                    "                                            <label id='val2' class=\"custom-control-label\" for=\"customRadio7\" style=\"font-size: 20px;\">" + program[random].pro[0].val2 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio8\" name=\"customRadio\" class=\"custom-control-input\" value=\"val3\">\n" +
                    "                                            <label id='val3' class=\"custom-control-label\" for=\"customRadio8\" style=\"font-size: 20px;\">" + program[random].pro[0].val3 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio9\" name=\"customRadio\" class=\"custom-control-input\" value=\"val4\">\n" +
                    "                                            <label id='val4' class=\"custom-control-label\" for=\"customRadio9\" style=\"font-size: 20px;\">" + program[random].pro[0].val4 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio10\" name=\"customRadio\" class=\"custom-control-input\" value=\"val5\">\n" +
                    "                                            <label id='val5' class=\"custom-control-label\" for=\"customRadio10\" style=\"font-size: 20px;\">" + program[random].pro[0].val5 + "</label>\n" +
                    "                                        </div>";

                $("#Exm").html(html);

                html = "";
                html += "<button type=\"button\" class=\"btn2 btn2-primary\" onclick=\"submit(" + 'answer' + ")\">\n" +
                    "                                        <h4 style=\"margin: 0px;\">정답 확인 &nbsp;\n" +
                    "                                            <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i></h4>\n" +
                    "                                    </button>";

                $("#AnswerButton").html(html);

            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }

        });
    }

    function oracleProblem() {
        $("#Image").html("");
        $("#AnswerHere").html("");

        random = Math.floor(Math.random() * 8);

        $.ajax({
            url: "/OracleProblem.bp",
            type: "get",
            data: "",
            success: function (data) {
                var obj = JSON.parse(data);
                var program = obj.program;
                var html = "";

                answer = program[random].pro[0].val6;

                html += "<b><font size='5' style=''>" + program[random].pro[0].val0 + "</font>";
                $("#Problem").html(html);

                // if (random == 1){
                //     html = "<img src=\"img/Check.jpg\" width=\"100%\">";
                //     $("#JavaImage").html(html);
                // }


                html = "<div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio6\" name=\"customRadio\" class=\"custom-control-input\" value=\"val1\">\n" +
                    "                                            <label id='val1' class=\"custom-control-label\" for=\"customRadio6\" style=\"font-size: 20px;\">" + program[random].pro[0].val1 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio7\" name=\"customRadio\" class=\"custom-control-input\" value=\"val2\">\n" +
                    "                                            <label id='val2' class=\"custom-control-label\" for=\"customRadio7\" style=\"font-size: 20px;\">" + program[random].pro[0].val2 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio8\" name=\"customRadio\" class=\"custom-control-input\" value=\"val3\">\n" +
                    "                                            <label id='val3' class=\"custom-control-label\" for=\"customRadio8\" style=\"font-size: 20px;\">" + program[random].pro[0].val3 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio9\" name=\"customRadio\" class=\"custom-control-input\" value=\"val4\">\n" +
                    "                                            <label id='val4' class=\"custom-control-label\" for=\"customRadio9\" style=\"font-size: 20px;\">" + program[random].pro[0].val4 + "</label>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"custom-control custom-radio\">\n" +
                    "                                            <input type=\"radio\" id=\"customRadio10\" name=\"customRadio\" class=\"custom-control-input\" value=\"val5\">\n" +
                    "                                            <label id='val5' class=\"custom-control-label\" for=\"customRadio10\" style=\"font-size: 20px;\">" + program[random].pro[0].val5 + "</label>\n" +
                    "                                        </div>";

                $("#Exm").html(html);

                html = "";
                html += "<button type=\"button\" class=\"btn2 btn2-primary\" onclick=\"submit(" + 'answer' + ")\">\n" +
                    "                                        <h4 style=\"margin: 0px;\">정답 확인 &nbsp;\n" +
                    "                                            <i class=\"fa fa-caret-right\" aria-hidden=\"true\"></i></h4>\n" +
                    "                                    </button>";

                $("#AnswerButton").html(html);

            },
            error: function (request, status, error) {
                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        });
    }


    // 자바 정답 체크
    function submit(answer) {
        var radioVal = $("input[name='customRadio']:checked").val();

        $(("#" + answer)).css("color", "red");

        if (answer == radioVal) {
            html = "";
            html += "<h4 class=\"text-primary\" style=\"margin: 0.375rem 0.75rem;\">정답입니다\n" +
                "                                    <i class=\"fa fa-smile-o\" aria-hidden=\"true\"></i>\n" +
                "                                    </h4>";
            $("#AnswerHere").html(html);

        } else {
            html = "";
            html += "<h4 class=\"text-secondary\" style=\"margin: 0.375rem 0.75rem;\">오답입니다\n" +
                "                                        <i class=\"fa fa-frown-o\" aria-hidden=\"true\"></i>\n" +
                "                                    </h4>";
            $("#AnswerHere").html(html);
        }

    }

</script>
</html>