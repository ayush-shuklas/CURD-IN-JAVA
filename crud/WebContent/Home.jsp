<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.icon-bar {
  width: 100%; /* Full-width */
  background-color: #555; /* Dark-grey background */
  overflow: auto; /* Overflow due to float */
}

.icon-bar a {
  float: left; /* Float links side by side */
  text-align: center; /* Center-align text */
  width: 20%; /* Equal width (5 icons with 20% width each = 100%) */
  padding: 12px 0; /* Some top and bottom padding */
  transition: all 0.3s ease; /* Add transition for hover effects */
  color: white; /* White text color */
  font-size: 36px; /* Increased font size */
}

.icon-bar a:hover {
  background-color: #000; /* Add a hover color */
}

.active {
  background-color: #4CAF50; /* Add an active/current color */
}

</style>

<div class="icon-bar">
  <a class="active" href="<%=request.getContextPath()%>/list"><i class="fa fa-home"></i></a>
  <a href="user-list.jsp"><i class="fa fa-envelope"></i></a>
  <a href="user-form.jsp"><i class="fa fa-globe"></i></a>
  <a href="user-list.jsp"><i class="fa fa-trash"></i></a>
</div>
 
 <a href="user-list.jsp">ALL USERS LIST</a><BR><hr>
 <a href="user-form.jsp">SAVE YOUR  DETAILS</a><BR><hr>
 <a href="login.jsp">LOGIN</a><BR><hr>
 <a href="reg.jsp">REGISTER</a><BR><hr>




