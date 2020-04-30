<%-- 
    Document   : insert_form.jsp
    Created on : 2020. 4. 24., 오후 9:50:27
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>주소록 추가 폼</title>
    </head>
    <body>
        <h1>주소록 추가</h1>
        <hr/>
        <form action="insert.do" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>이름</td>
                        <td><input type="text" name="name" size="30" /></td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" name="email" size="30" /></td>
                    </tr>
                    <tr>
                        <td>전화번호</td>
                        <td><input type="text" name="phone" size="30" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                <center>
                    <input type="submit" value="추가"/>
                    <input type="reset" value="초기화"/>
                </center>
                </td>
                </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
