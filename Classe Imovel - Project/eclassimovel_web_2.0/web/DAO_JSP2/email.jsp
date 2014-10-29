<%-- 
    Document   : InserirCliente
    Created on : 19/08/2014, 00:34:42
    Author     : guilhermediasbautista/gilmar
--%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
    String teste;
    // Recipient's email ID needs to be mentioned.
    String to = "gilmardsjr@hotmail.com";

    // Sender's email ID needs to be mentioned
    String from = "contato@e-classimovel.com.br";

    // Assuming you are sending email from localhost
    String host = "smtp-web.kinghost.net";

    // Get system properties object
    Properties properties = System.getProperties();

    // Setup mail server
    properties.setProperty("mail.smtp.host", host);

    // Get the default Session object.
    Session mailSession = Session.getDefaultInstance(properties);

    try{
       // Create a default MimeMessage object.
       MimeMessage message = new MimeMessage(mailSession);
       // Set From: header field of the header.
       message.setFrom(new InternetAddress(from));
       // Set To: header field of the header.
       message.addRecipient(Message.RecipientType.TO,
                                new InternetAddress(to));
       // Set Subject: header field
       message.setSubject("This is the Subject Line!");
       // Now set the actual message
       message.setText("This is actual message");
       // Send message
       Transport.send(message);
       teste = "Sent message successfully....";
    }catch (MessagingException mex) {
       teste = mex.getMessage();
    }
%>

<%= teste %>

dasdasdsadas