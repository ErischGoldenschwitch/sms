


<div class="forms-main">
	
	<div class="graph-form">
		<div class="validation-form">
			<!---->
			<h2 align="center"><?php echo strtoupper($_GET['ravi']); ?></h2>
			
			
			<?php 
	
			
 if(isset($_POST['update_general_setting']))
 {

	 $upweb_student_name = $_POST['upweb_student_name'];
	 $upweb_student_grade = $_POST['upweb_student_grade'];
	 $upweb_english = $_POST['upweb_english'];
	 $upweb_english2 = $_POST['upweb_english2'];
	 $upweb_math = $_POST['upweb_math'];
	 $upweb_math2 = $_POST['upweb_math2'];
	 $upweb_Social = $_POST['upweb_Social'];
	 $upweb_Health = $_POST['upweb_Health'];
     $upweb_GK = $_POST['upweb_GK'];
	 $upweb_Computer = $_POST['upweb_Computer'];
	 $upweb_Science = $_POST['upweb_Science'];
	 $upweb_Nepali = $_POST['upweb_Nepali'];
	 $upweb_term = $_POST['upweb_term'];
     
     
 
	 
	 	$upweb_info_success = $ravi->update_marks($upweb_student_name,$upweb_student_grade,$upweb_english,$upweb_english2,$upweb_math,$upweb_math2,$upweb_Social,$upweb_Health,$upweb_GK,$upweb_Computer,$upweb_Science,$upweb_Nepali,$upweb_term);
	 if($upweb_info_success==true)
	 {
		 echo "<script>alert('Success Update marks Thank You.....');</script>";
		 echo "<script>window.location= 'home.php';</script>";
	 }
	 else
	 {
		 echo "<script>alert('Please contact with devloper for fixing this problem or try later');</script>";
	 }
	  

	 
	 
 }
            
            
            
	        $dis_marks_data = $ravi->marks_update_check();
			$display_marks_update = $dis_marks_data->fetch_assoc();			
			
?>
			
			<form method="post">
					<div class="col-md-12 form-group1 group-mail">
					<label class="control-label">Student Name</label>
					<input type="text" value="<?php echo $display_marks_data['student_name']; ?>" name="upweb_student">
				</div>
				<div class="vali-form">
				
					
					<div class="col-md-6 form-group1 form-last">
						<label class="control-label">Student Grade</label>
						<input type="text" value="<?php echo $display_marks_data['student_grade']; ?>" name="upweb_student_grade">
					</div>
					
						<div class="col-md-6 form-group1">
						<label class="control-label">English</label>
						<input type="text" value="<?php echo $display_marks_data['english']; ?>" name="upweb_enlish">
					</div>
			
					<div class="clearfix"> </div>
					<div class="col-md-6 form-group1">
						<label class="control-label">Enlish2</label>
						<input type="text" value="<?php echo $display_marks_data['english2']; ?>" name="upweb_english2">
					</div>
					<div class="col-md-6 form-group1 form-last">
						<label class="control-label">math</label>
						<input type="text" value="<?php echo $display_marks_data['math']; ?>" name="upweb_math">
					</div>
					<div class="col-md-6 form-group1">
						<label class="control-label">Math2</label>
						<input type="text" value="<?php echo $display_marks_data['math2']; ?>" name="upweb_math2">
					</div>
					<div class="col-md-6 form-group1 form-last">
						<label class="control-label">Social</label>
						<input type="text" value="<?php echo $display_marks_data['Social']; ?>" name="upweb_Social">
					</div>   
                    <div class="clearfix"> </div>
					<div class="col-md-6 form-group1">
						<label class="control-label">Health</label>
						<input type="text" value="<?php echo $display_marks_data['health']; ?>" name="upweb_Health">
					</div>
					<div class="col-md-6 form-group1 form-last">
						<label class="control-label">GK</label>
						<input type="text" value="<?php echo $display_marks_data['GK']; ?>" name="upweb_GK">
					</div>
					<div class="col-md-6 form-group1">
						<label class="control-label">Computer</label>
						<input type="text" value="<?php echo $display_general_setting['Computer']; ?>" name="upweb_Computer">
					</div>
					<div class="col-md-6 form-group1 form-last">
						<label class="control-label">Science</label>
						<input type="text" value="<?php echo $display_marks_data['Science']; ?>" name="upweb_Science">
					</div>
                    
                    <div class="col-md-6 form-group1">
						<label class="control-label">Neptali</label>
						<input type="text" value="<?php echo $display_marks_data['Neptali']; ?>" name="upweb_Neptali">
					</div>
					<div class="col-md-6 form-group1 form-last">
						<label class="control-label">Term</label>
						<input type="text" value="<?php echo $display_marks_data['term']; ?>" name="upweb_term">
					</div>
				
					<div class="col-md-12 form-group1 form-last">
						<label class="control-label">About Us</label>
							<textarea name="upweb_about" id="txtarea1" cols="50" rows="4" class="form-control1" data-gramm="true" data-txt_gramm_id="ca81ed2e-db8f-f21e-8724-3b682fade546" data-gramm_id="ca81ed2e-db8f-f21e-8724-3b682fade546" spellcheck="false" data-gramm_editor="true" style="z-index: auto; position: relative; line-height: 19.4286px; font-size: 13.6px; transition: none; background: transparent !important;"><?php echo $$display_marks_data['web_about']; ?></textarea>
					</div>
					
				</div>
					<div class="clearfix"> </div>
				<div class="col-md-12 form-group button-2">
					<input type="submit" class="btn btn-primary" value="Update Website Info" name="update_general_setting">
				
				</div>
				<div class="clearfix"> </div>
			</form>

			<!---->
		</div>

	</div>
</div>
<!--//forms-->