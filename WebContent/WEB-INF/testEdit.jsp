<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"></link>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> 
<style>  
.bs-margin
        {
            margin: 20px;
        }

        .box 
        {
            width: 50%;
            border: 4px solid #000;
        }
        
body {  
 font-size: 20px;  
 color: teal;  
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
 background-color: orange;  
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
            <p>Edit your informatiion.</p>
            
            <div class="box">
                <img src="/IndexImg.jpg" class="img-responsive" alt="Missing img"></img>
            </div>
        </div>
   
  
  <div>  
   <form:form method="post" action="/TestSpringMVC/update" modelAttribute="user">  
    <table>  
     <tr>  
      <td>First Name :</td>  
      <td><form:input path="tFirstName"  
        value="${map.user.tFirstName}" />  
      </td>  
     </tr> 
      
     <tr>  
      <td>Last Name :</td>  
      <td><form:input path="tLastName" value="${map.user.tLastName}" />  
      </td>  
     </tr>  
     
     <tr>  
      <td>House :</td>  
      <td><form:input path="tHouse" value="${map.user.tHouse}" />  
      </td>  
     </tr>  
     
     <tr>  
      <td>Greeting :</td>  
      <td><form:input path="tGreeting" value="${map.user.tGreeting}" />  
      </td>  
     </tr>  
    
     <tr>  
      <td> </td>  
      <td><input type="submit" value="Update" />  
      </td>  
     </tr>  
    </table>  
    <form:hidden path="id" value="${map.user.id}" />  
  
   </form:form>  
  </div>  
 
</body>  
</html>  