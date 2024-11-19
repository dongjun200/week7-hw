<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %> 

<%
    request.setCharacterEncoding("utf-8");
    String useridValue = (String) session.getAttribute("userid");


    // String nameValue = (String) session.getAttribute("userName");

    String titleValue = request.getParameter("title");
    String contentValue = request.getParameter("content");

    Class.forName("org.mariadb.jdbc.Driver");

    Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");

    String sql = "INSERT INTO post(title, content, post_userid) VALUES(?, ?, ?)";

    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, titleValue);
    query.setString(2, contentValue);
    query.setString(3, useridValue);

    query.executeUpdate();

%>

<head>

</head>

<body>
    <script>
            alert("게시글이 저장되었습니다!") 
            location.href="./bulletinBoardPage.jsp"
    </script>
</body>