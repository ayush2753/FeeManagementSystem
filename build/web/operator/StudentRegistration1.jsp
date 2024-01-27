<%@include file="op1.jsp" %>
<%@page import="java.sql.*" %>

<%
    String name,address,contact,email,password,confirm_pass;
    name=request.getParameter("n1");
    address=request.getParameter("n2");
    contact=request.getParameter("n3");
    email=request.getParameter("n4");
    password=request.getParameter("n5");
    confirm_pass=request.getParameter("n6");
    String usertype="student";
    
    
    Class.forName("com.mysql.jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    String sql="insert into st_data values(0,?,?,?,?)";
    String s1="insert into logindata values(?,?,?)";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    PreparedStatement p1=cn.prepareStatement(sql);
    PreparedStatement p2=cn.prepareStatement(s1);
    
    p1.setString(1, name);
    p1.setString(2,address);
    p1.setString(3, contact);
    p1.setString(4, email);
    
    p2.setString(1, email);
    p2.setString(2, password);
    p2.setString(3, usertype);
    String msg="";
    try
    {
        int a=p1.executeUpdate();
    
        int b=p2.executeUpdate();


        if(a==1 && b==1)
        {
            msg="Data is saved and login is created.";
        }
        else if(a==1)
        {
            msg="Only data is saved.";
        }
        else if(b==1)
        {
            msg="Only login is created.";
        }
        else
        {
            msg="Data is not saved and login is not created"; 
        }
    }
    catch(com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException e)
    {
        msg="Email already registered";
    }
%>
<a href="ShowStudent.jsp">Show </a>

<a href="StudentRegistration.jsp">Register More</a>
<h3><%= msg %></h3>

<%@include file="op2.jsp" %>


