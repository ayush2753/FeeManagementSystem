<%@page import="java.sql.*" %>
<%
        String email,password,button;
        email=request.getParameter("l1");
        password=request.getParameter("l2");
        button=request.getParameter("btn");

        if(button==null)
        {
            response.sendRedirect("LoginError.jsp");
        }
        else
        {
         Class.forName("com.mysql.jdbc.Driver");

         String path="jdbc:mysql://localhost:3306/feemanagement";
         String dbuser="root";
         String dbpass="";

         Connection cn=DriverManager.getConnection(path, dbuser, dbpass);

         String sql="select * from logindata where email=? and password=?";

         PreparedStatement p1=cn.prepareStatement(sql);

         p1.setString(1, email);
         p1.setString(2, password);

         ResultSet r1=p1.executeQuery();


         if(r1.next())
         {

             String ut=r1.getString("usertype");
             session=request.getSession(true);
             session.setAttribute("usertype",ut);
             session.setAttribute("email",email);
             out.println("usertype="+ut);
             if(ut.equalsIgnoreCase("admin"))
             {
                 response.sendRedirect("Admin/AdminHome.jsp");
             }    
             else if(ut.equalsIgnoreCase("operator"))
             {
                response.sendRedirect("operator/OperatorHome.jsp");
             }
             else if(ut.equalsIgnoreCase("student"))
             {
                 response.sendRedirect("Student/Student_1.jsp?email="+email);
             }
                    
          }
         else
             {
                 response.sendRedirect("../AuthError.jsp");
             }  
     }
%>