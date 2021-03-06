/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package exoticatravels;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import javax.servlet.AsyncContext;


/**
 *
 * @author Administrator
 */
@WebServlet(asyncSupported=true, name="SessionServlet", urlPatterns={"/SessionServlet"})

public class SessionServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        AsyncContext aCtx = request.startAsync(request, response);
        
        ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(10);
                
        executor.execute(new Asynchandler(aCtx));
                
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession(true);
String requestingPageName = request.getParameter("PageName");
if(requestingPageName.equals("Destination"))
  {
    String selectedDestination = request.getParameter("Destination");
    session.setAttribute("selDestination", selectedDestination);
    RequestDispatcher dispatch =
    request.getRequestDispatcher("Hotels.jsp");
    dispatch.forward(request, response);
  }
else if(requestingPageName.equals("Hotels"))
  {
    String selectedHotel = request.getParameter("HotelName");
 String noOfDays = request.getParameter("numOfDays");
 session.setAttribute("selHotel", selectedHotel);
 session.setAttribute("numOfDays", noOfDays);
 RequestDispatcher dispatch =
 request.getRequestDispatcher("Flights.jsp");
 dispatch.forward(request, response);
}
 else if(requestingPageName.equals("FlightsServlet"))
  {
     String selectedAirline = request.getParameter("Airline");
     session.setAttribute("selAirline", selectedAirline);
     RequestDispatcher dispatch =
     request.getRequestDispatcher("Cart.jsp");
     dispatch.forward(request, response);
    }

        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
