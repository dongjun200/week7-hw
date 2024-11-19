<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="index.css">
</head>

<body>
<%
    String userName = (String) session.getAttribute("userName");
    if (userName != null) {
%>
        <h1>반갑습니다, <%= userName %>님!</h1>
<%
    } else {
%>
        <p id="loginMessage">로그인을 해주세요</p>
<%
    }
%>
    <section>
        <div id="container">
            <h1>Blog</h1>
            <input type="button" value="로그인" onclick="loginEvent()">
            <input type="button" value="로그아웃" onclick="logoutEvent()">
            <input type="button" value="마이페이지" onclick="enterMypageEvent()">
            <a href="bulletinBoardPage.jsp">자유게시판</a>
            <a href="noticePage.jsp">공지사항</a>  
        </div>
    </section>
    <script src="index.js"></script>
</body>






