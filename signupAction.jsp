<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%-- 데이터베이스 탐색 라이브러리 --%>
<%@ page import="java.sql.DriverManager" %> 

<%-- 데이터베이스 연결 라이브러리 --%>
<%@ page import="java.sql.Connection" %> 

<%-- SQL 준비 및 전송 라이브러리 --%>
<%@ page import="java.sql.PreparedStatement" %> 


<%
    //JSP 영역
    //request 앞페이지에서 불러온 값전체
    // 앞 페이지에서 넘어온 값에 대한 인코딩 설정 ( 한글 안깨지게 )

    request.setCharacterEncoding("utf-8");

    //값 받아오기
    String idValue = request.getParameter("id");
    String pwValue = request.getParameter("pw");
    String nameValue = request.getParameter("name");
    String emailValue = request.getParameter("email");
    String phoneNumberValue = request.getParameter("phonenumber");
    String addressValue = request.getParameter("address");
    String birthdateValue = request.getParameter("birthdate");


    //---------------------DB 통신 //단순암기해도됌---------------------------


    //Connector파일 찾아오기
    Class.forName("org.mariadb.jdbc.Driver");
    //만약 여기에서 에러가 난다면, Connector 파일이 없음 / DB를 설치ㅏ지 않았음 / DB 서버가 꺼져있음

    //DB 서버에 연결
    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");
    //괄호안에 DB주소 // 서버안에 디비서버가 있으므로 localhost 로 가능, 사용자아이디, 비밀번호

    //SQL 준비
    String sql = "INSERT INTO user(id, password, name, email, phonenumber, address, birthdate) VALUES(?, ?, ?, ?, ?, ?, ?)"; // ?를 나중에 채워줌
    PreparedStatement query = connect.prepareStatement(sql);
    //db쿼리
    query.setString(1, idValue);
    query.setString(2, pwValue);
    query.setString(3, nameValue);
    query.setString(4, emailValue);
    query.setString(5, phoneNumberValue);
    query.setString(6, addressValue);
    query.setString(7, birthdateValue);


    // SQL 전송
    query.executeUpdate();

%>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
<%-- 
    <h1>아이디 : <%=idValue%></h1>
s
    <script>
        console.log("<%=idValue%>")
    </script>
        백엔드에서 만든 변수를 프론트엔드로 넘기면 자료형을 무시하고 raw데이터가 넘어감 --%>
<script>
        alert("회원가입에 성공하였습니다!")
        location.href="./loginPage.jsp"
</script>


</body>  
<%-- 프론트엔드가 나왔다면(페이지 넘어갔다면) 에러없이 JSP가 작동한거임 --%>

