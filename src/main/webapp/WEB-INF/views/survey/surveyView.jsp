<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>survey_result</title>
    <!-- 부트스트랩 -->
<%--    <link rel="stylesheet" href="css/bootstrap.css">--%>
<%--    <script src="https://use.fontawesome.com/b490e94c82.js"></script>--%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--    <script--%>
<%--            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--    <script--%>
<%--            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--            crossorigin="anonymous"></script>--%>

    <style>
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
            <img src="img/Banner1.png" width="100%">
        </div>

        <div class="col-sm-7">
            <form>
                <fieldset>
                    <div class="card mb-3">
                        <div class="card-header">
                            <b>설문조사 결과</b>
                        </div>
                        <div class="card-body">
                            <div class=text-center>
                                <h1>성별 설문조사 비율</h1><br><br>
                                <div id="gender" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>설문자 연령대</h1><br><br>
                                <div id="age" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>가장 많이 사용하는 언어</h1><br><br>
                                <div id="language" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>가장 배우고 싶은 언어</h1><br><br>
                                <div id="studyLanguage" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>가장 많이 사용하는 데이터베이스</h1><br><br>
                                <div id=database style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>가장 배우고 싶은 데이터베이스</h1><br><br>
                                <div id="studyDatebase" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>가장 많이 사용하는 프레임워크</h1><br><br>
                                <div id="framework" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                                <h1>가장 배우고 싶은 프레임워크</h1><br><br>
                                <div id="studyFramework" style="width: 800px; height: 500px; margin: 0 auto"></div><br><br><br><br>
                            </div>
                            <br><br>
                        </div>
                </fieldset>
            </form>
        </div>

        <div class="col-sm-3">
            <div class="card border-secondary mb-3" id="guideline">
                <div class="card-header-gd">
                    <b>공지사항</b>
                </div>
                <div class="card-body">
                    <p>1. 설문조사 작성 후, 결과를 확인할 수 있습니다!</p>
                    <p>2. 보기의 내용과 가장 가깝다고 생각하는 선택지에 체크해주세요!</p>
                    <p>3. 설문조사는 한 계정당 1회만 참여할 수 있습니다!</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart2);
    google.charts.setOnLoadCallback(drawChart3);
    google.charts.setOnLoadCallback(drawChart4);
    google.charts.setOnLoadCallback(drawChart5);
    google.charts.setOnLoadCallback(drawChart6);
    google.charts.setOnLoadCallback(drawChart7);
    google.charts.setOnLoadCallback(drawChart8);


    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['남자', ${survey["1"]}],
            ['여자',    ${survey["2"]}]
        ]);

        var options = {
            title: '',
            width: '100%',
            is3D: true,
            colors:['#6cc3d5','#F5A9BC'],
            backgroundColor: {
                // gradient: {
                    color1: '#fbf6a7',
                    color2: '#33b679',
                    x1: '0%', y1: '0%',
                    x2: '100%', y2: '100%',
                    useObjectBoundingBoxUnits: true
                // },
            },
        };

        var chart = new google.visualization.PieChart(document.getElementById('gender'));
        chart.draw(data, options);
        window.addEventListener('resize', drawChart, false);
    }


    <%--function drawChart2() {--%>
    <%--    var data = google.visualization.arrayToDataTable([--%>
    <%--        ['연령', '10대', '20대', '30대', '40대'],--%>
    <%--        [' ', ${survey["3"]}, ${survey["4"]}, ${survey["5"]}, ${survey["6"]}]--%>

    <%--    ]);--%>

    <%--    var options = {--%>
    <%--        title: '설문자 연령대',--%>
    <%--        colors:['#6cc3d5','#F5A9BC','#fbf6a7','#33b679'],--%>
    <%--    };--%>

    <%--    var chart = new google.charts.Bar(document.getElementById('age'));--%>

    <%--    chart.draw(data, google.charts.Bar.convertOptions(options));--%>
    <%--}--%>

    function drawChart2() {
        var data = new google.visualization.arrayToDataTable([
            ['연령', '10대', '20대', '30대', '40대', '50대이상'],
            [' ', ${survey["3"]}, ${survey["4"]}, ${survey["5"]}, ${survey["6"]},${survey["7"]}],
        ]);

        var options = {
            title: '',
            colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997'],
        };

        var chart = new google.charts.Bar(document.getElementById('age'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
    };



    function drawChart3() {
        var data = google.visualization.arrayToDataTable([
            ['언어', 'JAVA', 'PYTHON', 'C', 'C#', 'C++', 'KOTLIN', 'HTML', 'CSS', 'JAVASCRIPT'],
            [' ', ${survey["8"]}, ${survey["9"]}, ${survey["10"]}, ${survey["11"]}, ${survey["12"]}
                , ${survey["13"]}, ${survey["14"]}, ${survey["15"]},${survey["16"]}]

        ]);

        var options = {
            title: '',
            colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997', '#58ACFA', '#F5A9F2', '#2EFEC8', '#4fde78', '#ff7851'],
        };

        var chart = new google.charts.Bar(document.getElementById('language'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
    }


    function drawChart4() {
        var data = google.visualization.arrayToDataTable([
            ['언어', 'JAVA', 'PYTHON', 'C', 'C#', 'C++', 'KOTLIN', 'HTML', 'CSS', 'JAVASCRIPT'],
            [' ', ${survey["17"]}, ${survey["18"]}, ${survey["19"]}, ${survey["20"]}, ${survey["21"]}
                , ${survey["22"]}, ${survey["23"]}, ${survey["24"]}, ${survey["25"]}]

        ]);

        var options = {
            title: '',
            colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997', '#58ACFA', '#F5A9F2', '#2EFEC8', '#4fde78', '#ff7851'],
        };

        var chart = new google.charts.Bar(document.getElementById('studyLanguage'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
    }
    
    /***************/
        function drawChart5() {
        var data = google.visualization.arrayToDataTable([
            ['데이터베이스', 'Oracle', 'MySQL', 'NoSQL', 'MongoDB', 'PostgreSQL', 'Redis', 'MariaDB'],
            [' ', ${survey["26"]}, ${survey["27"]}, ${survey["28"]}, ${survey["29"]}, ${survey["30"]}, ${survey["31"]}
                , ${survey["32"]}]

        ]);

        var options = {
            title: '',
            colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997', '#58ACFA', '#F5A9F2', '#2EFEC8', '#4fde78', '#ff7851'],
        };

        var chart = new google.charts.Bar(document.getElementById('database'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
    }
    
       function drawChart6() {
           var data = google.visualization.arrayToDataTable([
           	['데이터베이스', 'Oracle', 'MySQL', 'NoSQL', 'MongoDB', 'PostgreSQL', 'Redis', 'MariaDB'],
            [' ', ${survey["33"]}, ${survey["34"]}, ${survey["35"]}, ${survey["36"]}, ${survey["37"]}, ${survey["38"]}
            , ${survey["39"]}]

           ]);

           var options = {
               title: '',
               colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997', '#58ACFA', '#F5A9F2', '#2EFEC8', '#4fde78', '#ff7851'],
           };

           var chart = new google.charts.Bar(document.getElementById('studyDatebase'));

           chart.draw(data, google.charts.Bar.convertOptions(options));
       }
       
       function drawChart7() {
           var data = google.visualization.arrayToDataTable([
               ['프레임워크', 'Spring', 'Django', 'Node.js', 'React', 'Angular', 'NETCore', 'Tensorflow'],
               [' ', ${survey["40"]}, ${survey["41"]}, ${survey["42"]}, ${survey["43"]}, ${survey["44"]}, ${survey["45"]}, ${survey["46"]}]

           ]);

           var options = {
               title: '',
               colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997', '#58ACFA', '#F5A9F2', '#2EFEC8', '#4fde78', '#ff7851'],
           };

           var chart = new google.charts.Bar(document.getElementById('framework'));

           chart.draw(data, google.charts.Bar.convertOptions(options));
       }
       
       function drawChart8() {
           var data = google.visualization.arrayToDataTable([
               ['프레임워크', 'Spring', 'Django', 'Node.js', 'React', 'Angular', 'NETCore', 'Tensorflow'],
               [' ', ${survey["47"]}, ${survey["48"]}, ${survey["49"]}, ${survey["50"]}, ${survey["51"]}, ${survey["52"]}, ${survey["53"]}]
           ]);

           var options = {
               title: '',
               colors:['#6cc3d5','#f5a9bc','#ffce67','#20c997', '#58ACFA', '#F5A9F2', '#2EFEC8', '#4fde78', '#ff7851'],
           };

           var chart = new google.charts.Bar(document.getElementById('studyFramework'));

           chart.draw(data, google.charts.Bar.convertOptions(options));
       }
</script>
</html>