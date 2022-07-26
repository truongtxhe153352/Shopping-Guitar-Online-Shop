/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author truon
 */
public class RegisterController extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //  processRequest(request, response);
        request.getRequestDispatcher("register.jsp").forward(request, response);
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
        // processRequest(request, response);
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String displayName = request.getParameter("displayName");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String repeatpassword = request.getParameter("repeatpassword");

        //dung
        AccountDAO accountDao = new AccountDAO();
        Account account = accountDao.checkAccountExit(username);
        if (account != null) {
            request.setAttribute("r", "Account have exist");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            if (!password.equals(repeatpassword)) {
                request.setAttribute("r", "Pass not equal Repeatpassword");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
//                try {
                    accountDao.register(username, password, displayName, address, email, phone);
                    response.sendRedirect("login");
//                } catch (Exception e) {
//                }
            }
        }
        
        
        
        
        
        //        if (!password.equals(repeatpassword)) {
//            
//            response.sendRedirect("register.jsp");
//        } else {
//            AccountDAO accountDao = new AccountDAO();
//            Account account = accountDao.checkAccountExit(username);
//            if (account != null) { // co the sigup
//                response.sendRedirect("register.jsp");
//            } else { // day ve trang login
//                accountDao.register(username, password, displayName, address, email, phone);
//                response.sendRedirect("home");
//            }
//        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
