<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 


<head>

</head>

<body>


    제목: <input type="text" id="title_value">
    <div>
        <textarea id="content_value">내용을 입력해주세요</textarea>
    </div>
    <input type="button" value="저장" onclick="savepostEvent()">

    <script>
        function savepostEvent(){
            titleValue = document.getElementById("title_value").value
            contentValue = document.getElementById("content_value").value

            location.href="./savePostAction.jsp?title=" + titleValue + "&content=" + contentValue
        }
    </script>


</body>