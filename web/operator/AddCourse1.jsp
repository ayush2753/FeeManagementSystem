<%@page import="java.sql.*" %>
<%@include file="op1.jsp" %>
<%
    String s_id=request.getParameter("h1");
    String course_id=request.getParameter("h2");
    String course_name=request.getParameter("h3");
    String fee=request.getParameter("h4");
    String duration=request.getParameter("h5");
    String commencement_date=request.getParameter("h6");
   
    Class.forName("com.mysql.jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    String sql="insert into st_course values(0,?,?,?,?,?,?)";
    
    PreparedStatement p1=cn.prepareStatement(sql);
    java.sql.Date dt=new java.sql.Date(new java.util.Date().getTime());
    p1.setString(1, course_id);
    p1.setString(2, s_id);
    p1.setString(3, course_name);
    p1.setString(4, fee);
    p1.setString(5, duration);
    p1.setDate(6, dt);
    
    int a=p1.executeUpdate();
%>
<a href="View.jsp">Show</a>
<%@include file="op2.jsp" %>