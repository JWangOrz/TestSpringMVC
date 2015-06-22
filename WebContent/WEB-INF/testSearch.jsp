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
            <p>Outlander admission from</p>
            
            <div class="box">
                <img src="/IndexImg.jpg" class="img-responsive" alt="Missing img"></img>
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4">
                <div class="bs-margin">
                    <form action="/TestSpringMVC/search" method="post">
                        <div class="form-group">
                            <label>Outlander's ID :</label>
                            <p><input type="text" name="id" /></p>
                        </div>

                        <p><input type="submit" value="Search" class="btn btn-primary" /> 
                        </p>
                    </form>
                </div>
            </div>
        </div>
        <hr></hr>
        <div class="row">
            <div class="col-xs-12">
                <footer>
                    <p>&copy; Jerry Wang</p>
                </footer>
            </div>
        </div>
    </div>
</body>
    
    
    
    
    
    
    
    
    
    
   