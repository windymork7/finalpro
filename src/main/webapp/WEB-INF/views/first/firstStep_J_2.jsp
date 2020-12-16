<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>firstStep_J_2</title>
<!-- 부트스트랩 -->
<%--<link rel="stylesheet" href="css/bootstrap.css">--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--%>
<%--<script--%>
<%--   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"--%>
<%--   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"--%>
<%--   crossorigin="anonymous"></script>--%>
<%--<script--%>
<%--   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"--%>
<%--   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"--%>
<%--   crossorigin="anonymous"></script>--%>

<style>
   p{
   color: black;
   }
   
   h3{
   color: black;
   }
   
   a{
   color:black;
   }
   pre{
        background-color: #BBDEFB;
        margin: 10px 20px;
   }
   
   

</style>

</head>
<body>

   <div class="container-fluid">
      <div class="row min-vh-100 flex-column flex-sm-row">
         <aside class="col-sm-2 p-0 flex-shrink-1">
            <nav class="navbar navbar-expand-lg navbar-light border-right flex-sm-column flex-row align-items-start py-2">
               <div class="collapse navbar-collapse ">
                  <ul class="flex-sm-column flex-row navbar-nav w-100 justify-content-between">
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline"><b>자바 시작하기</b></span></a>
               </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="langJavaFirst01.fi">
                     <span class="d-none d-sm-inline">안녕 JAVA!</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="langJavaFirst02.fi">
                     <span class="d-none d-sm-inline">변수</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">주석</span></a></li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                           <span class="d-none d-sm-inline">main-메소드</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                     <span class="d-none d-sm-inline"><b>자료형</b></span></a>
               </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">숫자(Number)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">부울(boolean)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">문자(char))</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">문자열(String)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">StringBuffer</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">배열(Array)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">리스트(List)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">제네릭스(Generics)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">맵(Map)</span></a>
                     </li>
                     <li class="nav-item activ"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                           <span class="d-none d-sm-inline"><b>제어문</b></span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">if문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">switch/case문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">while문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">for문</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">for each문</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                           <span class="d-none d-sm-inline"><b>객체지향 프로그래밍</b></span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">클래스</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">메소드(Method)</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">Call by value</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">상속</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">생성자</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">인터페이스</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">다형성</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">추상클래스</span></a>
                     </li>
                     <li class="nav-item active"><a class="nav-link pl-0" href="#">
                     <div class="dropdown-divider"></div>
                           <span class="d-none d-sm-inline"><b>자바 날개 달기</b></span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">패키지</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">접근제어자</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">정적 변수와 메소드</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">예외처리</span></a>
                     </li>
                     <li class="nav-item"><a class="nav-link pl-0" href="#">
                     <span class="d-none d-sm-inline">쓰레드</span></a>
                     </li>
                  </ul>
               </div>
            </nav>
         </aside>
         <main class="flex-grow-1 col-sm-10">
            <div class="container">
            
 <div class="jumbotron">
  <h1 class="display-3 text-right" style="color:#78c2ad">변수</h1>
</div>
            
<table class="table table-hover">

  <tbody>
    <tr>
      <th><a href="#_1">변수명</a></th>
    </tr>
    <tr>
      <th><a href="#type">자료형 (Type)</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#_2">변수에 값 대입하기</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#_3">자주 쓰이는 자료형</a></th>
    </tr>
    <tr>
      <th scope="row"><a href="#_4">사용자 정의 자료형</a></th>
    </tr>
  </tbody>
</table>
            
<p>다음 예와 같은 a, b를 변수(variable)라고 한다.</p>
<pre><code class="java">int a;
String b;
</code></pre>

<h3 id="_1">변수명</h3>
<p>변수의 이름은 프로그래머가 마음대로 지을 수 있다. 위의 예처럼 a, b 라는 이름으로 지을 수도 아래와 같이 one, two 라는 이름으로도 지을 수 있다. </p>
<pre><code class="java">int one;
String two;
</code></pre>

<p>단, 변수의 이름을 지을 때는 다음과 같이 지켜야 할 몇가지 규칙이 있다.</p>
<ul>
<li>변수명은 숫자로 시작할 수 없다.</li>
<li>_(underscore) 와 $ 문자 이외의 특수문자는 사용할 수 없다.</li>
<li>자바의 키워드는 변수명으로 사용할 수 없다. (예: int, class, return 등)</li>
</ul>
<p><em>[참고] 자바 키워드</em></p>
<pre><code class="no-highlight">abstract  continue  for         new        switch
assert    default   goto        package    synchronized
boolean   do        if          private    this
break     double    implements  protected  throw
byte      else      import      public     throws
case      enum      instanceof  return     transient
catch     extends   int         short      try
char      final     interface   static     void
class     finally   long        strictfp   volatile
const     float     native      super      while
</code></pre>

<p><em>잘못된 변수명의 사용예</em></p>
<pre><code class="no-highlight">int 1st;   // 변수명은 숫자로 시작할 수 없다.
int a#;    // 변수명에 특수문자를 사용할 수 없다.
int class; // 키워드를 변수명으로 사용할 수 없다.
</code></pre>

<h3 id="type">자료형 (Type)</h3>
<p>변수명 앞의 int, String 등은 변수의 자료형(Type)을 뜻한다.</p>
<p><code>int a;</code> 라는 문장은 다음과 같이 해석된다.</p>
<blockquote>
<p>변수a 는 int 자료형 변수이다. 즉 a라는 변수에는 int 자료형 값(1, 10, 25 등의 정수값)만 담을 수 있다. </p>
</blockquote>
<p><code>String b;</code> 라는 문장은 다음과 같이 해석된다.</p>
<blockquote>
<p>변수 b는 String 자료형 변수이다. 즉 b라는 변수에는 String 자료형 값("a", "hello" 등의 문자열값)만 담을 수 있다.</p>
</blockquote>
<h3 id="_2">변수에 값 대입하기</h3>
<p>변수 선언 후 다음과 같이 변수에 값을 대입 할 수 있다.</p>
<pre><code class="java">int a;
String b;

a = 1;
b = &quot;hello java&quot;;
</code></pre>

<p>변수에 값을 대입할 때는 위의 예에서와 같이 <code>=</code>(assignment) 기호를 사용한다.</p>
<p><code>a = 1;</code> 이라는 문장은 다음과 같이 해석된다.</p>
<blockquote>
<p>int 자료형 변수 a에 1 이라는 값을 대입한다.</p>
</blockquote>
<p><code>b = "hello java";</code> 라는 문장은 다음과 같이 해석된다.</p>
<blockquote>
<p>String 자료형 변수 b에 "hello java" 라는 값을 대입한다.</p>
</blockquote>
<p>다음과 같이 변수를 선언함과 동시에 값을 대입할 수도 있다.</p>
<pre><code class="java">int a = 1;
String b = &quot;hello java&quot;;
</code></pre>

<p></p><div class="tip"><p>
만약 int 자료형 변수인 a에 문자열을 대입하면 어떻게 될까?</p>
<pre><code class="java">int a = &quot;Hello java&quot;;
</code></pre>

<p>이클립스에서는 다음과 같은 오류메시지를 보여준다.</p>
<pre><code>Type mismatch: cannot convert from String to int
</code></pre>

<p>오류메시지는 String자료형을 int자료형으로 변환할 수 없다는 오류이다. 
</p></div><p></p>
<h3 id="_3">자주 쓰이는 자료형</h3>
<p>자료형에는 int, String 외에도 많은 자료형이 있다. 자바에서 가장 많이 사용되는 자료형은 다음과 같다.</p>
<ul>
<li>int</li>
<li>long</li>
<li>double</li>
<li>boolean</li>
<li>char</li>
<li>String</li>
<li>StringBuffer</li>
<li>List</li>
<li>Map</li>
</ul>
<p>예를 들어 StringBuffer, List 자료형에 해당되는 변수는 다음과 같이 만들 수 있다.</p>
<pre><code class="java">StringBuffer sb;
List myList;
</code></pre>

<p>위 코드는 다음과 같이 해석되어진다.</p>
<ul>
<li>sb 변수는 StringBuffer 자료형 변수이다. sb 변수에는 StringBuffer 자료형에 해당되는 값만 담을 수 있다.</li>
<li>myList 변수는 List 자료형 변수이다. myList 변수에는 List 자료형에 해당되는 값만 담을 수 있다.</li>
</ul>
<h3 id="_4">사용자 정의 자료형</h3>
<p>또 나중에 공부하겠지만 사용자가 직접 자료형을 만들 수 있다.</p>
<p>예를 들어 다음과 같이 Animal 이라는 클래스를 만들면,</p>
<pre><code class="java">class Animal {
}
</code></pre>

<p>다음과 같이 Animal 자료형 변수를 만들 수 있다.</p>
<pre><code class="java">Animal cat;
</code></pre>

<p>위 코드는 다음과 같이 해석되어진다.</p>
<blockquote>
<p>cat 이라는 변수는 Animal 자료형 변수이다. cat이라는 변수에는 Animal 자료형에 해당되는 값만 담을 수 있다.</p>
</blockquote>
<p>이상과 같이 변수명과 자료형과의 관계에 대해서 알아보았다. </p>
<p>※ 자료형과 클래스등에 대해서는 앞으로 자세하게 알아볼 것이다. 자료형과 클래스에 대한 궁금증은 잠시 뒤로 미루도록 하자.</p>
            </div>
         </main>
         
      </div>
   </div>

</body>
</html>