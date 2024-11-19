<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 


<head>

</head>

<body>

    <h1>자유게시판입니다.</h1>    

    <input type="button" value="게시글 목록" onclick="showPostEvent()">

    <input type="button" value="게시글 작성" onclick="writePostEvent()">


    <script>       
        function showPostEvent(){
            location.href="./showPostPage.jsp"
        }

        function writePostEvent(){
            location.href="./writePostPage.jsp"
        }
    </script>


</body>