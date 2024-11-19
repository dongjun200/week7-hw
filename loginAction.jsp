<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<%-- 데이터베이스로부터 값 받아오기 라이브러리 (db에서 보내주는 값 번역해주는 라이브러리) --%>
<%@ page import="java.sql.ResultSet" %> 


<%

    request.setCharacterEncoding("utf-8");

    String idValue = request.getParameter("id");
    String pwValue = request.getParameter("pw");
    Class.forName("org.mariadb.jdbc.Driver");

    Connection connect = DriverManager.getConnection( "jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");

    String sql = "SELECT * FROM user WHERE id=? AND password=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);
    // SQL 전송
    ResultSet result = query.executeQuery();

    if (result.next()) {
        String nameValue = result.getString("name");
        String useridValue = result.getString("userid");

        session.setAttribute("userName", nameValue);
        session.setAttribute("userid", useridValue);

        
        response.sendRedirect("index.jsp");
    } 
    else {
        out.println("아이디 또는 비밀번호가 잘못되었습니다.");
    }

%>

<head>

</head>
<body>


<script>
</script>

</body>


