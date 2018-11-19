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
						
					<h3>Your goals</h3>
					<p>Add tasks to your to-do list below.</p>
						
				</div>
				<div class="col-md">
				
				</div>
				
			</div>
			
			<div class="row">
				<div class="col-md">
					
				</div>
				<div class="col-md">
					<form class="form-group" action="addtask">
						<label>Task Description:</label>
						<br>
						<input type="text" class="form-control" name="taskdescription" placeholder="Describe your task, briefly.">
						<br>
						<label>Deadline:</label>
						<br>
						<input type="date" class="form-control" name="taskdeadline" placeholder="YYYY-MM-DD">
						<br>
						<label>Complete? (or not?):</label>
						<input type="checkbox" class="form-control" name="taskcomplete" onclick="myFunction()">
						<br>
						<input class="btn btn-primary" type="submit" value="Add">
					</form>
					
					<table class="table">
						<c:forEach var="t" items="${listoftasks}">
							<tr>
								<td>${t.taskdescription}</td>
								<td>${t.taskdeadline}</td>
								<td>${t.taskcomplete}</td>
								<td><a class="btn btn-warning" href="/update?taskid=${t.taskid}">Edit</a></td>
								<td><a class="btn btn-danger" href="/delete?taskid=${t.taskid}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
					
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