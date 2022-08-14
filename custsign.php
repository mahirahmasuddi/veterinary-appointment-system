<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Registration</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body style="background-image:url(images/hospital.jpg);background-repeat: no-repeat; background-size: cover;">
<?php
include("include/header.php");

?>
    <form class="form" action="process/custsignup.php" method="post" enctype="multipart/form-data">
        <h1 class="login-title">CUSTOMER SIGN UP</h1>
        <input type="text" class="login-input" name="username" placeholder="Username" required />
		<input type="text" class="login-input" name="Fullname" placeholder="Fullname" required />
        <input type="email" class="login-input" name="email" placeholder="Email Address" required>
		<input type="text" class="login-input" name="phone_number" placeholder="Phone Number" required>
		<input type="text" class="login-input" name="address" placeholder="Address" required>
        <input type="password" class="login-input" name="password" placeholder="Password" required>
	   <input type="submit" name="submit" value="Register" class="login-button">
        <p class="link">Already have an account? <a href="custlog.php">Login here</a></p>
    </form>
</body>
</html>
