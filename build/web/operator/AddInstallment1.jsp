<%@page import="java.sql.*" %>
<%  
    String s_course_id=request.getParameter("h3");
    String s_id=request.getParameter("h2");
    String course_id=request.getParameter("h1");
    String amount=request.getParameter("txt1");
    String remark=request.getParameter("txt2");
    
    Class.forName("com.mysql.jdbc.Driver");
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    String sql="insert into st_installment values(?,0,?,?,?,?,?)";
    Connection cn=DriverManager.getConnection(path,dbuser,dbpass);
    PreparedStatement p1=cn.prepareStatement(sql);
    java.sql.Date dt=new java.sql.Date(new java.util.Date().getTime());
    p1.setString(1, s_course_id);
    p1.setString(2, s_id);
    p1.setString(3, course_id);
    p1.setString(4, amount);
    p1.setDate(5, dt);
    p1.setString(6, remark);
    int a=p1.executeUpdate();
    if(a==1)
    {
        %>
        <%@include file="op1.jsp" %>
        <div style="margin-left: 15px">
            <h1>Payment completed</h1>
        <form method="post" action="View.jsp">
            <input type="hidden" name="h1" value="<%= s_id %>"/>
            <button type="submit">Continue</button>     
        </form>
        </div>
     <%@include file="op2.jsp" %>
        <%
    }

%>