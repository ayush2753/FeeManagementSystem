<%@page import="java.sql.*" %>
<%@include file="op1.jsp" %>
<%
    String s_id=request.getParameter("h1");
    if(s_id==null)
    {
        response.sendRedirect("ShowStudent.jsp");
    }
    else
    {
        Class.forName("com.mysql.jdbc.Driver");
        
        String path="jdbc:mysql://localhost:3306/feemanagement";
        String dbuser="root";
        String dbpass="";

        Connection cn=DriverManager.getConnection(path, dbuser, dbpass);

        String sql="select * from st_data where s_id=?";

        PreparedStatement p1=cn.prepareStatement(sql);
        int p=Integer.parseInt(s_id);
        p1.setInt(1, p);

        ResultSet r1=p1.executeQuery();

        while(r1.next())
        {
            String a,b,c,d;
            a=r1.getString("name");
            b=r1.getString("address");
            c=r1.getString("contact");
            d=r1.getString("email");
%>
<h3>Delete Student Data</h3>
<form method="post" action="DeleteStudent1.jsp">
    <input type="hidden" name="E1" value="<%= p %>"/>
        <p>Name:<%= a %></p>
        <p>Address:<%= b %></p>
        <p>Contact:<%= c %></p>
        <p>Email:<%= d %></p>
        <p><button type="submit">delete</button></p>
    </form>
<%
    }
 }
%>

<%@include file="op2.jsp" %>
        
        
    
        
