/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author truon
 */
@WebFilter(filterName = "AuthenticationFiter", urlPatterns = {"/add-to-cart", "/carts", "/checkout", "/delete-cart", "/update-quantity"}) // de chan
public class AuthenticationFiter implements Filter {
    
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
       // ep kieu
        HttpServletRequest request1 = (HttpServletRequest) request;
        HttpServletResponse response1 = (HttpServletResponse) response;
        
        HttpSession session = request1.getSession();
        // kiem tra dang nhap
        Account account = (Account) session.getAttribute("account");
        if (account != null) {
            // cho qua su dung chain
            chain.doFilter(request, response);
        } else {
        // check cookie
         // kiem tra cookie
        Cookie[] cookies = request1.getCookies(); // lay cookies
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
            Account accountLogin = new AccountDAO().login(username, password);
            if (account != null) { // cookies hop le thi cho no dang nhap
               session.setAttribute("account", account);
               chain.doFilter(request, response); // cho no qua
//                response.sendRedirect("home");
                return;
            } 
        }
        response1.sendRedirect("login");
        }
    }

   

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {        
    }

    /**
     * Init method for this filter
     */
    @Override
    public void init(FilterConfig filterConfig) {        
       
    }
}
    