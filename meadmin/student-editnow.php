<?php 

$st_id = $_GET['studentid'];
$edit_st_info = $ravi->edit_studentid($st_id);
$edit_st_display = $edit_st_info->fetch_assoc();


if(isset($_POST['up_student']))
{
	
	
	$up_st_fullname = $_POST['up_st_fullname'];
	$up_st_username = $_POST['up_st_username'];
	$up_st_password = $_POST['up_st_password'];
	$up_st_grade = $_POST['up_st_grade'];
	$up_st_rollno = $_POST['up_st_rollno'];
	$up_st_dob = $_POST['up_st_dob'];
	$up_st_address = $_POST['up_st_address'];
	$up_st_distcrict = $_POST['up_st_distcrict'];
	$up_st_gender = $_POST['up_st_gender'];
	$up_st_father = $_POST['up_st_father'];
	$up_st_mother = $_POST['up_st_mother'];
	$up_st_parent_contact = $_POST['up_st_parent_contact'];
	
	$update_done = $ravi->update_student_info($up_st_fullname,$up_st_username,$up_st_password,$up_st_grade,$up_st_rollno,$up_st_dob,$up_st_address,$up_st_distcrict,$up_st_gender,$up_st_father,$up_st_mother,$up_st_parent_contact,$st_id);
	if($update_done==true)
	{
		echo "<script>window.location='home.php?ravi=student-information';</script>";
	}
	else
	{
		echo "<script>alert('Cant update Information');</script>";
	}
	

}

?>
<div class="outter-wp">
	<!--sub-heard-part-->
	<div class="sub-heard-part">
		<ol class="breadcrumb m-b-0">
			<li><a href="index.html">Home</a></li>
			<li class="active">
				<?php if(isset($_GET['ravi'])){ echo strtoupper($page=$_GET['ravi']); } ?>
			</li>
		</ol>
	</div>
	<!--//sub-heard-part-->
	<div class="graph-visual tables-main">
		<h2 class="inner-tittle">
			<?php echo strtoupper($_GET['ravi']); ?>
		</h2>

		<div class="grid-1">
			<div class="form-body">
				<form class="form-horizontal" method="post">
					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Full Name</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_fullname" value="<?php echo $edit_st_display['st_fullname']; ?>"> </div>
					</div>

					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Username</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_username" value="<?php echo $edit_st_display['st_username']; ?>"> </div>
					</div>

					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_password" value="<?php echo $edit_st_display['st_password']; ?>"> </div>
					</div>
					
					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Grade</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_grade" value="<?php echo $edit_st_display['st_grade']; ?>"> </div>
					</div>
					
					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Roll Number</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_rollno" value="<?php echo $edit_st_display['roll_no']; ?>"> </div>
					</div>

					<div class="form-group"> <label for="address" class="col-sm-2 control-label">DOB</label>
						<div class="col-sm-9"> <input type="text" class="form-control" name="up_st_dob" value="<?php echo $edit_st_display['st_dob']; ?>"> </div>
					</div>
					
					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">Street Address</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_address" value="<?php echo $edit_st_display['st_address']; ?>"> </div>
					</div>
					
					<div class="form-group"> <label for="inputEmail3" class="col-sm-2 control-label">District</label>
						<div class="col-sm-9"> <input type="text" class="form-control" id="inputEmail3" name="up_st_distcrict" value="<?php echo $edit_st_display['st_district']; ?>"> </div>
					</div>

					<div class="form-group">

						<select id="selector1" class="form-control1" name="up_st_gender">
							<option value="<?php echo $edit_st_display['st_gender']; ?>">Select Gender</option>
								<option>Male</option>
								<option>Female</option>
						</select>

					</div>

					<div class="form-group"> <label for="address" class="col-sm-2 control-label">Father</label>
						<div class="col-sm-9"> <input type="text" class="form-control" name="up_st_father" value="<?php echo $edit_st_display['st_father']; ?>"> </div>
					</div>

					<div class="form-group"> <label for="address" class="col-sm-2 control-label">Mother</label>
						<div class="col-sm-9"> <input type="text" class="form-control" name="up_st_mother" value="<?php echo $edit_st_display['st_mother']; ?>"> </div>

					</div>

					<div class="form-group"> <label for="address" class="col-sm-2 control-label">Contact</label>
						<div class="col-sm-9"> <input type="text" class="form-control" name="up_st_parent_contact" value="<?php echo $edit_st_display['st_parents_contact']; ?>"> </div>

					</div>

					<div class="col-sm-offset-2"> <button type="submit" class="btn btn-default" name="up_student">Update Student Profile</button> </div>
				</form>
			</div>

		</div>


	</div>