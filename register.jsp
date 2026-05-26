<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="register.css">
</head>
<body>

<div class="wrapper">
  <h1>Register</h1>

  <form action="Register" method="post">
    <div class="field">
      <input type="text" name="unameR" placeholder="User Name">
    </div>
    <div class="field">
      <input type="password" name="passR" placeholder="Password">
    </div>

    <button type="submit" class="btn-register">Register</button>
  </form>

  <p class="login-text">
    Already have an account? <a href="login.jsp">Sign In</a>
  </p>
</div>

</body>
</html>