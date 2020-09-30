<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
 <a href="Home.jsp" class="nav-link"><h2><b>HOME</b></h2></a>
<%
try {
	String username = request.getParameter("username");
	//String name = request.getParameter("name");
	String password = request.getParameter("password");
	String sql = "insert into registration(username,password) values(?,?)";
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/portal","root","ayushshuklas");
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, username);
	//ps.setString(2, name);
	ps.setString(2, password);
	ps.executeUpdate();
	out.println("succesfully registered");
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>



	<form action="ohme.jsp" method="post">
		<div class="container">
			<h1>Login page</h1>
			<p>Please fill in this form to logins.</p>
			<hr>
		</div>

		<div class="container">
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="password"><a href="#">Forgot password?</a></span>
    <a class="button" href="reg.jsp">Register</a>
  </div>

	</form>
</body>
</html>