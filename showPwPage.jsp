<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<%@ page import="java.sql.ResultSet" %> 


<%
    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id");


    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection( "jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");

    String sql = "SELECT password FROM user WHERE id=?";
    PreparedStatement query = connect.prepareStatement(sql);
    
    query.setString(1, idValue);
    // Table에 존재하는 row의 개수만큼 화면에 반복 출력
    // js의 createElement를 써서 원래는 html 중복코드를 해결 했었음
    //-> 모든 페이지에 공통으로 들어가는 header나 aside등 만들쨰 사용하는게 createElement

    //우리 같은 경우는 jsp와html의 스파게티 코드로 해결을 할것임
    ResultSet result = query.executeQuery();

%>

<head>

</head>
<body>
    <h1>비밀번호</h1>
    <% while(result.next()) { %>
        <div>
            <span><%=result.getString("password")%></span>
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