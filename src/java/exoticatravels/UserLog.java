/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exoticatravels;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 *
 * @author Espi
 */
@WebFilter(filterName = "UserLog", urlPatterns = {"/ValidationServlet"})
public class UserLog implements Filter {
    
    @Override
    public void init(FilterConfig config)
            throws ServletException {
        
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws ServletException, IOException {
            HttpServletRequest req = (HttpServletRequest) request;
            String requestURL = req.getRequestURL().toString();
            String userid = req.getParameter("uid");
            Date d = new Date();
            FileWriter first = new FileWriter(new File("log.txt"),true);
            BufferedWriter br = new BufferedWriter(first);
            br.append("Logged in by User:"+userid+" Time:"+d.toString());
            br.close();
            chain.doFilter(request,response);
            
    }
        @Override
        public void destroy() {
            throw new UnsupportedOperationException("Not supported yet.");
        }

}
