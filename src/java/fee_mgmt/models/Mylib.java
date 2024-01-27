
package fee_mgmt.models;
import java.sql.*;
import java.sql.DriverManager;


public class Mylib 
{
    
  
   public Connection connect()
   {
       Connection cn=null;
      try
      {
          Class.forName("com.mysql.jdbc.Driver");
          String path="jdbc:mysql://localhost:3306/feemanagement";
          String dbuser="root";
          String dbpass="";
          cn=DriverManager.getConnection(path, dbuser, dbpass);          
      }
        catch(Exception e)
        {
            System.out.println(""+e);
        }
   
    return cn;
   }
  
   public String getCourseName(int cid)
   {
       String s=null;
       try
       {
           Connection cn=this.connect();
           String sql="select * from course_master where course_id=?";
           PreparedStatement p1=cn.prepareStatement(sql);
           p1.setInt(1, cid);
           ResultSet r1=p1.executeQuery();
           if(r1.next())
           {
               s=r1.getString("course_name");
           }
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return s;
   }
   
  
   
   public int find_course_paid(int stid,int stcid)
   {
       int t=0;
       try
       {
           Connection cn=this.connect();
           String sql="select * from st_installment where s_id=? and st_course_id=?";
           PreparedStatement p1=cn.prepareStatement(sql);
           p1.setInt(1, stid);
           p1.setInt(2, stcid);
           ResultSet r1=p1.executeQuery();
           while(r1.next())
           {
               t=t+r1.getInt("amount");
           }
       }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return t;
   }
   
}
