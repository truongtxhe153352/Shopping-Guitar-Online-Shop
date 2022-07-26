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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author truon
 */
public class LoginController extends HttpServlet {

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
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
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
        // processRequest(request, response);
        // kiem tra cookie
        Cookie[] cookies = request.getCookies(); // lay cookies
        String username = null;
        String password = null;
        // lay usename va password do voa xem no co hop le khong
        for (Cookie cooky : cookies) {
            if (cooky.getName().equals("username")) { // neu bang thi luu vao usernam 
                username = cooky.getValue();
            }
            if (cooky.getName().equals("password")) { // neu bang thi luu vao usernam 
                password = cooky.getValue();
            }
            if (username != null && password != null) {
                break;
            }
        }
        // kiem tra da co trong trinh duyet, neu co thi mang di login
        if (username != null && password != null) {
            Account account = new AccountDAO().login(username, password);
            if (account != null) { // cookies hop le thi cho no dang nhap
                request.getSession().setAttribute("account", account);
//                response.sendRedirect("home");
//                return;
            }
        }
        // con khong hop le thi cho ve trang login
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean remember = request.getParameter("remember") != null;

        // check usename vaf password
        Account account = new AccountDAO().login(username, password);

        if (account != null) {        // hop le => cho dang nhap va luu tren session => neu khac null thi dung
            if (remember) { // remenber => tao cookie va luu duoi trinh duyet nguoi dung
                Cookie usernameCookie = new Cookie("username", username); // cookie chi luu duoi dang string
                usernameCookie.setMaxAge(60 * 60 * 24);// giay gio ngay
                Cookie passwordCookie = new Cookie("password", password); // cookie chi luu duoi dang string
                passwordCookie.setMaxAge(60 * 60 * 24);// giay gio ngay
                response.addCookie(usernameCookie);// luu vao may nguoi dung
                response.addCookie(passwordCookie);// luu vao may nguoi dung
            }
            request.getSession().setAttribute("account", account); // luu len session
            response.sendRedirect("home");
        } else {         // khong hop le => tra ve loi
            request.setAttribute("error", "Username or password incorrect!. Please try again!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
