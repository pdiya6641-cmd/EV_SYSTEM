<%-- 
    Document   : demo
    Created on : 9 Jan, 2025, 4:19:17 PM
    Author     : pdiya
--%>
<%@include file="vheader.jsp" %>

<div class="container-fluid" style="height: 600px;background-image:url('img11.jpg'); background-size: cover; background-repeat: no-repeat;">
    
    <div class="row">
   <form action="login_check.jsp" method="post" style="margin-top: 100px;margin-left: 900px;">
   <div class="content">
       <h1 style="margin-top: 10px; margin-bottom: 5px;">Login Form</h1>
       
       <div style="margin-bottom: 20px;">
       <img src="icon/user.png" width="40px" height="25px">
       <input type="text" name="username" placeholder="Email Id" required  style="margin-top: 10px; font-family: serif; text-size:15px;width:250px;">
       </div>
       
       <div>
           
    <img src="icon/password.png" width="40px" height="25px" >
      <input type="password" name="password" placeholder="Password" style="font-family: serif; text-size:15px;width:250px;">
       </div>
       <div>
      <button class="btn-outline-success" style="font-family: serif; color:black;border-color: black;">Log IN</button>
    </div>
 </div>
</form>
    
    
</div>
</div>
    <link rel="stylesheet" href="style1.css">
<%@include file="footer.jsp" %>
