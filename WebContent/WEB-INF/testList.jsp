<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
 pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>  
<head>  
<title>Jerry's attempt at the sprint MVC</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"></link>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style>  
body {  
 font-size: 20px;  
 color: black;  
 font-family: Calibri;  
}  
  
td {  
 font-size: 15px;  
 color: black;  
 width: 100px;  
 height: 22px;  
 text-align: center;  
}  
.heading {  
 font-size: 18px;  
 color: white;  
 font: bold;  
 background-color: red;  
 border: thick;  
}  
</style>  
</head>  
<body>  

<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">      
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Jerry Wang</a>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="http://www.gameofcodes.com" target="_blank">Home</a></li>
                    <li><a href="https://nz.linkedin.com/pub/jerry-xuji-wang/b3/11b/98" target="_blank">About</a></li>
                </ul>
            </div>
        </div>
    </nav>

<div class="jumbotron">
        <div class="container-fluid">
            <h1>${headerMessage}</h1>
            <p>Here are your citizens</p>
            
            <div class="box">
                <img src="/IndexImg.jpg" class="img-responsive" alt="Missing img"></img>
            </div>
        </div>
    </div>
  
  <table border="1">  
   <tr>  
    <td class="heading">User Id</td>  
    <td class="heading">First Name</td>  
    <td class="heading">Last Name</td>  
    <td class="heading">House</td>  
    <td class="heading">Greeting</td>  
    <td class="heading">Edit</td>  
    <td class="heading">Delete</td>  
   </tr>  
   <c:forEach var="user" items="${userList}">  
    <tr>  
    	<td>${user.id}</td>
     <td>${user.tFirstName}</td>  
     <td>${user.tLastName}</td>  
     <td>${user.tHouse}</td> 
     <td>${user.tGreeting}</td> 
     <td><a href="edit?id=${user.id }">Edit</a></td>
     <td><a href="delete?id=${user.id }">Delete</a></td>
    </tr>  
   </c:forEach>  
   <tr><td colspan="7"><a href="test">Add New User</a></td></tr>  
  </table>  
  
 
</body>  
</html>  