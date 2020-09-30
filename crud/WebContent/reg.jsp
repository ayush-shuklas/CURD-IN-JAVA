<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION</title>
</head>
<body>
 <a href="Home.jsp" class="nav-link"><h2><b>HOME</b></h2></a>
	<form action="login.jsp" method="post">
		<div class="container">
			<h1>Login</h1>
			<p>Please fill in this form to logins.</p>
			<hr>
		</div>

		<div class="container">
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">REGISTER</button>
  </div>

	</form>
</body>
</html>