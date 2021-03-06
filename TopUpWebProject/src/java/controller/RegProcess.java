/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.User;
import dao.ManageUsers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kaif Ul Majed
 */
public class RegProcess extends HttpServlet {

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
            out.println("<title>Servlet RegServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
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
        //processRequest(request, response);
        response.setContentType("text/html");  
          
        RequestDispatcher view;
        HttpSession session=request.getSession();
        if(request.getParameter("username").equals("")|| request.getParameter("password").equals("")|| request.getParameter("address").equals("")|| request.getParameter("mobile").equals("")|| request.getParameter("email").equals("")){
            session.setAttribute("registration", "Please Fill up all the fields.");
            view=request.getRequestDispatcher("loginregistration.jsp");
            view.forward(request, response);
        }
        if(!(request.getParameter("password").equals(request.getParameter("repass")))){
            
            session.setAttribute("registration", "Please Enter same Passwords");
            view=request.getRequestDispatcher("loginregistration.jsp");
            view.forward(request, response);
        }
        User u = new User(request.getParameter("username"), request.getParameter("password"), request.getParameter("address"), request.getParameter("mobile"), request.getParameter("email"));
        ManageUsers mu = new ManageUsers();
        String i = mu.addUser(u);
        
        if(i.equals("Username already exists!")){
            session.setAttribute("registration", i);
            view=request.getRequestDispatcher("loginregistration.jsp");
            view.forward(request, response);
        }
        else if (i.equals((String)request.getParameter("username"))){
            
            session.setAttribute("registration", "Welcome "+i+", Login now to continue.");
            view=request.getRequestDispatcher("loginregistration.jsp");
            view.forward(request, response);
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
