/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package deu.cse.maven_ood.ch06;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "InsertServlet", urlPatterns = {"/ch06/InsertTable/insert.do"})
public class InsertServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           final String JdbcDriver="com.mysql.cj.jdbc.Driver";
           final String JdbcUrl = "jdbc:mysql:///webmail?serverTimezone=Asia/Seoul";
           final String User = "jdbctester";
           final String Password="lee4313";
           
           try{
               Class.forName(JdbcDriver);
               Connection conn = DriverManager.getConnection(JdbcUrl,User,Password);
               String sql = "INSERT INTO addrbook VALUES(?,?,?)";
               PreparedStatement pstmt=conn.prepareStatement(sql);
               
               request.setCharacterEncoding("UTF-8");
               String email = request.getParameter("email");
               if(!(email==null) && !email.equals("")){
                   String name=request.getParameter("name");
                   String phone=request.getParameter("phone");
                   
                   pstmt.setString(1,email);
                   pstmt.setString(2, name);
                   pstmt.setString(3, phone);
                   
                   //5.실행 : PreparedStatement.executeUpdate()는 
                   //Insert, Update 또는 Delete시 사용가능함.
                   pstmt.executeUpdate();
               }
               pstmt.close();
               conn.close();
               
               response.sendRedirect("index.jsp");
           }catch(Exception ex){
               out.println("오류가 발생했습니다.(발생오류:"+ex.getMessage()+")");
               out.println("<br/><a href=\"index.jsp\">초기화면으로 가기</a>");
           }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "SQL문을 사용한 DB갱신";
    }// </editor-fold>

}
