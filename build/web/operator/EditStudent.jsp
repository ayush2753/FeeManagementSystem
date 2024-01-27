<%@page import="java.sql.*"  %>

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
        p1.setInt(1,p);

        ResultSet r1=p1.executeQuery();

        if(r1.next())
        {
            String a,b,c,d;
            a=r1.getString("name");
            b=r1.getString("address");
            c=r1.getString("contact");
            d=r1.getString("email");
%>
<form method="post" action="EditStudent1.jsp">
   <p><input type="hidden" name="l1" id="txt" value="<%= p %>"/></p>
        <p>Name:<input value="<%= a %>" name="n1" id="nn1"/></p>
        <p>Address:<input value="<%= b %>" name="n2" id="nn2"/></p>
        <p>Contact:<input value="<%= c %>" name="n3" id="nn3"/></p>
        <p>Email:<input value="<%= d %>" name="n4" id="nn4"/></p>
        <p><button type="submit">Save Changes</button></p>
    </form>       
           <%
        }
        else
        {
            %>
            <h3>No data found</h3>
            <%
        }
    }
    
%>

<%@include file="op2.jsp" %>