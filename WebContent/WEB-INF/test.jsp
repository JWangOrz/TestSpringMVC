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
            <p>Please leave your name here.</p>
            
            <div class="box">
                <img src="/IndexImg.jpg" class="img-responsive" alt="Missing img"></img>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4">
                <div class="bs-margin">
                    <form action="/TestSpringMVC/insert" method="post">
                        <div class="form-group">
                            <label>Outlander's first name :</label>
                            <p><input type="text" name="tFirstName" /></p>
                        </div>
                        <div class="form-group">
                            <label>Outlander's last name :</label>
                            <p><input type="text" name="tLastName" /></p>
                        </div>
                        <div class="form-group">
                            <label>Outlander's house :</label>
                            <p><input type="text" name="tHouse" /></p>
                        </div>
                        <div class="form-group">
                            <label>Outlander's message :</label>
                            <p><input type="text" name="tGreeting" /></p>
                        </div>

                        <p><input type="submit" value="Submit" class="btn btn-primary" /> 
                        <input type="reset" value="Reset" class="btn btn-primary" /></p>
                    
				 		<a href="testSearch"><strong>search</strong></a>
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
    
    
    
    
	<h1>${headerMessage}</h1>
 
	<h3> Outlander admission from</h3>

	 <!--  <form action="/TestSpringMVC/tGreeting.html" method="post">-->
	 <form action="/TestSpringMVC/insert" method="post">
		
		<p>
			Outlander's first name : <input type="text" name="tFirstName" />
		</p>
		
		<p>
			Outlander's last name : <input type="text" name="tLastName" />
		</p>
		
		<p>
			Outlander's house : <input type="text" name="tHouse" />
		</p>
		
		<p>
			Outlander's message : <input type="text" name="tGreeting" />
		</p>
		<input type="submit" value="Save" />
	</form>
 		<a href="testList">Click Here to See User List</a>
 		<a href="testSave">save</a> 
 		<a href="testSearch">search</a>
</body>
</html>
 