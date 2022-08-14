<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href=
"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="login.css">
	<title>Login Page</title>
</head>

<body style="background-image:url(images/hospital.jpg);background-repeat: no-repeat; background-size: cover;">
<?php
include("include/header.php");
include('include/db_connection.php');

function test_input($data) {
	
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}
?>
	<form action="process/stafflogin.php" method="POST" enctype="multipart/form-data">
		<div class="login-box">
			<h1>STAFF LOGIN</h1>

			<div class="textbox">
				<i class="fa fa-user" aria-hidden="true"></i>
				<input type="text" placeholder="Adminname" name="adminname" required>
			</div>

			<div class="textbox">
				<i class="fa fa-lock" aria-hidden="true"></i>
				<input type="password" placeholder="Password" name="password" required>
			</div>

			<input class="button" type="submit"  value="LOGIN">
		</div>
	</form>
</body>

</html>