
package feemanagement.models;
import java.sql.*;

public class LoginData {
    
    
    
    String  email,password,usertype;

    public LoginData() {
    }

    public LoginData(String email, String password, String usertype) {
        this.email = email;
        this.password = password;
        this.usertype = usertype;
    }
    
    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }
    
    public int save()
    {
        int n=0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
   
            String path="jdbc:mysql://localhost:3306/feemanagement";
            String dbuser="root";
            String dbpass="";

            Connection cn=DriverManager.getConnection(path,dbuser,dbpass);


            String s1="insert into logindata values(?,?,?)";



            PreparedStatement p2=cn.prepareStatement(s1);


            p2.setString(1, email);
            p2.setString(2, password);
            p2.setString(3, "admin");


            n=p2.executeUpdate();
        }
                 catch(Exception e)
                 {
                     System.out.println(e);
                 }
             return n;    
    }
            
            
            
            
            
}
