<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<%@ page import="java.sql.ResultSet" %> 


<%
%>

<head>

</head>

    <h1>비밀번호 찾기 페이지</h1>
    아이디를 입력하시오: <input type="text" id="id_value">
    <input type="button" value="다음" onclick="showPwEvent()">


<body>


<script>
    function showPwEvent(){
        var idValue = document.getElementById("id_value").value

        location.href = "./showPwPage.jsp?id=" + idValue
    }
</script>

</body>


</script>

</body>
