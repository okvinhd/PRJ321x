/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VinhD
 */
@WebServlet(urlPatterns = {"/servletPost"})
public class servletPost extends HttpServlet {

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
            out.println("<title>Servlet servletPost</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletPost at " + request.getContextPath() + "</h1>");
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

        ServletOutputStream out = response.getOutputStream();
        response.setContentType("text/html");
        out.println("<html><head><title>Basic Form Processor Output</title></head>");
        out.println("<body>");
        
        //extract the form data here
        String name = request.getParameter("name");
        String surName = request.getParameter("surName");
        String pNumber = request.getParameter("pNumber");
        String eAddress = request.getParameter("eAddress");
        // extracting data from the checkbox field
        String[] interests = request.getParameterValues("subject");
        //output the data into a web page

        if (!name.trim().isEmpty() && !surName.trim().isEmpty() && !pNumber.trim().isEmpty() && !eAddress.trim().isEmpty() && interests != null) {
            out.println("<h1>Here is your Form Data</h1>");
            out.println("Your name is " + name);
            out.println("<br>Your Surname is : " + surName);
            out.println("<br>Your Phone Number is: " + pNumber);
            out.println("<br>Your email Address is: " + eAddress);
            out.println("<br>Your subject include:  <ul> ");
            for (int i = 0; i < interests.length; i++) {
                out.println("<li>" + interests[i]);
            }

        } else {
//            writer.append("    You did not entered a name!\r\n");
            out.println("    Not empty!\r\n");
        }
        out.println("</ul>");
        out.println("</body></html>");
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
