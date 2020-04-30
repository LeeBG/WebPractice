<%-- 
    Document   : index
    Created on : 2020. 4. 1., 오후 11:54:22
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Beans 사용예제</title>
    </head>
    <body>
        1부터 n까지의 합을 구하는 프로그램
        
        <form action="show_sum.jsp" method="POST">
            n을 입력하세요 : <input type="text" name="n" value="" size="10" />
            <br/>
            <input type="submit" value="계산" />
            <input type="reset" value="초기화" />
        </form>         
    </body>
</html>
