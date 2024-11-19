<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="loginPage.css">
</head>

<body>
    <section class="login">
        <form id ="container" action="index.jsp">
            <h1 id="title">Login</h1>
            <div class="inputArea">
                <input type="text" name="id" id="idValue" required>
                <label for="id">아이디</label>
            </div> 
            <div class="inputArea">
                <input type="password" name="pw" id="pwValue" required>
                <label for="pw">비밀번호</label>
            </div> 
            <div>
                <input type="button" value="로그인" id="loginButton" onclick="loginEvent()">
            </div>
        </form>
        <a href="signupPage.jsp">회원가입</a>
        <a href="findIdPage.jsp">ID 찾기</a>
        <a href="findPwPage.jsp">PW 찾기</a>
    </section>



    <script>
        function loginEvent(){
            idValue = document.getElementById("idValue").value
            pwValue = document.getElementById("pwValue").value


            location.href="./loginAction.jsp?id=" + idValue + "&pw=" + pwValue
        }

    </script>

</body>

