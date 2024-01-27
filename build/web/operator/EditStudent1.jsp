<%@page import="java.sql.*" %>


<%
    String s_id=request.getParameter("l1");
    if(s_id==null)
    {
        response.sendRedirect("ShowStudent.jsp");
    }
    else
    {
        String name=request.getParameter("n1");
        String address=request.getParameter("n2");
        String contact=request.getParameter("n3");
        String email=request.getParameter("n4");
        Class.forName("com.mysql.jdbc.Driver");
        String path="jdbc:mysql://localhost:3306/feemanagement";
        String dbuser="root";
        String dbpass="";
        Connection cn=DriverManager.getConnection(path,dbuser,dbpass);

        String sql="update st_data set name=?,address=?,contact=?,email=? where s_id=?";

        PreparedStatement p1=cn.prepareStatement(sql);

        int p=Integer.parseInt(s_id);

        p1.setString(1, name);
        p1.setString(2, address);
        p1.setString(3, contact);
        p1.setString(4, email);
        p1.setInt(5, p);

        int a=p1.executeUpdate();
        String msg="";
        if(a==1)
        {
            msg="Data changed successfully.";
        }
        else
        {
            msg="Changes not done!";
        }
        %>
        <h3><%= msg %></h3>
        <a href="ShowStudent.jsp">Show Changes</a>
        <p>
            <a href="EditStudent.jsp">Edit more</a>
        </p>
        <%
}
%>


       