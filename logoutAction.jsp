<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page session="true" %>


<%
    session.invalidate(); 
    response.sendRedirect("index.jsp"); 
%>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <script>
            alert("로그아웃 되었습니다!")
            location.href="./index.jsp"
    </script>


</body>  

