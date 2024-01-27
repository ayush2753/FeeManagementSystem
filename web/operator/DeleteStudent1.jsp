<%@page import="java.sql.*" %>

<%
    String s_id=request.getParameter("E1");
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
        Connection cn=DriverManager.getConnection(path,dbuser,dbpass);

        String sql="delete from st_data where s_id=?";
       
        
        PreparedStatement p1=cn.prepareStatement(sql);

        int p=Integer.parseInt(s_id);
        p1.setInt(1, p);

        int a=p1.executeUpdate();
        String msg="";
        if(a==1)
        {
            msg="Data deleted successfully.";
        }
        else
        {
            msg="Changes not done!";
        }
%>
<h3><%= msg %></h3>
<a href="ShowStudent.jsp">Show Changes</a>
<% 
          }
%>