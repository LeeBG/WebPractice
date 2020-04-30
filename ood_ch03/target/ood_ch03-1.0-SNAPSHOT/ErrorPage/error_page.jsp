<%-- 
    Document   : error_page
    Created on : 2020. 3. 22., 오후 12:50:14
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage = "show_error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page 지시어의 오류 관련 속성 사용 예제</title>
    </head>
    <body>
         <%= 5/0 %>
    </body>
</html>
