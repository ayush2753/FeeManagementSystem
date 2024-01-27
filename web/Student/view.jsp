<%@page import="fee_mgmt.models.Mylib"%>
<%@page import="java.sql.*" %>
<%@include file="ad.jsp" %>

<div style="margin-left: 25px; margin-top: 10px; color: white">
<%
    String s_id=request.getParameter("s_id");
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
        Connection cn=DriverManager.getConnection(path,dbuser,dbpass);
        String s1="select * from st_data where s_id=?";
        PreparedStatement p1=cn.prepareStatement(s1);                                                               
        int e=Integer.parseInt(s_id);
        p1.setInt(1, e);                         
        ResultSet r1=p1.executeQuery();                                   
        if(r1.next())
        {
            String a,b,c,d;
            e=r1.getInt("s_id");
            a=r1.getString("name");
            b=r1.getString("contact");
            c=r1.getString("address");
            d=r1.getString("email");


            String s2="select * from st_photo where s_id=?";
            PreparedStatement p2=cn.prepareCall(s2);
            p2.setInt(1, e);
            ResultSet r2=p2.executeQuery();
            if(r2.next()) //photo found
            {
                String photo=r2.getString("photo");
                %>
                <img src="../operator/photo/<%= photo %>" width="100" height="125" />
               <%
            }
            else
            {
            %>

            <form method="post" enctype="multipart/form-data" action="../operator/Uploadphoto.jsp?s_id=<%= e %>" >
                <p>Photo 
                    <label for="F1"></label>
                    <input type="file" name="F1"  />
                </p>
                <p>
                    <input type="submit" name="B1" id="btn2" value="Upload Photo" />
                </p>
                    </form>
        <%
            }
        %>
           <h2><%= e %>. <%= a %></h2>
           <p>
               Contact:<%= b %><br/>
               Address:<%= c %><br/>
               Email:<%= d %><br/>
           </p>
    
       
           <%--<a href="editStudent.jsp?s_id=<%= e %>">edit</a>
       <a href="deleteStudent.jsp?s_id=<%= e %>">delete</a>
           --%>
       <br/>
       <br/> 
       <h4>Courses</h4>
       <%--<form method="post" action="AddCourse.jsp">
           <h4>Courses
           <input type="hidden" name="t1" value="<%= e %>"/>
           <input type="submit" name="B1" value="Add" id="btn2"/>
           </h4>
</form>--%>
       <table border="2px solid #000000" class="table-bordered table-responsive" width="1000px;" style="border-color: #f0f5fa;">
           <tr class="text-center">
                <th>course_id</th>
                <th>s_id</th>
                <th>course_name</th>
                <th>fees</th>
                <th>duration</th>
                <th>Commencement_date</th>
                <th>Paid</th>
                <th>Due</th>
                <%--<th>Pay</th>
<th>Changes</th>--%>
                
            </tr>
        <%
          String s3="select * from st_course where s_id=?";
          PreparedStatement p3=cn.prepareStatement(s3);
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
                <td><%= p %></td>
                <td><%= q %></td>
                <td><%= r %></td>
                <td><%= s %></td>
                <td><%= t %></td>
                <td><%= u %></td>
                
                <td><%= course_paid %></td>
                <td><%= course_due %></td>
                <%--<td>
                    <%
                    if(course_due==0)
                    {
                        %>
                        <p>Completed</p>
                        <%
                    }
                    else
                    {
                    %>
                    <form method="post" action="Installment1.jsp">
                        <input type="hidden" name="t1" value="<%= e %>" />
                        <input type="hidden" name="t2" value="<%= p %>" />
                        <input type="hidden" name="t3" value="<%= s %>" />
                        <input type="submit" name="t4" value="Pay" id="btn2"/>
                    </form>
                        <%
                    }
                %>
                </td>
                
                <td>
                    <form method="post" action="editf.jsp">
                        <input type="hidden" name="t1" value="<%= e %>" />
                        <input type="hidden" name="t2" value="<%= p %>" />
                        <input type="hidden" name="t3" value="<%= s %>" />
                        <input type="submit" name="t4" value="Edit" id="btn2" />
                    </form>
</td>--%>
            </tr>
        
       <%    
            }
            %>
            </table>
            <h5>Total : <%= total_fee %></h5>
            <br/>
            <br/>
            <h4>Installment</h4>
            <table border="2px solid #000000" class="table-bordered table-responsive" width="1000px;" style="border-color: #f0f5fa;">
                <tr class="text-center">
                <th>t_id</th>
                <th>course_id</th>
                <th>amount</th>
                <th>t_date</th>
                <th>remark</th>
                
            </tr>
        <%
            String s4="select * from st_installment where s_id=?";
            PreparedStatement p4=cn.prepareCall(s4);
            p4.setInt(1, e);
            ResultSet r4=p4.executeQuery();
            int paid=0;
            while(r4.next())
            {
                String i,j,k,l; 
                int g=r4.getInt("t_id");
                int h=r4.getInt("course_id");
                String course=new Mylib().getCourseName(h);
                i=r4.getString("amount");
                paid=paid+Integer.parseInt(i);
                j=r4.getString("t_date");
                k=r4.getString("remark");
            
%>
            <tr>
                <td><%= g %></td>
                <td><%= course %></td>
                <td><%= i %></td>
                <td><%= j %></td>
                <td><%= k %></td>
            </tr>
<%          
            }
            int due=total_fee-paid;
            %>
            </table>
           <h5>Total Paid : <%= paid %></h5>
           <h5>Due : <%= due %></h5>
            <%
        }
    }
%> 

<a href="../index.jsp" id="btn2" > back </a>
</div>
    
<%@include file="ad2.jsp" %>