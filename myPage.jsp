<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %> 

<%
    request.setCharacterEncoding("utf-8");

    // String nameValue = request.getParameter("userName");
    String nameValue = (String) session.getAttribute("userName");

    Class.forName("org.mariadb.jdbc.Driver");
    Connection connect = DriverManager.getConnection( "jdbc:mariadb://localhost:3306/blog", "dongjun", "1234");
    String sql = "SELECT id, password, name, email, phonenumber, address, birthdate, created_time FROM user WHERE name=?";

    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, nameValue);

    ResultSet result = query.executeQuery();

%>



<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <h1>내 정보</h1>

    <% while(result.next()) { %>
        <div>
            <div>  아이디: <%=result.getString("id")%></div>    
            <div>비밀번호: <%=result.getString("password")%></div>
            <div>    이름: <%=result.getString("name")%></div>
            <div>  이메일: <%=result.getString("email")%></div>
            <div>전화번호: <%=result.getString("phonenumber")%></div>
            <div>   주소: <%=result.getString("address")%></div>
            <div>생년월일: <%=result.getString("birthdate")%></div>
            <div>생성시간: <%=result.getString("created_time")%></div>

        </div>
    <% } %>

</body>