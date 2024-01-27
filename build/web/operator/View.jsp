<%@page import="fee_mgmt.models.Mylib"%>
<%@page import="java.sql.*" %>


<%@include file="op1.jsp" %>
<div class="container-fluid">
 <div class="row">
     <div class="col-6">
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
    int e=Integer.parseInt(s_id);
    p1.setInt(1, e);
    ResultSet r1=p1.executeQuery();
    
    if(r1.next())
    {
        String a,b,c,d;
        e=r1.getInt("s_id");
        a=r1.getString("name");
        b=r1.getString("address");
        c=r1.getString("contact");
        d=r1.getString("email");
 %>
            <h3> <%= a %></h3>
            <p>Address: <%= b %><br/></p>
            <p>Contact: <%= c%></p>
            <p>Email: <%= d %></p>
            <table>
     <tr>
         <td>
     <form method="post" action="EditStudent.jsp">
     <input type="hidden" name="h1" value="<%= e %>"/>
     <button type="submit"><img src="../static/images/edit-box-fill.png"></button>     
 </form>
         </td>
         <td>
     <form method="post" action="DeleteStudent.jsp">
         <input type="hidden" name="h1" value="<%= e %>"/>
         <button type="submit"><img src="../static/images/delete-bin-6-line.png"></button>        
     </form>
         </td>
         <td>
             <form method="post" action="del_img.jsp">
         <input type="hidden" name="h1" value="<%= e %>"/>
         <button type="submit">Delete image</button>        
     </form>
         </td>
     </tr>
 </table>
         </div>
         <div class="col-6" style="margin-top: 10px">
<%
        String s1="select * from st_photo where s_id=?";
        PreparedStatement p2=cn.prepareCall(s1);
        p2.setInt(1,e);
        ResultSet r2=p2.executeQuery();
        if(r2.next()) //photo found
        {
            String photo=r2.getString("photo");
            %>
       <img src="photo/<%= photo %>" width="100" height="125" />
           <%
        }
        else
        { 
        %>
        
        <form method="post" enctype="multipart/form-data" action="Uploadphoto.jsp?s_id=<%= e %>" >
            <p>Photo 
              <label for="F1"></label>
          <input type="file" name="F1" id="F1" />
            </p>
            <p>
              <input type="submit" name="B1" id="B1" value="Upload Photo" />
</p>
        </form>
        
   <%
          }
    %>
  
 
            </div>
 </div>
        <hr/> 
             
             <table border="2px solid #000000" class="table-bordered table-responsive" width="1000px;" style="border-color: #000;">
                 <tr class="text-center">
                     <th colspan="9"><h2>Course Details</h2></th> 
                 </tr>
                 <tr class="text-center">
                 
                            
             <th>Student CourseId</th>
             <th>Course_name</th>
             <th>Fees</th>
             <th>Duration</th>
             <th>Commencement_date</th> 
             <th>Paid</th>
             <th>Due</th>
             <th>Pay</th>
             <th>Changes</th>
             
     </tr>
      <%
          String s2="select * from st_course where s_id=?";
          PreparedStatement p3=cn.prepareStatement(s2);
          p3.setInt(1, e);
          ResultSet r3=p3.executeQuery();
          int total_fee=0;
          while(r3.next())
          {
              String p,q,r,s,t,u,x;
              x=r3.getString("st_course_id");
              p=r3.getString("course_id");
              q=r3.getString("s_id");
              r=r3.getString("course_name");
              s=r3.getString("fees");
              total_fee=total_fee+Integer.parseInt(s);
              t=r3.getString("duration");
              u=r3.getString("commencement_date");
              int course_paid=new Mylib().find_course_paid(Integer.parseInt(q), Integer.parseInt(x));
              int course_due=Integer.parseInt(s)-course_paid;
         %>     
         
         <tr class="text-center">
             <td><%= x%></td>
             <td><%= r%></td>
             <td><%= s%></td>
             <td><%= t%></td>
             <td><%= u%></td>
             <td><%= course_paid %></td>
             <td><%= course_due %></td>
             <td>
                 
                 <form method="post" action="AddInstallment.jsp">
                     <input type="hidden" name="s1" value="<%= x%>"/>
                     <input type="hidden" name="s3" value="<%= s %>" />
                     
                     <button type="submit" name="B1" style="margin-top:5px"><img src="../static/images/money-rupee-circle-fill.png"></button> 
                     
                 </form>
                     
                     
             </td>
             <td>
                 
                 <form method="post" action="EditF.jsp">
                     <input type="hidden" name="s1" value="<%= x%>"/>
                    
                     <button type="submit" name="B1" style="margin-top:5px">Edit</button> 
                     
                 </form>
                     
             </td>
             
         
     <%
          }
      %>
         </tr>
         <tr class="text-center">
             <td colspan="8">
                 <form method="post" action="AddCourse.jsp">
             
                <input type="hidden" name="h1" value="<%= e %>"/>
                <button type="submit" style="border: 10px"><img src="../static/images/add-circle-fill.png"></button>  
         </form>
             </td>
         </tr>
             </table>
             
             
             <h3>Total : <%= total_fee %></h3>
         <br/>
         <br/>
         <hr>
         
         
             <h2>Fees Installment</h2> 
             <table border="2px solid 00000F" style="width: 70%; margin-bottom: 50px; border-color: #000;" class="table-bordered table-responsive table-hover">
                 <tr class="text-center">
    <th>Transaction_id</th>
    <th>Course</th>
    <th>Amount</th>
    <th>Date of Transaction</th>
    <th>Remarks</th>
</tr>
    <%
        String s3="select * from st_installment where s_id=?";
        
        PreparedStatement p4=cn.prepareStatement(s3);
        p4.setInt(1, e);
        ResultSet r4=p4.executeQuery();
        int paid=0;
        while(r4.next())
        {
            String k,l,m,n,o;
            k=r4.getString("t_id");
            l=r4.getString("course_id");
            String course=new Mylib().getCourseName(Integer.parseInt(l));
            m=r4.getString("amount");
            paid=paid + Integer.parseInt(m);
            n=r4.getString("t_date");
            o=r4.getString("remark");
%>

<tr class="text-center">
    <th><%= k%></th>
    <th><%= course %></th>
    <th><%= m%></th>
    <th><%= n%></th>
    <th><%= o%></th>
</tr>
       <%
        } 
        
        int due=total_fee-paid;
        
        %>

        
        <h3>Amount paid: <%= paid %></h3>
        
        <h3>Due amount : <%= due %></h3>   
        <hr>
             
             
             
             
             
             
             
             
             
<%
    }
  }
%>    
             </table>
</div>
<%@include file="op2.jsp" %>