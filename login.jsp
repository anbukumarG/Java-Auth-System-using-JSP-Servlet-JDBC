<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>

<div class="wrapper">
  <h1>Login</h1>

  <form action="Login" method="post">
    <div class="field">
      <input type="text" name="uname" placeholder="User Name">
    </div>
    <div class="field">
      <input type="password" name="pass" placeholder="Password">
    </div>

    <div class="extras">
      <label>
        <input type="checkbox"> Remember me
      </label>
      <a href="#">Forgot password</a>
    </div>

    <button type="submit" class="btn-login">Sign In</button>
  </form>

  <p class="signup-text">
    Don't have account? <a href="register.jsp">Sign Up</a>
  </p>
</div>

</body>
</html>