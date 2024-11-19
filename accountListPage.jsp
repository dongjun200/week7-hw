<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<%-- 데이터베이스로부터 값 받아오기 라이브러리 (db에서 보내주는 값 번역해주는 라이브러리) --%>
<%@ page import="java.sql.ResultSet" %> 


<%

    //---------------------DB 통신 //단순암기해도됌---------------------------


    //Connector파일 찾아오기
    Class.forName("org.mariadb.jdbc.Driver");
    //만약 여기에서 에러가 난다면, Connector 파일이 없음 / DB를 설치ㅏ지 않았음 / DB 서버가 꺼져있음

    //DB 서버에 연결
    Connection connect = DriverManager.getConnection( "jdbc:mariadb://localhost:3306/web", "stageus", "1234");
    //괄호안에 DB주소 // 서버안에 디비서버가 있으므로 localhost 로 가능, 사용자아이디, 비밀번호

    //SQL 준비
    String sql = "SELECT id, name FROM account";
    PreparedStatement query = connect.prepareStatement(sql);
    // SQL 전송
    ResultSet result = query.executeQuery();
    
    // Table에 존재하는 row의 개수만큼 화면에 반복 출력
    // js의 createElement를 써서 원래는 html 중복코드를 해결 했었음
    //-> 모든 페이지에 공통으로 들어가는 header나 aside등 만들쨰 사용하는게 createElement

    //우리 같은 경우는 jsp와html의 스파게티 코드로 해결을 할것임



//     result.next()
//     result.next()
//     result.next()
//  만약 4번째 row에 접근하려면 커서를 이렇게 3번을 움직여야 함
%>

<head>

</head>

<body>
    <h1>회원 목록</h1>

    <% while(result.next()) { %>
        <div>
            <span><%=result.getString("id")%></span>
            <span><%=result.getString("name")%></span>
        </div>
    <% } %>

</body>


<%-- <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <h1>아이디 : <%=idValue%></h1>

    <script>
        //백엔드에서 만든 변수를 프론트엔드로 넘기면 자료형을 무시하고 raw데이터가 넘어감
        console.log("<%=idValue%>")
    </script>



</body> --%><%-- 프론트엔드가 나왔다면(페이지 넘어갔다면) 에러없이 JSP가 작동한거임 --%>

<script>

</script>