<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>문제 풀이 사이트</title>
<link  rel="stylesheet" href="css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<div align="center">
   <header>
      <div>
         <a href="/todayProblem.bp"><b><h2>문제 풀이</h2></b></a>
      </div>
   </header>
      
   <nav>
      <div>
         <button type="button" class="btn btn-success" onclick="start()">문제 풀기</button>
      </div>
   </nav>
   
   <section>
      <div style="height: 50px;"></div>
      
      <div class="row" align="center">
<%--         <div id="categori1" class="col-md-3"></div>--%>
<%--         <div id="categori2" class="col-md-3"></div>--%>
<%--         <div id="categori3" class="col-md-3"></div>--%>
<%--         <div id="categori4" class="col-md-3"></div>--%>
         <div class="col-md-4"></div>
         <div id="categori" class="col-md-4"></div>
         <div class="col-md-4"></div>
      </div>

      <div style="height: 20px;"></div>

      <div class="row" style="height: 100px">
         <div id="title" class="col-md-4"></div>
         <div id="problem" class="col-md-8" align="left"></div>
      </div>

       <div style="height: 40px;"></div>

       <div id="image" style="height: 200px; width: 400px;"></div>


      <div class="row" style="height: 250px;" align="left">
         <div class="col-md-2" style="height: 400px;"></div>
         <div id="view" class="col-md-8" style="height: 400px;"></div>
         <div class="col-md-2" style="height: 400px;"></div>
      </div>
         <div id="answerHere">
            <!-- <audio autoplay controls="controls">
               <source src="audio/cool - a mourning image.mp3" type="audio/mp3">
            </audio> -->
         </div>
      </section>
   
   <footer>
   </footer>
</div>

</body>
<script type="text/javascript">

   	var random;
   	var html;

   function start()
   {
      // html = "";
      // html += "<button type='button' class='btn btn-warning' onclick='javaProblem()'>JAVA</button>";
      // $("#categori1").html(html);
      //
      // html = "";
      // html += "<button type='button' class='btn btn-warning' onclick='commonProblem()'>C</button>";
      // $("#categori2").html(html);
      //
      // html = "";
      // html += "<button type='button' class='btn btn-warning' onclick='capitalProblem()'>PYTHON</button>";
      // $("#categori3").html(html);
      //
      // html = "";
      // html += "<button type='button' class='btn btn-warning' onclick='sportProblem()'>ORACLE</button>";
      // $("#categori4").html(html);

      html = "";
      html += "<button type='button' class='btn btn-warning' onclick='javaProblem()'>JAVA</button> &nbsp;";
      html += "<button type='button' class='btn btn-warning' onclick='cProblem()'>C</button> &nbsp;";
      html += "<button type='button' class='btn btn-warning' onclick='pythonProblem()'>PYTHON</button> &nbsp;";
      html += "<button type='button' class='btn btn-warning' onclick='oracleProblem()'>ORACLE</button> &nbsp;";
      $("#categori").html(html);
   }
   
   function javaProblem()
   {
       $("#image").html("");

      random = Math.floor(Math.random()*8);

      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");
      
      
      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);
      
      $.ajax({
         url : "/JavaProblem.bp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var program = obj.program;
            var html = "";

            answer = program[random].pro[0].val6;

            html += "<b><font size='5' style=''>"+program[random].pro[0].val0+"</font>";
            $("#problem").html(html);

            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+program[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+program[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+program[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+program[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+program[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         },
         error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
         }

      });
   }
   
   function cProblem()
   {
       $("#image").html("");

      random = Math.floor(Math.random()*8);

      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");


      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);

      $.ajax({
         url : "/CProblem.bp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var program = obj.program;
            var html = "";

            answer = program[random].pro[0].val6;

            html += "<b><font size='5' style='line-height: 68px;'>"+program[random].pro[0].val0+"</font>";
            $("#problem").html(html);

            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+program[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+program[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+program[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+program[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+program[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         }
      });
   }

   function pythonProblem()
   {
       $("#image").html("");

      random = Math.floor(Math.random()*8);



      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");


      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);

      $.ajax({
         url : "/PythonProblem.bp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var program = obj.program;
            var html = "";

            answer = program[random].pro[0].val6;

             $("#problem").html(html);


            html += "<b><font size='6' style='line-height: 68px;'>"+program[random].pro[0].val0+"</font>";
            $("#problem").html(html);

             // 그림
             if (random == 1){
                 html = "<img src='img/PyProblem1.png'/>"
                 $("#image").html(html);
             } else if(random == 3){
                 html = "<img src='img/PyProblem3.png'/>";
                 $("#image").html(html);
             }else if(random == 4){
                 html = "<img src='img/PyProblem4.png'/>";
                 $("#image").html(html);
             }else{
                 html = "";
                 $("#image").html(html);
             }

            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+program[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+program[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+program[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+program[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+program[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         },
          error:function(request,status,error){
              alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
          }
      });
   }

   function oracleProblem()
   {
       $("#image").html("");

      random = Math.floor(Math.random()*8);

      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");


      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);

      $.ajax({
         url : "/OracleProblem.bp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var program = obj.program;
            var html = "";

            answer = program[random].pro[0].val6;

            html += "<b><font size='5' style='line-height: 68px;'>"+program[random].pro[0].val0+"</font>";
            $("#problem").html(html);

            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+program[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+program[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+program[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+program[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+program[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         }
      });
   }



   function submit(answer)
   {
	   var radioVal = $("input[name='bogi']:checked").val();

       $(("#"+answer)).css("color", "red");

	   if (answer == radioVal)
	   {
            html = "";
            html += "<font size='10'><strong>정답입니다.</strong></font>";
            $("#answerHere").html(html);

	   }
	   else
	   {
            html = "";
            html += "<font size='10'><strong>오답입니다.</strong></font>";
            $("#answerHere").html(html);
	   }

   }
</script>
</html>