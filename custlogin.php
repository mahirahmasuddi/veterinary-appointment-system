<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body style="background-image:url(images/hospital.jpg);background-repeat: no-repeat; background-size: cover;">
<?php
include("include/header.php");

?>

    <form class="form" action="process/customerlogin.php" method="post" enctype="multipart/form-data">
        <h1 class="login-title">CUSTOMER LOGIN</h1>
        <input type="text" class="login-input" name="username" placeholder="Username" autofocus="true" autocomplete="off"/>
        <input type="password" class="login-input" name="password" placeholder="Password"/>
        <input type="submit" value="Login" name="submit" class="login-button"/>

                <p class="link">Don't have an account? <a href="custsign.php">Register Now</a></p>
		
  </form>

</body>
</html>
