<%-- 
    Document   : show_sum
    Created on : 2020. 4. 2., 오후 8:20:32
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="sum" scope="page" class="cse.my_name.ood_ch04.beans.SumBean"/>
<jsp:setProperty name="sum" property="n"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Beans 사용예제</title>
    </head>
    <body>
        <% sum.calculate();%>
        계산 결과 1: <jsp:getProperty name="sum" property="result"/> <br>
        계산 결과 2: <%= sum.getResult() %> <br>
        계산 결과 3: ${sum.result}
    </body>
</html>
