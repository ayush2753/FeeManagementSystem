<%@page import="java.sql.*" %>
<%@include file="op1.jsp" %>

<%
    
    Class.forName("com.mysql.jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    String sql="select * from st_data";
    
    PreparedStatement p1=cn.prepareStatement(sql);
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String a,b,c,d;
        int e=r1.getInt("s_id");
        a=r1.getString("name");
        b=r1.getString("address");
        c=r1.getString("contact");
        d=r1.getString("email");
 %>
 <div style="margin-left: 25px">
    <h3><%= e%>. <%= a %></h3>
    <p>Address: <%= b %><br/></p>
    <p>Contact: <%= c%></p>
    <p>Email: <%= d %></p>

    <form method="post" action="View.jsp">
        <input type="hidden" name="h1" value="<%= e %>"/>
        <button type="submit">View Details</button>     
    </form>
 </div>
  
<%
    }   
%>
<%@include file="op2.jsp" %>