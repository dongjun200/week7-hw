<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %> 

<%
    request.setCharacterEncoding("utf-8");
    String postidValue = request.getParameter("postid");
    String nameValue = (String) session.getAttribute("userName");

    // String nameValue = request.getParameter("userName");

    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection( "jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");
    String sql = "SELECT * FROM post JOIN user on user.userid = post.post_userid WHERE postid=?";

    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, postidValue);

    ResultSet result = query.executeQuery();

%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <h1>게시글 내용</h1>
    <input type="button" value="댓글달기">

    <% while(result.next()) { %>

        <div>
            <div>제목: <%=result.getString("post.title")%> </div>
            <div>내용: <%=result.getString("post.content")%> </div>
        </div>

    <% } %>

</body>