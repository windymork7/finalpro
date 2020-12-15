<html>
<head> <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="jquery-1.8.1.js"></script>
    <script type="text/javascript">
        google.setOnLoadCallback(drawChart);

        function drawChart() {
            var jsonData = $.ajax({
                url: "sampleData.json",
                dataType: "json",
                async: false
            }).responseText;
            var data = new google.visualization.DataTable(jsonData);

            var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, {width: 400, height: 240});


        }


    </script>
</head>
<body> <!--Div that will hold the pie chart-->
<div id="chart_div"></div>
<button id="btn" type="button" onclick="drawChart()">reflesh</button>
</body>
</html>

