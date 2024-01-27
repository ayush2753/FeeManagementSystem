package feemanagement.models;


import java.sql.*;


public class Admin {
String name,address,contact,email;

    public Admin() {
    }

    public Admin(String name, String address, String contact, String email) {
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getContact() {
        return contact;
    }

    public String getEmail() {
        return email;
    }




    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public void setEmail(String email) {
        this.email = email;
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
   
   String sql="insert into admindata values(?,?,?,?)";
  
   
   
   PreparedStatement p1=cn.prepareStatement(sql);

   
   p1.setString(1, name);
   p1.setString(2, address);
   p1.setString(3, contact);
   p1.setString(4, email);
   
   n=p1.executeUpdate();
    
        }
        catch(Exception e)
        {
           System.out.println(e); 
        }
    return n;
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
