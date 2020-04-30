<%-- 
    Document   : index.jsp
    Created on : 2020. 4. 17., 오후 4:57:20
    Author     : 이병길
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//w3c//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>URL관련 액션 예제</title>
    </head>
    <body>
        <c:import url="header.jsp"/>
        본문 내용입니다.<br/>
        <c:url value="footer.jsp" var="footerUrl">
            <c:param name="date" value="March 1,2020"/>
            <c:param name="user" value="홍길동" />
        </c:url>
        
        footer URL: <c:out value="${footerUrl}" />
        <a href="${footerUrl}">footer 따로보기 </a>
        <c:import url="${footerUrl}"/>
        
    </body>
</html>
