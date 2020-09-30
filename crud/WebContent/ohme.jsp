<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<title> Template from w3 school</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body class="w3-content" style="max-width: 1300px">
	<%
		try {
		String username = request.getParameter("username");
		// String name = request.getParameter("name");
		String password = request.getParameter("password");
		String dbName = null;
		String dbPassword = null;
		String sql = "select * from registration where username=?,password=?";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/portal", "root", "ayushshuklas");
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, username);
		// ps.setString(2, name);
		ps.setString(2, password);
		// ps.executeUpdate();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			dbName = rs.getString("username");
			dbPassword = rs.getString("password");
		}
		if (username.equals(dbName) && password.equals(dbPassword)) {
			// out = null;
			System.out.println("succesfully loggedin");
			//response.sendRedirect("Registration.jsp");
		} else {
			response.sendRedirect("login.jsp");
			// RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			// rd.include(request, response);
		}
		// PrintWriter out = response.getWriter();

	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	%>

	<!-- First Grid: Logo & About -->
	<div class="w3-row">
		<div class="w3-half w3-black w3-container w3-center"
			style="height: 700px">
			<div class="w3-padding-64">
				<h1><%= request.getParameter("username") %></h1>
			</div>
			<div class="w3-padding-64">
				<a href="login.jsp"
					class="w3-button w3-black w3-block w3-hover-blue-grey w3-padding-16">Login</a>
				<a href="reg.jsp"
					class="w3-button w3-black w3-block w3-hover-teal w3-padding-16">
					Register</a> <a href="#work"
					class="w3-button w3-black w3-block w3-hover-dark-grey w3-padding-16">Resume</a>
				<a href="#contact"
					class="w3-button w3-black w3-block w3-hover-brown w3-padding-16">Contact</a>
			</div>
		</div>
		<div class="w3-half w3-blue-grey w3-container" style="height: 700px">
			<div class="w3-padding-64 w3-center">
				<h1>hello , <%= request.getParameter("username") %></h1>
				<img src="/w3images/avatar3.png" class="w3-margin w3-circle"
					alt="Person" style="width: 50%">
				<div class="w3-left-align w3-padding-large">
					<h1>hello , <%= request.getParameter("username") %></h1>
<h1>please go back from home  </h1>
<a class="button" href="login.jsp">login</a>
<a class="button" href="reg.jsp">Register</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Second Grid: Work & Resume -->
	<div class="w3-row">
		<div class="w3-half w3-light-grey w3-center" style="min-height: 800px"
			id="work">
			<div class="w3-padding-64">
				<a class="button" href="login.jsp">login</a>
				<p>Some of my latest projects.</p>
			</div>
			<div class="w3-row">
				<div class="w3-half">
					<img src="/w3images/coffee.jpg" style="width: 100%">
				</div>
				<div class="w3-half">
					<img src="/w3images/workbench.jpg" style="width: 100%">
				</div>
			</div>
			<div class="w3-row w3-hide-small">
				<div class="w3-half">
					<img src="/w3images/workbench.jpg" style="width: 100%">
				</div>
				<div class="w3-half">
					<img src="/w3images/coffee.jpg" style="width: 100%">
				</div>
			</div>

			<div class="w3-row w3-hide-small">
				<div class="w3-half">
					<img src="/w3images/sound.jpg" style="width: 100%">
				</div>
				<div class="w3-half">
					<img src="/w3images/workbench.jpg" style="width: 100%">
				</div>
			</div>
			<br>
			<p>Just call me awesome.</p>
		</div>
		<div class="w3-half w3-indigo w3-container" style="min-height: 800px">
			<div class="w3-padding-64 w3-center">
				<h2>Resume</h2>
				<p>A draft from my CV</p>
				<div class="w3-container w3-responsive">
					<table class="w3-table">
						<tr>
							<th>Year</th>
							<th>Title</th>
							<th>Where</th>
						</tr>
						<tr class="w3-white">
							<td>2012-2016</td>
							<td>The rest is history..</td>
							<td>Lorem ipsum</td>
						</tr>
						<tr>
							<td>2009-2012</td>
							<td>Started my own company</td>
							<td>My Garage</td>
						</tr>
						<tr class="w3-white">
							<td>2008-2009</td>
							<td>Started working for Lorem</td>
							<td>London, UK</td>
						</tr>
						<tr>
							<td>2005-2008</td>
							<td>Degree in Bachelor of Design</td>
							<td>Harvard, USA</td>
						</tr>
						<tr class="w3-white">
							<td>2002-2005</td>
							<td>Degree in Bachelor of Business</td>
							<td>RMIT University, Melbourne, Australia</td>
						</tr>
						<tr class="w3-hide-medium">
							<td>2002-2005</td>
							<td>Degree in Bachelor of Business</td>
							<td>RMIT University, Melbourne, Australia</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Third Grid: Swing By & Contact -->
	<div class="w3-row" id="contact">
		<div class="w3-half w3-dark-grey w3-container w3-center"
			style="height: 700px">
			<div class="w3-padding-64">
				<h1>Swing By</h1>
			</div>
			<div class="w3-padding-64">
				<p>..for a cup of coffee, or whatever.</p>
				<p>Chicago, US</p>
				<p>+00 1515151515</p>
				<p>test@test.com</p>
			</div>
		</div>
		<div class="w3-half w3-teal w3-container" style="height: 700px">
			<div class="w3-padding-64 w3-padding-large">
				<h1>Contact</h1>
				<p class="w3-opacity">GET IN TOUCH</p>
				<form class="w3-container w3-card w3-padding-32 w3-white"
					action="/action_page.php" target="_blank">
					<div class="w3-section">
						<label>Name</label> <input class="w3-input" style="width: 100%;"
							type="text" required name="Name">
					</div>
					<div class="w3-section">
						<label>Email</label> <input class="w3-input" style="width: 100%;"
							type="text" required name="Email">
					</div>
					<div class="w3-section">
						<label>Message</label> <input class="w3-input"
							style="width: 100%;" type="text" required name="Message">
					</div>
					<button type="submit" class="w3-button w3-teal w3-right">Send</button>
				</form>
			</div>
		</div>
	</div>



</body>
</html>
