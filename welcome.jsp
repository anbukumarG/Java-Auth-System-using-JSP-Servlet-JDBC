<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="welcome.css">
</head>
<body>
<%
  response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
  if(session.getAttribute("username") == null){
    response.sendRedirect("login.jsp");
  }
%>

<div class="wrapper">

  <h1 class="welcome-text">
    Welcome, <span>${username}</span>
  </h1>

  <%-- <a href="videos.jsp">Videos here</a> --%>

  <p class="comment-text">Glad to have you back!</p>

  <form action="Logout">
    <button type="submit" class="btn-logout">Logout</button>
  </form>

</div>

</body>
</html>
