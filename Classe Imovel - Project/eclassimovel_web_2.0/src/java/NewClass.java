
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Gilmar
 */
public class NewClass {
    public static void main(String[] args) throws AddressException, MessagingException {
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
      mex.printStackTrace();
      teste = "Error: unable to send message....";
   }
    }
}
