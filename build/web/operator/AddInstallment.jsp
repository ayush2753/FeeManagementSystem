<%@page  import="java.sql.*" %> 

<%@include file="op1.jsp" %>
<h2>Deposit Section</h2>

<%
    String st_course_id=request.getParameter("s1");
    
    Class.forName("com.mysql.jdbc.Driver");
    
    String path="jdbc:mysql://localhost:3306/feemanagement";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(path, dbuser, dbpass);
    
    String sql="select * from st_course where st_course_id=?";
    
    PreparedStatement p1=cn.prepareStatement(sql);
    java.sql.Date dt=new java.sql.Date(new java.util.Date().getTime());
    p1.setInt(1,Integer.parseInt(st_course_id));
    
    ResultSet r1=p1.executeQuery();
    
    if(r1.next())
    {
        String a,b,c,d;
        int f=r1.getInt("s_id");
        int e=r1.getInt("course_id");
        a=r1.getString("course_name");
        b=r1.getString("fees");
        c=r1.getString("duration");
        d=r1.getString("commencement_date");
 %>
 <h3><%= e%>. <%= a %></h3>
 <p>Fees: <%= b %><br/></p>
 <p>Duration: <%= c%></p>
 <p>Commencement_date: <%= d %></p>

 <form method="post" action="AddInstallment1.jsp">
     <input type="hidden" name="h3" value="<%= st_course_id %>"/>
     <input type="hidden" name="h1" value="<%= e %>"/>
     <input type="hidden" name="h2" value="<%= f %>"/>
     <p>Amount to pay:<input type="text" name="txt1"/></p>
     <p>Remark :<input type="text" name="txt2"/></p>
     <button type="submit">Submit</button>     
 </form>

<%
    }
%>

<%@include file="op2.jsp" %>