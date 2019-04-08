<?php 
include "../setting/config.php";
session_start();
if(!$_SESSION['teacher'])
{
	header("location:index.php");
}
else
{
	$teachername = $_SESSION['teacher'];
	$teacher_username = $ravi->teacher_username($teachername);
	$teacher_username_display = $teacher_username->fetch_assoc();
	$teacher_info= $teacher_username_display['t_username']; 
	$t_staff_type = $teacher_username_display['t_staff_type'];
	$info = $ravi->teacher_info($teachername,$t_staff_type);
	$info_display = $info->fetch_assoc();
	
}


        if(isset($_POST['submit'])){
			//echo '<script type="text/javascript">alert("The size of the file must be less than 20MB in order to be uploaded");</script>';
			$size= $_FILES['file']['size'];
			
				 $acceptable = array(
        'image/jpeg',
        'image/jpg',
        'image/gif',
        'image/png'
             );
			  if((!in_array($_FILES['file']['type'], $acceptable)) ) {
       echo '<script type="text/javascript">alert("Invalid file type. Only, JPG, GIF and PNG types are accepted");</script>';
    }
		else{
			if ($size<2097152)
			{
				if ($_FILES['file']['name'] != null)
			{
			//	echo "kjsdfldksjflksdjflkssdkfjhksdjhfkjsd"."Not Empty save to database";
                move_uploaded_file($_FILES['file']['tmp_name'],"images/pro/".$_FILES['file']['name']);
				//header("Refresh:0; url=page2.php");
                $con = mysqli_connect("localhost","root","","march9");
               $q = mysqli_query($con,"UPDATE teacher_info SET image = '".$_FILES['file']['name']."',
			  t_fullname='".$_POST['name']."',t_address='".$_POST['address']."',t_email='".$_POST['email']."',
			  t_dob='".$_POST['datetimepicker4']."',t_qualification='".$_POST['qualification']."',t_contact='".$_POST['contact']."',
			  t_gender='".$_POST['gender']."'
			  where t_staff_type='".$t_staff_type."' AND t_username='".$teachername."'"); 
    /// $message = isset($_POST['name']) ? $_POST['name'] : null;
	echo '<script type="text/javascript">alert("Successfully save");</script>';
	
			}
			
			else{
				$con = mysqli_connect("localhost","root","","march9");
               $q = mysqli_query($con,"UPDATE teacher_info SET t_fullname='".$_POST['name']."',
			   t_address='".$_POST['address']."',t_email='".$_POST['email']."',
			  t_dob='".$_POST['datetimepicker4']."',t_qualification='".$_POST['qualification']."',t_contact='".$_POST['contact']."',
			  t_gender='".$_POST['gender']."'
			  where t_staff_type='".$t_staff_type."' AND t_username='".$teachername."'"); 
			  //echo '<script type="text/javascript">window.location.reload();</script>';
		//echo "kjsdfldksjflksdjflkssdkfjhksdjhfkjsd"." Empty Do not save to database";
		echo '<script type="text/javascript">alert("Successfully save");</script>';
		}
		
				
			}
else {
				echo '<script type="text/javascript">alert("The size of the file must be less than 20MB in order to be uploaded");</script>';
				
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
	<title>Augment an Admin Panel Category Flat Bootstrap Responsive Web Template | Home :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Augment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
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
	<script src="js/amcharts.js"></script>
	<script src="js/serial.js"></script>
	<script src="js/light.js"></script>
	<script src="js/radar.js"></script>
	<link href="css/barChart.css" rel='stylesheet' type='text/css' />
	<link href="css/fabochart.css" rel='stylesheet' type='text/css' />
	<!--clock init-->
	<script src="js/css3clock.js"></script>
	<!--Easy Pie Chart-->
	<!--skycons-icons-->
	<script src="js/skycons.js"></script>

	<script src="js/jquery.easydropdown.js"></script>

	<!--//skycons-icons-->
</head>

<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->
				<div class="header-section">

					<div class="clearfix"></div>
				</div>
				<!-- //header-ends -->
		
				<?php 
				
				
				
				$homepage = "home1";
				if(isset($_GET['ravi']))
				{
					$homepage = $_GET['ravi'];
				}
				include $homepage.".php";
				
				
						
				?>
				
				
				
				
				
				
				<!--footer section start-->
				<footer>
					<p>&copy 2018 Augment . All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts.</a> and Develop By Ravi Khadka</p>
				</footer>
				<!--footer section end-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<div class="sidebar-menu">
			<header class="logo">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.html"> <span id="logo"> <h1>MeRavi</h1></span> 
					<!--<img id="logo" src="" alt="Logo"/>--> 
				  </a>
			</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
			<div class="down">
				 <?php
                                if($info_display['image'] == ""){
                                        echo "<img width='100' height='100' src='images/pro/nophoto.png' alt='Default Profile Pic'>";
                                } else {
                                        echo "<img width='100' height='100' src='images/pro/".$info_display['image']."' alt='Profile Pic'>";
                                }
                                
                        
                ?>
				<a href="index.php"><span class=" name-caret"><?php echo $info_display['t_fullname']; ?></span></a>
				<p>Teacher</p>
				<ul>
					<li><a class="tooltips" href="#" data-toggle="modal" data-target="#add_data_Modal"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
					<li><a class="tooltips" href="index.html"><span>Settings</span><i class="lnr lnr-cog"></i></a></li>
					<li><a class="tooltips" href="logouts.php"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
				</ul>
			</div>
			<!--//down-->
			<div class="menu">
				<ul id="menu">
					<li><a href="home.php"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
					<li id="menu-academico"><a href="#"><i class="fa fa-table"></i> <span>Students</span> <span class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a href="home.php?ravi=student-information">Students Information</a></li>
							

						</ul>
					</li>
                    
                    <li id="menu-academico"><a href="#"><i class="fa fa-file-text-o"></i> <span>Student Marks</span> <span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a href="home.php?ravi=add-marks">Edit marks</a></li>
                            <li id="menu-academico-avaliacoes"><a href="home.php?ravi=marks-routine">View Marks</a></li>
						
						</ul>
					</li>
				
					
					<li id="menu-academico"><a href="#"><i class="fa fa-file-text-o"></i> <span>Teacher</span> <span class="fa fa-angle-right" style="float: right"></span></a>
						
					<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a href="home.php?ravi=teacher-information">Teacher Information</a></li>
							
						</ul>
					</li>
                    
                    
					
					<li id="menu-academico"><a href="#"><i class="fa fa-file-text-o"></i> <span>Parents</span> <span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a href="tabs.html">Parents Information</a></li>
						</ul>
					</li>
					<li id="menu-academico"><a href="#"><i class="fa fa-file-text-o"></i> <span>Settings</span> <span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a href="home.php?ravi=general-information">General Information</a></li>
							<li id="menu-academico-avaliacoes"><a href="home.php?ravi=edit-general-information">Edit General Information</a></li>
						
						</ul>
					</li>
					<li id="menu-academico"><a href="#"><i class="lnr lnr-book"></i> <span>List</span> <span class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-academico-sub">
							<li id="menu-academico-avaliacoes"><a href="#">Exam List</a></li>
							<li id="menu-academico-boletim"><a href="home.php?ravi=class-routine">Class Routine</a></li>
							<li id="menu-academico-boletim"><a href="404.html">Noticeboard</a></li>
							<li id="menu-academico-boletim"><a href="sign.html">Sign up</a></li>
							<li id="menu-academico-boletim"><a href="profile.html">Profile</a></li>
						</ul>
					</li>
			
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div id="add_data_Modal" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title">Editing Profile</h4>
   </div>
   <div class="modal-body">
    <form action="" method="POST" enctype="multipart/form-data">
	<?php
                                if($info_display['image'] == ""){
                                        echo "<img width='100' height='100' src='images/pro/nophoto.png' alt='Default Profile Pic'>";
                                } else {
                                        echo "<img width='100' height='100' src='images/pro/".$info_display['image']."' alt='Profile Pic'>";
                                }
                                
                        
                ?>
				 <br />
				 <br />
				 <input type="file" name="file">
				 <br />
				 <label>Fullname</label>
     <input type="name" name="name"  class="form-control" required value="<?php echo $info_display['t_fullname']; ?>" />
     <br />
	 	 <label>Address</label>
     <input type="text" name="address" id="address" required class="form-control" value="<?php echo $info_display['t_address']; ?>"/>

	  <br />
	 	 <label>Email</label>
     <input type="text" name="email" id="email" required class="form-control" value="<?php echo $info_display['t_email']; ?>"/>
     <br />
	 <label>Date of Birth</label>
      <input type='text' class="form-control" id='datetimepicker4' required name="datetimepicker4" value="<?php echo $info_display['t_dob']; ?>"/>
    <br />
	 	 <label>Qualification</label>
     <input type="text" name="qualification" required id="qualification" class="form-control" value="<?php echo $info_display['t_qualification']; ?>"/>
     <br />
	  <label>Contact</label>
     <input type="text" name="contact" id="contact" required class="form-control" value="<?php echo $info_display['t_contact']; ?>"/>
     <br />
	  <label>Gender</label>
     <input type="text" name="gender" id="gender" required class="form-control" value="<?php echo $info_display['t_gender']; ?>"/>
     <br />
                   
                        <input type="submit" name="submit" >
                </form>
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   </div>
  </div>
 </div>
</div>

	<script>
		var toggle = true;

		$(".sidebar-icon").click(function() {
			if (toggle) {
				$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
				$("#menu span").css({
					"position": "absolute"
				});
			} else {
				$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
				setTimeout(function() {
					$("#menu span").css({
						"position": "relative"
					});
				}, 400);
			}

			toggle = !toggle;
		});
	</script>
	<!--js -->
	<link rel="stylesheet" href="css/vroom.css">
	<script type="text/javascript" src="js/vroom.js"></script>
	<script type="text/javascript" src="js/TweenLite.min.js"></script>
	<script type="text/javascript" src="js/CSSPlugin.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>