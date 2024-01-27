<%@page import="java.sql.*" %>
<%
   String e1="",ut="";
   session=request.getSession(false);
   if(session==null)
   {
       response.sendRedirect("../AuthError.jsp");
   }
   else
   {
       try
       {
           e1=session.getAttribute("email").toString();
           ut=session.getAttribute("usertype").toString();
           if(ut.equalsIgnoreCase("admin")==false)
           {
               response.sendRedirect("Admin/AdminHome.jsp");
           }
           
       }
       catch(NullPointerException e)
       {
           response.sendRedirect("../AuthError.jsp");
       }
   }
%>




<%
    String old_password,new_password,confirm_password;
    old_password=request.getParameter("o1");
    new_password=request.getParameter("n1");
    confirm_password=request.getParameter("n2");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    String sql="update logindata set password=? where email=? and password=?";
    
    
    PreparedStatement p1=cn.prepareStatement(sql);
    
    p1.setString(1, new_password);
    p1.setString(2, e1);
    p1.setString(3, old_password);
    
    int a=p1.executeUpdate();
    String msg="";
    
    if(a==1)
    {
        msg="Password changed successfully.";
    }
    else
    {
        msg="Password not changed!!";
    }
%>
<%= msg %>
<p><a href="../Login.jsp">Check Password</a></p>