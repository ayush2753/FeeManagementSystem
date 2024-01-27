<%@include file="op1.jsp" %>
<div style="margin-left: 25px">
    <h1 style='text-align: center'>Change Password</h1>
    <hr>
        <form method="post" action="ChangePassword1.jsp">
            <p>Old Password <input type="password" name="o1" id="op1" style="margin-left: 30px"/></p>
            <p>New Password <input type="password" name="n1" id="np1" style="margin-left: 25px" /></p>
        <p>Confirm Password <input type="password" name="n2" id="cp1"/></p>
        <button name="btn" >Change</button>  
    </form>
</div>
<%@include file="op2.jsp" %>