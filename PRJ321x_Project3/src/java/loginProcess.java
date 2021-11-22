/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/loginProcess"})
public class loginProcess extends HttpServlet {

    DataHelper dataHelper = new DataHelper();
   

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
            out.println("<title>Servlet loginProcess</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginProcess at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        
        dataHelper.map.put("user0", "admin0");
        dataHelper.map.put("user1", "admin1");
        dataHelper.map.put("user2", "admin2");
        System.out.println(dataHelper.map.isEmpty());
        String page = "signIn.jsp";
        String action = request.getParameter("action");
        
        if (action.equals("signin")) {
            String username = request.getParameter("signinusername");
            String password = request.getParameter("signinpassword");
            if (password.equals(dataHelper.map.get(username))) {
                HttpSession session = request.getSession();
                if(!dataHelper.listUser.contains(username))
                    dataHelper.listUser.add(username);
                //print list when logged in
                session.setAttribute("userlogin", dataHelper.listUser);
                session.setAttribute("user", username);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "Wrong username/password");
                request.getRequestDispatcher("signIn.jsp").forward(request, response);
            }
        } else if (action.equals("signup")) {
            String usernameSignUp = request.getParameter("signupusername");
            String passwordSignUp = request.getParameter("signuppassword");

            for (String key : dataHelper.map.keySet()) {
                if (key.equals(usernameSignUp)) {
                    request.setAttribute("messageSignUp", "User name has exist");
                    page = "signUp.jsp";
                    RequestDispatcher rd = request.getRequestDispatcher(page);
                    rd.forward(request, response);
                }
            }
            if (!usernameSignUp.matches("^[a-zA-Z0-9]{6,}$")) {
                request.setAttribute("messageSignUp", "Username mustn't contain special characters and length >= 6");
                page = "signUp.jsp";
            }else if(!passwordSignUp.matches("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[_@$!%*#?&])[A-Za-z\\d_@$!%*#?&]{8,}$")){
                request.setAttribute("messageSignUp", "Password must contain at least 1 letter, 1 digit, 1 special character and length >= 8");
                page = "signUp.jsp";
            } else {
                dataHelper.map.put(usernameSignUp, passwordSignUp);
                page = "signIn.jsp";
            }
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
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
