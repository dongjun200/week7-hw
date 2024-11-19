<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %> 

<%
    request.setCharacterEncoding("utf-8");

    // String nameValue = request.getParameter("userName");

    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection( "jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");
    String sql = "SELECT * FROM post JOIN user on user.userid = post.post_userid";

    PreparedStatement query = connect.prepareStatement(sql);

    ResultSet result = query.executeQuery();
    

%>



<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <h1>게시글 목록</h1>
    <% while(result.next()) {%>

        <div>
            <div>작성자: <%=result.getString("user.id")%></div>
            <%-- <div>작성자: <%=result.getString("post.postid")%></div> --%>

            <div onmouseover="changeColorEvent(this, 'blue')"  onclick="showPostContentEvent()">제목: <%=result.getString("post.title")%></div>
        </div>

    <% } %>

    <script>
        function changeColorEvent(element, color){
            element.style.color = color;
        }


        function showPostContentEvent(){
            var postidValue="<%=postidValue%>";
            location.href = "./writeCommentPage.jsp?postid=" + postidValue;
        }
    </script>


</body>            

