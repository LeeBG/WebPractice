<%-- 
    Document   : index
    Created on : 2020. 4. 24., 오후 9:08:50
    Author     : 이병길
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags/ch06" prefix="mytags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>주소록 추가</title>
    </head>
    <body>
        <h1>주소록</h1>
        <hr/>
        <c:catch var="errorReason">
            <mytags:addrbook user="jdbctester" password="lee4313" schema="webmail" table="addrbook"/>
        </c:catch>
        ${empty errorReason ? "<noerror/>":errorReason}
        <br/>
        <a href="insert_form.jsp">주소록 추가</a>
       
    </body>
</html>
