<%-- 
    Document   : index
    Created on : 2020. 4. 24., 오후 8:38:15
    Author     : 이병길
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>주소록 보기1</title>
    </head>
    <body>
        
        <h1>주소록</h1>
        <hr/>
        <%
            final String JdbcDriver = "com.mysql.cj.jdbc.Driver";
            final String JdbcUrl = "jdbc:mysql://localhost:3306/webmail?serverTimezone=Asia/Seoul";
            final String User = "jdbctester";
            final String Password = "lee4313";
            
            try{
                //1.JDBC Driver 적재
                Class.forName(JdbcDriver);
                //2.Connection 객체 생성
                Connection conn = DriverManager.getConnection(JdbcUrl,User,Password);
                //3.statement 객체 생성
                Statement stmt = conn.createStatement();
                //4. SQL 질의(query)실행
                String sql = "SELECT email,name,phone FROM addrbook";
                ResultSet rs = stmt.executeQuery(sql);
                //5.SQL질의 결과 활용
                //테이블 헤더
         %>
         <table border="1">
             <thead>
                 <tr>
                     <th>이름</th>
                     <th>이메일</th>
                     <th>전화번호</th>
                 </tr>
             </thead>
             <tbody>
                 <%
                     while(rs.next()){
                         //테이블 몸체
                         out.println("<tr>");
                         out.println("<td>"+rs.getString("name")+"</td>");
                         out.println("<td>"+rs.getString("email")+"</td>");
                         out.println("<td>"+rs.getString("phone")+"</td>");
                         out.println("</tr>");
                         
                     }
                 //자원 해제
                 rs.close();
                 stmt.close();
                 conn.close();
                 %>
             </tbody>
         </table>
                 <%
                    }catch(Exception ex){
                        out.println("오류가 발생했습니다.(발생오류:"+ex.getMessage()+")");

                    }
                 %>
    </body>
</html>
