/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

/**
 *
 * @author thanh
 */
public class EmailServer {

    public Session preSendEmail(String host, String port,
            final String email, final String password,
            String subject, String message) throws AddressException, MessagingException, UnsupportedEncodingException {
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            @Override
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        };
        Session session = Session.getInstance(properties, auth);
        return session;
    }

    public void SendMail(Message message, InternetAddress address, Message.RecipientType recipentType,
            String email, String subject, String content) throws UnsupportedEncodingException {
        try {
//            message.addHeader("Content-type", "text/HTML; charset=UTF-8");
            //message.addHeader("format", "flowed");
//            message.addHeader("Content-Transfer-Encoding", "8bit");
            message.setFrom(new InternetAddress(email, "Project 5 - Send Mail - Vinhnmfx10710"));
            message.setRecipient(recipentType, address);
            message.setSubject(subject);
            message.setSentDate(new Date());
            message.setContent(content,"text/html");
            Transport.send(message);
        } catch (MessagingException ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }
}
