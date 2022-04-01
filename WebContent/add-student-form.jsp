<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>Add student form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">
</head>

<body>
	<div class="container-fluid">
		<div class="header pt-4 pb-4 font-weight-bold text-light bg-primary">
			<h1>Add Student Form</h1>
		</div>
		<div class="control mt-2 mb-2">
			<a type="button" class="btn btn-primary"
				href="StudentControllerServlet">Back to Dashboard</a>
		</div>
		<form id="form" class="mb-8" action="StudentControllerServlet" method="POST">
			<input type="hidden" name="command" value="ADD">
			<div class="form-group">
				<label for="firstName">First name</label> <input type="text"
					name="firstName" class="form-control" id="firstName"
					placeholder="Enter your first Name">
			</div>
			<div class="form-group">
				<label for="lastName">Last name</label> <input type="text"
					name="lastName" class="form-control" id="lastName"
					placeholder="Enter your last Name">
			</div>
			<div class="form-group">
				<label for="email">Email address</label> <input type="email"
					name="email" class="form-control" id="email"
					placeholder="Enter your email address">
			</div>

			<button type="submit" class="btn btn-primary" value="Save">Add student</button>
			<a type="button" class="btn btn-danger"
				href="StudentControllerServlet">Cancel</a> 
		</form>
	</div>
	<script src="./js/script.js"></script>
</body>

</html>