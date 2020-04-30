<%-- 
    Document   : show_error
    Created on : 2020. 3. 22., 오후 12:51:58
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>오류 원인</title>
    </head>
    <body>
        오류원인은 <%= exception.toString() %> 입니다.
    </body>
</html>
