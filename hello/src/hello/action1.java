package hello;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;

public class action1 extends ActionSupport {

   private String user;
   private String AuthorID;
   private String name;

   public String execute() {
      String ret = ERROR;
      Connection conn = null;

      try {
         String URL = "jdbc:mysql://localhost/struts_tutorial";
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection(URL, "root", "1996050312z");
         String sql = "SELECT Name from Author";
         sql+=" AuthorID = ?";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, AuthorID);
        
         ResultSet rs = ps.executeQuery();

         while (rs.next()) {
            name = rs.getString(1);
            ret = SUCCESS;
         }
      } 
      catch (Exception e) {
         ret = ERROR;
      } 
      finally {
         if (conn != null) {
            try {
               conn.close();
            } catch (Exception e) {
            }
         }
      }
      return ret;
   }

   public String getID() {
      return AuthorID;
   }

   public void setID(String user) {
      this.AuthorID = AuthorID;
   }

   

  

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }
}