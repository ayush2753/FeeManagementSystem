<%@page import="java.sql.*" %>

<%@include file="ad.jsp" %>
<%
    Class.forName("com.mysql..jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    String sql="select * from opdata where email=?";
    
    PreparedStatement p1=cn.prepareStatement(sql);
    ResultSet r1=p1.executeQuery();
    
    if(r1.next())
    {
        String a,b,c,d;
        a=r1.getString("name");
        b=r1.getString("address");
        c=r1.getString("contact");
        d=r1.getString("email");
 %>
 <h3><%= a %></h3>
 <p>Address: <%= b %><br/></p>
 <p>Contact: <%= c%></p>
 <p>Email: <%= d %></p>       

<%
        }
    else
    {
        %>
        <h2>Data not found</h2>
<%
    }   
%>

<%@include file="ad2.jsp" %>