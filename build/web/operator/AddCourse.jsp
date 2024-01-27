<%@page import="java.sql.*" %>
<%@include file="op1.jsp" %>
<div style="margin-left: 20px">
    <h1>Courses</h1>
    <table border="2px solid #000000" class="table-bordered table-responsive" width="1000px;" style="border-color: #000;">
        <tr class="text-center">
            <th>Course Id</th>
            <th>Course Name</th>
            <th>Fees</th>
            <th>Duration</th>
            <th>&nbsp;</th>
        </tr>

    <%
        String s_id=request.getParameter("h1");
        Class.forName("com.mysql.jdbc.Driver");

        String path="jdbc:mysql://localhost:3306/feemanagement";
        String dbuser="root";
        String dbpass="";

        Connection cn=DriverManager.getConnection(path, dbuser, dbpass);

        String sql="select * from course_master";

        PreparedStatement p1=cn.prepareStatement(sql);
        ResultSet r1=p1.executeQuery();

        while(r1.next())
        {
            String a,b,c,d;
            a=r1.getString("course_id");
            b=r1.getString("course_name");
            c=r1.getString("fee");
            d=r1.getString("duration");
            %>
            
            <tr class="text-center">
                <td><%= a %></td>
                <td><%= b %></td>
                <td><%= c %></td>
                <td><%= d %></td>
                <td>
                    <form method="post" action="AddCourse1.jsp">
                        <input type="hidden" name="h1" value="<%= s_id %>"/>
                        <input type="hidden" name="h2"   value="<%= a %>"/>
                        <input type="hidden" name="h3"   value="<%= b %>"/>
                        <input type="hidden" name="h4"   value="<%= c %>"/>
                        <input type="hidden" name="h5"   value="<%= d %>"/>
                        <input type="submit" value="Add" style="margin-top: 10px" />
                    </form>
                </td>
            </tr>
            
            <%
        }
    %>

    </table>
   </div>
<%@include file="op2.jsp" %>