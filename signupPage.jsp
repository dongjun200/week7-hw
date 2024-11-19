<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 

<%

%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="signupPage.css">
</head>

<body>
    <section class="inputForm">
        <div class="inputArea">
            아이디 <input type="text" id="id_value">
        </div>

        <div class="inputArea">
            비밀번호 <input type="password" id="pw_value">
        </div>

        <div class="inputArea">
            이름 <input type="text" id="name_value">
        </div>

        <div class="inputArea">
            이메일 <input type="text" id="email_value">
        </div>

        <div class="inputArea">
            전화번호 <input type="text" id="phoneNumber_value">
        </div>

        <div class="inputArea">
            주소 <input type="text" id="address_value">
        </div>

        <div class="inputArea">
            생년월일 <input type="text" id="birthdate_value">
        </div>

        <input type="button" value="회원가입" id="signupButton" onclick="signupEvent()">
    </section>

    <script>

    function signupEvent() {
        var idValue = document.getElementById("id_value").value
        var pwValue = document.getElementById("pw_value").value
        var nameValue = document.getElementById("name_value").value
        var emailValue = document.getElementById("email_value").value
        var phoneNumberValue = document.getElementById("phoneNumber_value").value
        var addressValue = document.getElementById("address_value").value
        var birthdateValue = document.getElementById("birthdate_value").value

        location.href = "./signupAction.jsp?id=" + idValue + "&pw=" + pwValue + "&name=" + nameValue + 
        "&email=" + emailValue + "&phonenumber=" + phoneNumberValue + "&address=" + addressValue + 
        "&birthdate=" + birthdateValue
    }   
    </script>

</body>