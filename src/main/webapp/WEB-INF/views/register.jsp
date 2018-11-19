<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/cyborg/bootstrap.min.css">
		<link rel="stylesheet" href="site.css">
		<style type="text/css">
			
			.page-header {
				padding-top: 50px;
				padding-bottom: 50px;
				}
				
			h1 {
				font-size: 7em;
				letter-spacing: -2px;
				}
				
			#footer {
				padding-top: 20px;
				padding-bottom: 50px;
				}
				
		</style>
		<title>Task Master — Create An Account</title>
	</head>
	
	<body>
	
		<nav class="navbar navbar-expand-lg navbar-dark site-header bg-dark sticky-top py-1">
			<div class="container">
				<a class="navbar-brand" href="/">Task Master</a>
				<div>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="about">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Sign Up</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
	
		<div class="container-fluid">
			
			<div class="page-header">
				
				<div class="col-md">
						
				</div>
				<div class="col-md">
						
					<h3>Become the master of your domain.</h3>
					<p>Get your life organized with Task Master today.</p>
						
				</div>
				<div class="col-md">
				
				</div>
				
			</div>
			
			<div class="row">
				<div class="col-md">
					
				</div>
				<div class="col-md">
					
					<form class="form-group" action="adduser">
						<label>Enter your name:</label><br>
						<input class="form-control" type="text" name="username"><br>
						<label>Enter your email:</label><br>
						<input class="form-control" type="text" name="useremail"><br>
						<label>Enter a password:</label><br>
						<input class="form-control" type="text" name="password"><br>
						<input class="btn btn-secondary" type="submit" value="Submit">
					</form>
					
				</div>
				<div class="col-md">
			
				</div>
			</div>
				
			<div id="footer" class="row">
				<div class="col-md">
					
				</div>
				<div class="col-md">
					<small>©2018 TaskMaster Project Inc.</small>
				</div>
				<div class="col-md">
			
				</div>
			</div>
		
		</div>
	
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>