<%@page import="fee_mgmt.models.Mylib"%>
<%@page import="java.sql.*" %>

<%@include file="op1.jsp" %>
<%
    String st_course_id=request.getParameter("s1");
    Connection cn=new Mylib().connect();
    String s1="select * from st_course where st_course_id="+st_course_id;
    
    PreparedStatement p1=cn.prepareStatement(s1);
    ResultSet r1=p1.executeQuery();
    if(r1.next())
    {
        String a;
        a=r1.getString("fees");      
%>
<h1>Discount</h1>
<form method="post" action="EditF1.jsp">
    <input type="hidden" name="h1" value="<%= st_course_id %>"/>
    
    <p><input type="text" name="t2" value="<%= a %>"/></p>
    <p><button type="submit" name="b1" id="btn1">changes</button></p>
</form> 
<%
    }
    else
    {
        %>
        <h3>No fee record</h3>
        <%
    }
    
%>

<%@include file="op2.jsp" %>