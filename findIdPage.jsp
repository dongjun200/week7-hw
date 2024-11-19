<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<%@ page import="java.sql.ResultSet" %> 


<%

%>

<head>

</head>

    <h1>아이디 찾기 페이지</h1>
    이메일을 입력하시오: <input type="text" id="email_value">
    <input type="button" value="다음" onclick="showIdEvent()">


<body>


<script>
    function showIdEvent(){
        var emailValue = document.getElementById("email_value").value

        location.href = "./showIdPage.jsp?email=" + emailValue
    }
</script>

</body>
