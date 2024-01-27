<%@page import="feemanagement.models.LoginData"%>
<%@page import="feemanagement.models.Admin"%>
<%@page import="java.sql.*" %>
<%
    String name,address,contact,email,password,usertype;
   name=request.getParameter("t1");
   address=request.getParameter("t2");
   contact=request.getParameter("t3");
   email=request.getParameter("t4");
   password=request.getParameter("t5");
    usertype="admin";   
   
   Class.forName("com.mysql.jdbc.Driver");
   
   String path="jdbc:mysql://localhost:3306/feemanagement";
   String dbuser="root";
   String dbpass="";
   
   Connection cn=DriverManager.getConnection(path,dbuser,dbpass);
   
   Admin adm=new Admin();
   
   adm.setName(name);
   adm.setAddress(address);
   adm.setContact(contact);
   adm.setEmail(email);
   
   
   
   
   LoginData lgn=new LoginData();
   
   
   lgn.setEmail(email);
   lgn.setPassword(password);
   lgn.setUsertype(usertype);
 
   
   int a=adm.save();
   int b=lgn.save();
   
   
   
   
   
   String msg="";
   if(a==1 && b==1)
   {
       msg="Data is saved and login is created";
   }
   else if(a==1)
   {
      msg="Data is saved";
   }
   else if(b==1)
   {
       msg="Login is created";
   }
  else
   {
       msg="Data is not saved and login is not created";
   }


%>
<h2><%= msg %></h2>

