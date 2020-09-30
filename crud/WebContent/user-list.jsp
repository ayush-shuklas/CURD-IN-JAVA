<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>ayushshuklas</title>
                   </head>

        <body>

            <header>
            
                    <div>
                        <a href="https://ayushshuklasblog.ml" class="navbar-brand">ayushshuklas</a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="https://ayushshuklasblog.ml" class="nav-link">Visit ayushshuklasblog.ml</a></li>
                        <a href="Home.jsp" class="nav-link"><h2><b>HOME</b></h2></a>
                    </ul>
                </nav>
            </header>
            <br>
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
 <a href="user-form.jsp"><i class="fa fa-envelope"></i></a>
</div>




            
            
            
            
            
            
            

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">List of Users</h3>
                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
     New User</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Fullname</th>
                                <th>Actions(press green to edit ,bin to delete)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.country}" />
                                    </td>
                               <!--      <div class="icon-bar">
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                               </div> 
                               -->
                        <td>       <div class="icon-bar">
  <a class="active" href="edit?id=<c:out value='${user.id}' />"<i class="fa fa-home"></i></a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />" <i class="fa fa-trash"></i></a>
</div>
</td>
<div class="icon-bar">
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                               </div> 
                               
                               
                               
                               
                               
                               
                               
                               
                               
                               
                               
                               
                               
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>