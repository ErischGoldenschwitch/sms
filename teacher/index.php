<?php 
session_start();
//if(!$_SESSION['meadmin'])
//{
//	header("location:home.php");
//}
 include "../setting/config.php";



if(isset($_POST['teacher_signin']))
{
	
	$teacher_username = mysqli_real_escape_string($ravi->hackme(),$_POST['teacher_username']);
    $teacher_password = mysqli_real_escape_string($ravi->hackme(),$_POST['teacher_password']);
	if($teacher_username=="" AND $teacher_password=="")
	{
		echo "<script>alert('Enter Your Username & Password');</script>";
	}
	else
	{
		$teacherlogin = $ravi->teacher_check($teacher_username,$teacher_password);
			if($teacherlogin==1)
	{
	$_SESSION['teacher'] = 	$teacher_username;
		header("location:home.php");
	}
		
		
	else
	{
		echo "<script>alert('Email ".$teacher_password." Or Password does ".$teacher_username."not matched');</script>";

	}
	
	}

	
}

?>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Teacher Login | SMS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Augment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
								
									   <div class="error_page">
												<!--/login-top-->
												
													<div class="error-top">
													
														<h2 class="inner-tittle page">Teacher Login</h2>
													
													    <div class="login">
															<h3 class="inner-tittle t-inner">Login</h3>
														
																<div class="buttons login">
																			
																		</div>
																<form method="post">
					<input type="text" class="text" name="teacher_username" placeholder="Username" value="<?php if(isset($_POST['teacher_signin'])){ echo $_POST['teacher_username']; } ?>">
					<input type="password" placeholder="Password" name="teacher_password" value="<?php if(isset($_POST['teacher_signin'])){ echo $_POST['teacher_password']; } ?>">
				<div class="submit"><input type="submit" value="Login" name="teacher_signin"></div>
									<div class="clearfix"></div>
																		
																
																	</form>
														</div>

														
													</div>
													
													
												<!--//login-top-->
										   </div>
						
										  	<!--//login-->
										    <!--footer section start-->
										<div class="footer">
												<div class="error-btn">
															<a class="read fourth" href="index.html">Return to Home</a>
															</div>
										   <p>&copy 2016 Augment . All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts.</a></p>
										</div>
									<!--footer section end-->
									<!--/404-->
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>