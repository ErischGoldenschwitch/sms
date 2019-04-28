<?php 
include "../setting/config.php";
 session_start();
if(!$_SESSION['pr_user'])
{
	
	header("location:index.php");
}
else
{
    
	$pr_username = $_SESSION['pr_user'];
	$pr_name = $ravi->parent_info_select($pr_username);
	$parent_name_display = $pr_name->fetch_assoc();

    $st_name = $ravi->student_info_select($pr_username);
    $student_name_display = $st_name->fetch_assoc();
    
    
    
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
				<div class="outter-wp">
					<!--/tabs-->
					<div class="tab-main">
						<!--/tabs-inner-->
						<div class="tab-inner">
							<div id="tabs" class="tabs">
								<h2 class="inner-tittle">Welcome,
									<?php echo ucfirst($parent_name_display['fathername']); ?>
                                      
                                </h2>
                
								<div class="graph">
									<nav>
										<ul>
											<li><a href="#section-1" class="icon-shop"><i class="lnr lnr-briefcase"></i> <span>Information</span></a></li>
											<li><a href="#section-2" class="icon-cup"><i class="lnr lnr-lighter"></i> <span>Change Password</span></a></li>
											<li><a href="#section-3" class="icon-food"><i class="fa fa-cutlery"></i> <span>Teachers</span></a></li>
											<li><a href="#section-4" class="icon-lab"><i class="fa fa-flask"></i> <span>Subject</span></a></li>
											<li><a href="#section-5" class="icon-truck"><i class="fa fa-truck"></i> <span>Results</span></a></li>
										</ul>
									</nav>
									<div class="content tab">
										<section id="section-1">
											<div class="mediabox">
												<strong>Child Information</strong>
												<p> <strong>Fullname:</strong>,
													<?php echo ucfirst($student_name_display['st_fullname']); ?>
												</p>
												<p><strong>standard: </strong>
													<?php echo ucfirst($student_name_display['st_grade']); ?>
												</p>
												<p><strong>Roll No: </strong>
													<?php echo ucfirst($student_name_display['roll_no']); ?>
												</p>
												<p><strong>Gender: </strong>
													<?php echo ucfirst($student_name_display['st_gender']); ?>
												</p>
												<p> <strong>Date of Birth:</strong>
													<?php echo ucfirst($student_name_display['st_dob']); ?>
												</p>

											</div>
											<div class="mediabox">
												<strong>Contact Details</strong>

												<p> <strong>Address:</strong>
													<?php echo ucfirst($student_name_display['st_address']); ?>
												</p>
												<p> <strong>District:</strong>
													<?php echo ucfirst($student_name_display['st_district']); ?>
												</p>
												<p> <strong>Username:</strong>
													<?php echo ucfirst($student_name_display['st_username']); ?>
												</p>
											</div>
											<div class="mediabox">
												<strong>Parents Detail</strong>
												<p><strong>Father Name: </strong>
													<?php echo ucfirst($parent_name_display['fathername']); ?>
												</p>
												<p><strong>Mother Name: </strong>
													<?php echo ucfirst($parent_name_display['mothername']); ?>
												</p>
												<p><strong>Contact details: </strong>
													<?php echo ucfirst($parent_name_display['contact_details']); ?>
                                                    
                                                    <p><strong>Address: </strong>
													<?php echo ucfirst($parent_name_display['address']); ?>
												</p>
											</div>
										</section>
										<section id="section-2">
										
											
											<div class="col-md-12">
												<?php 
												if(isset($_POST['change_password']))
												{
													
													$prev_password = $parent_name_display['pr_password'];
													$old_password = $_POST['old_password'];
													
													if($prev_password!=$old_password)
													{ 
														echo "<script>alert('Old Password Does not Matched');</script>";	
													}
													else
													{
														$pr_username = $parent_name_display['pr_username'];
													$pr_password_update = $_POST['new_password'];
														$update_success = $ravi->parent_password_change($pr_password_update,$pr_username);
														print_r($update_success);
													
													if($update_success==true)
													{
													echo "<script>window.location = 'home.php?success';</script>";
													}
														else
														{
															echo "<script>alert('cant update password');</script>";
														}
													}
													
												}
										
												?>
												<form method="post">
												<div class="input-group input-icon">
													<span class="input-group-addon">
												<i class="fa fa-key"></i>	</span>
													<input type="password" class="form-control1 icon" name="old_password" placeholder="Old Password">
													
												</div>
												<div class="input-group input-icon">
													<span class="input-group-addon">
												<i class="fa fa-key"></i>	</span>
													<input type="password" class="form-control1 icon" placeholder="New Password" name="new_password">
													
												</div>	
										
													<input type="submit" name="change_password" class="a_demo_four" value="Change Password">
													</form>
											</div>
										</section>
										<section id="section-3">
												<div class="graph">
															<div class="tables">
															
																<table class="table table-hover"> 
																	<thead>
																		<tr> 
																			<th>#</th> 
																			<th>Photo</th> 
																			<th>Teacher Name</th> 
																			<th>Subject</th>
																			<th>Email</th> 
																			<th>Time</th>
																		</tr> 
																	</thead> 
																	<tbody>
															<?php 
															$st_grade = $student_name_display['st_grade'];
															$sn = 1;
															$teacher_info_in_student = $ravi->teacher_info_instudent($st_grade);
																while($t_info = $teacher_info_in_student->fetch_assoc())		{ 
																?>
																		
																		<tr>
																			<th scope="row"><?php echo $sn; ?></th>
																			<td></td>
																			<td><?php echo ucwords($t_info['t_fullname']); ?></td> 
																			<td><?php echo ucwords($t_info['subject_name']); ?></td> 
																			<td><a href="mailto:t_email"><?php echo strtolower($t_info['t_email']); ?></a></td> 
																			<td><?php echo $t_info['time']; ?></td>
																		</tr> 
                                                                        
																		<?php $sn++; } ?>
																	</tbody> 
																</table>
															</div>
												
													</div>
											
										
										</section>
										<section id="section-4">
											<div class="graph">
											<div class="tables">
															
																<table class="table table-hover"> 
																	<thead>
																		<tr> 
																			<th>#</th> 
																	 
																			<th>Teacher Name</th> 
																			<th>Subject</th>
																			
																		</tr> 
																	</thead> 
																	<tbody>
															<?php 
															$st_grade = $student_name_display['st_grade'];
															$sn = 1;
															$teacher_info_in_student = $ravi->teacher_info_instudent($st_grade);
																while($t_info = $teacher_info_in_student->fetch_assoc())		{ 
																		?>
																		
																		<tr>
																			<th scope="row"><?php echo $sn; ?></th>
																		
																			<td><?php echo ucwords($t_info['t_fullname']); ?></td> 
																			<td><?php echo ucwords($t_info['subject_name']); ?></td> 
																			
																		</tr> 
																		<?php $sn++; } ?>
																	</tbody> 
																</table>
															</div>
											</div>
										</section>
											
                                                <section id="section-5">    
                                            <?php 
                                                $st_id = $student_name_display['st_id'];
                                                //echo $st_id;
                                            ?>
                                                   <p><strong> Results for <?php echo ucfirst($student_name_display['st_fullname']); ?>. In grade <?php    echo ucfirst($student_name_display['st_grade']); ?>.</strong>
												</p>
								                 <!--Get Student marks-->
                                            <?php 
															
															$sn = 0;
															$student_Term_One = $ravi->student_marks_term( $st_id);
																while($st_res = $student_Term_One->fetch_assoc())		{ 
                                                                    //Get all three elements subject mark and term.
                                                                    $subjectName[$sn] = ($st_res['subject_name']);
                                                                    $mark[$sn] = ($st_res['mark']);
                                                                    $term[$sn] = ($st_res['term']);
                                                                    $sn++;
                                                                } 
                                            ?>
                                            
                                            
                                            <table class="table table-hover"> 
                                                
                                                <?php
                                                $subjectName[$sn] = ($st_res['subject_name']);
                                                $term[$sn] = ($st_res['term']);
                                                 $rowNumber = count($subjectName);
                                                 $sn = 0;
                                                //echo
                                                     echo "<thead>
															<tr> 
															<th>#</th> 
                                                            <th>Subject </th>
															<th>Minimum Pass Mark</th> 
															<th>Term 1 %</th>
                                                            <th>Term 2 %</th>
                                                            <th>Term 3 %</th>
															</tr> 
															</thead> 
															<tbody>";
                                                    for($i = 0 ; $i <$rowNumber ; $i++){ ?>
                                                        <?php
                                                        echo "<tr> \n
                                                                <th scope=\"row\">";
                                                        echo $sn+1;
                                                        echo "</th>
																    <td>";
                                                        //echo ("Subjects");
                                                        echo implode(', ', (array)$subjectName[$sn]); 
                                                        echo        "</td> 
																    <td>50%</td>
                                                                    <td>";
                                                        //echo ("Term 1");
                                                        
                                                        if($term[$sn]==5 ){
                                                            echo implode(', ', (array)$mark[$sn]); 
                                                        }
                                                        echo        "</td>
                                                                    <td>";
                                                        //echo ("Term 2");
                                                        if($term[$sn]==6 ){
                                                            echo implode(', ', (array)$mark[$sn]); 
                                                        }
                                                        echo       "</td>
                                                                    <td>";
                                                        //echo ("Term 3");
                                                        if($term[$sn]==7 ){
                                                            echo implode(', ', (array)$mark[$sn]); 
                                                        }
                                                        echo       "</td>";
																	$sn++;
                                                        echo " </tr>";             
                                                          }
                                                     ?>
											</table>
											<div class="mediabox">
                                               
											</div>
											<div class="mediabox">

											</div>
											<div class="mediabox">

											</div>
										</section>
									</div>
									<!-- /content -->
								</div>
								<!-- /tabs -->

							</div>
							<script src="js/cbpFWTabs.js"></script>
							<script>
								new CBPFWTabs(document.getElementById('tabs'));
							</script>
							<div class="clearfix"> </div>
						</div>
					</div>
					<!--//tabs-inner-->


					
					<!--/charts-->
					<div class="charts">
						<div class="chrt-inner">
							<!--//weather-charts-->
							<div class="graph-visualization">
				
								<div class="col-md-6 map-2">
									<div class="profile-nav alt">
										<section class="panel">
											<div class="user-heading alt clock-row terques-bg">
												<h3 class="sub-tittle clock">Easy Clock </h3>
											</div>
											<ul id="clock">
												<li id="sec"></li>
												<li id="hour"></li>
												<li id="min"></li>
											</ul>



										</section>

									</div>
								</div>
								<div class="clearfix"> </div>
							</div>


						</div>
						<!--/charts-inner-->
					</div>
					<!--//outer-wp-->
				</div>
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
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.html"> <span id="logo"> <h1>Augment</h1></span> 
					<!--<img id="logo" src="" alt="Logo"/>--> 
				  </a>
			</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
			<div class="down">
				<a href="index.html"><img src="images/admin.jpg"></a>
				<a href="index.html"><span class=" name-caret"><?php echo $parent_name_display['fathername']; ?></span></a>
				<p>Parent</p>
				<ul>
					<li><a class="tooltips" href="index.html"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
					<li><a class="tooltips" href="index.html"><span>Settings</span><i class="lnr lnr-cog"></i></a></li>
					<li><a class="tooltips" href="logouts.php"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
				</ul>
			</div>
			<!--//down-->
			<div class="menu">
				<ul id="menu">
					<li><a href="index.html"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>

			
				

				
	
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
                                if($parent_name_display['image'] == ""){
                                        echo "<img width='100' height='100' src='images/pro/nophoto.png' alt='Default Profile Pic'>";
                                } else {
                                        echo "<img width='100' height='100' src='images/pro/".$parent_name_display['image']."' alt='Profile Pic'>";
                                }
                                
                        
                ?>
				 <br />
				 <br />
				 <input type="file" name="file">
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