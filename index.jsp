
<%-- 
    Document   : demo
    Created on : 9 Jan, 2025, 4:19:17 PM
    Author     : pdiya
--%>
<html>

<head>
    <title>HTML Login Form</title>
    <link rel="stylesheet" href="style1.css">
</head>

<body>
 <div class="content">
<div class="text">Login Form</div>
<form action="login_check.jsp" method="post">
  <div class="field">
                <img src="icon/user.png" width="25px" height="25px">

    <input type="text" name="username" placeholder="Email Id" required>
  </div>
 
  <div class="field">
      <img src="icon/password.png" width="25px" height="25px">
      <input type="password" name="password" placeholder="Password">
  </div>
    <button>Log IN</button>
</form>
</div>
</body>
</html>
