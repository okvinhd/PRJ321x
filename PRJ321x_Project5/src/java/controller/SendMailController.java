/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.MailInfo;
import java.io.IOException;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dal.EmailServer;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author thanh
 */
public class SendMailController extends HttpServlet {

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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account == null) {
            response.sendRedirect("login");
        } else {
            request.getRequestDispatcher("Compose.jsp").forward(request, response);
        }
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
        try {
            EmailServer emailServer = new EmailServer();
            String host = MailInfo.getHost();
            String port = MailInfo.getPort();
            String email = MailInfo.getEmail();
            String pass = MailInfo.getPassword();

            String subject = request.getParameter("subject");
            String content = request.getParameter("content");

            String recipientTo = request.getParameter("to");
            String recipientCc = request.getParameter("cc");

            String[] toList = (recipientTo.split(","));
            String[] ccList = recipientCc.split(",");
            InternetAddress[] myToList = new InternetAddress[toList.length];
            InternetAddress[] myCcList = new InternetAddress[ccList.length];

            Message msg = new MimeMessage(emailServer.preSendEmail(host, port, email, pass, subject, pass));

            if (!recipientTo.trim().equals("")) {
                int countTo = 0;
                for (String recTo : toList) {
                    myToList[countTo] = new InternetAddress(recTo.trim());
                    emailServer.SendMail(msg, myToList[countTo], Message.RecipientType.TO, email, subject, content);
                    countTo++;
                }
            }

            if (!recipientCc.trim().equals("")) {
                int countCc = 0;
                for (String recCc : ccList) {
                    myCcList[countCc] = new InternetAddress(recCc.trim());
                    emailServer.SendMail(msg, myCcList[countCc], Message.RecipientType.CC, email, subject, content);
                    countCc++;
                }
            }
            
            if (recipientTo.trim().equals("") && recipientCc.trim().equals("")) {
                request.setAttribute("result", "Don't have input email.");
            } else {
                request.setAttribute("result", "Message sent.");
            }

        } catch (MessagingException ex) {

            request.setAttribute("result", "Error: " + ex.getMessage());
        }
        request.getRequestDispatcher("Compose.jsp").forward(request, response);
        System.out.println("ssss");
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
