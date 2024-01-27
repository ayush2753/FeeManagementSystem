<%@include file="ad.jsp" %>

<div style="margin-left: 50px; margin-top: 15px">
    <h1 style="color:white">Change Password</h1>
    <form method="post" action="ChangePassword1.jsp">
    <p>Old Password <input type="password" name="o1" id="op1" style="margin-left: 30px"/></p>
    <p>New Password <input type="password" name="n1" id="np1" style="margin-left: 25px"/></p>
    <p>Confirm Password <input type="password" name="n2" id="cp1"/></p>
    <button name="btn" >Change</button>  
</form>
</div>
<%@include file="ad2.jsp" %>
