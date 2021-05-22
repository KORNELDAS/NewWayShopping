package mailing;

import java.util.Properties; 
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
  
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class SendingMail { 
    public static void send(String to,String sub,String msg){  
          //Get properties object 
          String from = "newwayshopping41999@gmail.com";
          String password = "A7489b8874@";
          Properties props = System.getProperties();    
          props.put("mail.smtp.host", "smtp.gmail.com"); 
          props.put("mail.smtp.port","465");
          props.put("mail.smtp.ssl.enable","true");
          props.put("mail.smtp.auth", "true"); 
         // props.put("mail.smtp.socketFactory.port", "465");    
//          props.put("mail.smtp.socketFactory.class",    
//                    "javax.net.ssl.SSLSocketFactory");    
//          props.put("mail.smtp.auth", "true");    
//          props.put("mail.smtp.port", "468");    
          //get Session 
         Session session = Session.getInstance(props, new Authenticator(){
              @Override
              protected PasswordAuthentication getPasswordAuthentication(){
                  return new PasswordAuthentication(from,password);
                  
              } 
          });
         
         session.setDebug(true); 
//          Session session = Session.getDefaultInstance(props,    
//           new javax.mail.Authenticator() {    
//           protected PasswordAuthentication getPasswordAuthentication() {    
//           return new PasswordAuthentication(from,password);  
//           }    
//          });    
          //compose message  
          MimeMessage m = new MimeMessage(session); 
          
          try{
          
         // m.setFrom(from);     
          
          m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
          m.setSubject(sub);  
          m.setText(msg);
          
          Transport.send(m);
          System.out.println("message sent successfully");
          
          }catch(Exception e){
              e.printStackTrace();
          }
    }    
  
 public static void main(String[] args) {     
    send("sachisabya41999@gmail.com","hello","How r u?");   
 }    
  
}
