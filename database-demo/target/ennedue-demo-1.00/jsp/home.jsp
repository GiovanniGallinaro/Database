<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="EnneDue Studio Demo">
		<meta name="author" content="Winniest Team">

		<title>EnneDue | Home Page</title>
		
		<!--<link rel="shortcut icon" type="image/png" href="../media/logo-thumb.png"/>-->

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

		<!-- CSS -->
		<link href="../css/styles.css" rel="stylesheet" />

		<!-- Font Awesome CSS -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
		
	</head>

	<body>

		<div class = "container">
		
			<header>
				<div class = "row align-items-center" id="header-row">
					<div class="col-md-4">
					</div>
					<div class="col-md-4">
						<figure>
							<a href="../html/home.html">
								<img id="logo" src="../media/logo.jpg" class="rounded mx-auto d-block" title="Home">
							</a>
						</figure>
					</div>
				</div>
				
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Documents</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="shift-tab" data-toggle="tab" href="#shift" role="tab" aria-controls="shift" aria-selected="false">Shifts</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="projects-tab" data-toggle="tab" href="#projects" role="tab" aria-controls="projects" aria-selected="false">Projects</a>
					</li>
				</ul>
			</header>
			
			
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="tab-content text-center" id="myTabContent">
					
						<!-- ********* INSERT DOCUMENT *******************************************-->
						<!-- ********* INSERT DOCUMENT *******************************************-->
						<!-- ********* INSERT DOCUMENT *******************************************-->
					
						<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
							
							<h3>
								Insert Document
							</h3>
						
							<form>
								<div class="form-group">
									<p class="text">
										Select Project
									</p>
									<select name="project">
										<option value="Uno">Uno</option>
										<option value="Due">Due</option>
										<option value="Tre">Tre</option>
										<option value="Quattro">Quattro</option>
									</select>
									<br><br>
									<button type="submit" class="btn btn-primary">Submit</button>
									<!-- <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Submit</button> -->
								</div>
							</form>
							
							<!-- <div class="collapse" id="collapseExample">
								<div class="card card-body">
									Sas
								</div>
							</div> -->
							
							<form>
								<div class="form-group">
									<p class="text">
										Select Task
									</p>
									<select name="task">
										<option value="Uno">Uno</option>
										<option value="Due">Due</option>
										<option value="Tre">Tre</option>
										<option value="Quattro">Quattro</option>
									</select>
									<br><br>
									<button type="submit" class="btn btn-primary">Submit</button>
									<!-- <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Submit</button> -->
								</div>
							</form>
							
							<form>
								<div class="form-group">
									<p class="text">
										Select Employee
									</p>
									<select name="employee">
										<option value="Uno">Uno</option>
										<option value="Due">Due</option>
										<option value="Tre">Tre</option>
										<option value="Quattro">Quattro</option>
									</select>
									<br><br>
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
							
							<form id="document">
								<div class="form-group">
									<p class="text">Import Document</p>
									<div class="input-group">
										<textarea class="form-control">
										</textarea>
									</div>
								</div>
								<button type="send" class="btn btn-primary">Submit</button>
							</form>
							
							<h3>
								Retrieve Document
							</h3>
							
							<form>
								<div class="form-group">
									<p class="text">
										Select Project
									</p>
									<select name="retrievedocument">
										<option value="Uno">Uno</option>
										<option value="Due">Due</option>
										<option value="Tre">Tre</option>
										<option value="Quattro">Quattro</option>
									</select>
									<br><br>
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
							
							<form>
								<div class="form-group">
									<p class="text">
										Select Task
									</p>
									<select name="retrievetask">
										<option value="Uno">Uno</option>
										<option value="Due">Due</option>
										<option value="Tre">Tre</option>
										<option value="Quattro">Quattro</option>
									</select>
									<br><br>
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
						</div>
						
						<!-- ********* SELECT SHIFT *******************************************-->
						<!-- ********* SELECT SHIFT *******************************************-->
						<!-- ********* SELECT SHIFT *******************************************-->
					
						<div class="tab-pane fade" id="shift" role="tabpanel" aria-labelledby="shift-tab">
							<form>
								<div class="form-group">
									<p class="text">
										Select Employee
									</p>
									<select name="employee">
										<option value="Uno">Uno</option>
										<option value="Due">Due</option>
										<option value="Tre">Tre</option>
										<option value="Quattro">Quattro</option>
									</select>
									<br><br>
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
							
							<form>
								<div class="form-group">
									<p class="text">
										Start Date
									</p>
									<input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31">
								</div>
							</form>
							
							<form>
								<div class="form-group">
									<p class="text">
										End Date
									</p>
									<input type="date" id="start" name="trip-start" value="2018-07-22" min="2018-01-01" max="2018-12-31">
								</div>
							</form>
							
							<p class="text">
								Shifts
							</p>
							
							<table>
								<tr>
									<th>Task</th>
									<th>Time</th>
									<th>Fiscal Code</th>
									<th>Notes</th>
									<th>Hours</th>
									<th>Hourly Wage</th>
								</tr>
								<tr>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
								</tr>
							</table>
						</div>
						
						<!-- ********* PROJECTS *******************************************-->
						<!-- ********* PROJECTS *******************************************-->
						<!-- ********* PROJECTS *******************************************-->
						
						<div class="tab-pane fade" id="projects" role="tabpanel" aria-labelledby="projects-tab">
							<h5> 
								Active Projects
							</h5>
							
							<table>
								<tr>
									<th>Project Name</th>
									<th>Location</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Quote</th>
									<th>Deadline</th>
									<th>Estimated Hours</th>
									<th>Hours Spent</th>
								</tr>
								<tr>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
								</tr>
							</table>
							
							<h5> 
								Old Projects
							</h5>
							
							<table>
								<tr>
									<th>Project Name</th>
									<th>Location</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Quote</th>
									<th>Deadline</th>
									<th>Estimated Hours</th>
									<th>Hours Spent</th>
								</tr>
								<tr>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
									<td>Da inserire</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			
		<footer>
			
		</footer>
			
		</div>

		<script type="text/javascript" src="/ennedue-demo-1.00/js/ajax_project.js"></script>
		<!-- Bootstrap -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"crossorigin="anonymous"></script>

	</body>
</html>
