<%@include file="op1.jsp"  %>
<h1 style="color: white;text-align: center">Student Registration</h1>
<hr>
<div class="row">
    <div class="col-4">
        <form method="post" action="StudentRegistration1.jsp">
            <div style='border: 3px solid white;padding-left: 25px;padding-top: 10px;color: black;height: 100%;width: 250px;margin-left: 25px;color: #f0f5fa '>
                <p>Name<br/><input type="text" name="n1" id="st1"/></p>
                <p>Address<br/><input type="text" name="n2" id="st2"/></p>
                <p>Contact<br/><input type="text" name="n3" id="st3"/></p>
                <p>Email<br/><input type="email" name="n4" id="st4" /></p>
                <p>Password<br/><input type="password" name="n5" id="st5"/></p>
                <p>Confirm Password<br/><input type="password" name="n6" id="st6"/></p>
                <button type="submit" name="b1">Register</button>
            </div>
        </form>
        
    </div>
    <div class="col-6">
        <img src="../static/images/businessman-holding-pencil-big-complete-checklist-with-tick-marks_1150-35019-removebg-preview.png">
    </div>
</div>
<%@include file="op2.jsp" %>

