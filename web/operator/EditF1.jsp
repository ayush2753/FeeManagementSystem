<%@page import="fee_mgmt.models.Mylib"%>
<%@page import="java.sql.*" %>
<%
    String cid=request.getParameter("h1");
    String fees=request.getParameter("t2");
    int e=Integer.parseInt(cid);
    Connection cn=new Mylib().connect();
    String s1="update st_course set fees=? where st_course_id=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setInt(1, Integer.parseInt(fees));
    p1.setInt(2, e);
    
    int a=p1.executeUpdate();
    if(a==1)
    {
        response.sendRedirect("View.jsp");
   
    }
    
%>
<a href="View.jsp?s_id=<%= e %>">Show</a>

