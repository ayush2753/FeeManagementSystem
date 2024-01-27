<%@page import="java.sql.*" %>
<%
     session=request.getSession(false);
     if(session==null)
     {
         response.sendRedirect("index.jsp");
     }
     else
     {
         try
         {
             session.removeAttribute("email");
             session.removeAttribute("usertype");
             session.invalidate();
             response.sendRedirect("index.jsp");
         }
         catch(Exception e)
         {     
               System.out.println(e);
         }
     }   
%>