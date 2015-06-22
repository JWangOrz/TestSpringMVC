<html>
<head>
<title>Jerry's attempt at the sprint MVC</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"></link>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <style type="text/css">
        .bs-margin
        {
            margin: 20px;
        }

        .box 
        {
            width: 50%;
            border: 4px solid #000;
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
            <p>Your message.</p>
            
            <div class="box">
                <img src="/IndexImg.jpg" class="img-responsive" alt="Missing img"></img>
            </div>
        </div>
    </div>
    
	<table>
		<tr>
			<td>Outlander's Name: </td>
			<td>${user.tFirstName} ${ user.tLastName }</td>
		</tr>
	
		<tr>
			<td>Outlander's House: </td>
			<td>${user.tHouse}</td>
		</tr>	
	
		<tr>
			<td>Outlander's Greeting: </td>
			<td>${user.tGreeting}</td>
		</tr>
	</table>
 <a href="testSearch">Another</a></td>  
</body>
</html>