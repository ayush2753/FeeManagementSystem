
<%@include file="ad.jsp" %>
<div class="row">
    <div class="col-4">
        <div style="margin-left: 25px">
            <h1 style="color: white">Operator Registration</h1>
            <form method="post" action="OperatorRegistration1.jsp">
                <p>Name<br/><input type="text" name="n1" id="st1"/></p>
                <p>Address<br/><input type="text" name="n2" id="st2"/></p>
                <p>Contact<br/><input type="text" name="n3" id="st3"/></p>
                <p>Email<br/><input type="email" name="n4" id="st4" /></p>
                <p>Password<br/><input type="password" name="n5" id="st5"/></p>
                <p>Confirm Password<br/><input type="password" name="n6" id="st6"/></p>
                <button type="submit" name="b1">Register</button>
            </form>
        </div>
    </div>
    <div class="col-6" style="margin-left: 150px; margin-top: 50px">
        <img src="../static/images/tablet-login-concept-illustration_114360-7893-removebg-preview.png">
    </div>
</div>

<%@include file="ad2.jsp" %>