	<div class="outter-wp">
									<!--sub-heard-part-->
									  <div class="sub-heard-part">
									   <ol class="breadcrumb m-b-0">
											<li><a href="index.html">Home</a></li>
											<li class="active"><?php if(isset($_GET['ravi'])){ echo strtoupper($page=$_GET['ravi']); } ?></li>
										</ol>
									   </div>
								  <!--//sub-heard-part-->
									<div class="graph-visual tables-main">
											<h2 class="inner-tittle"><?php echo strtoupper($_GET['ravi']); ?></h2>
												
											<form method="post">
								<select name="class_students_data" id="selector1" class="form-control1">
							<option>Select Class</option>
													<?php 
												$opt = $ravi->grade($grade);
													while($op=$opt->fetch_assoc())
													{
														
													
													?>
												
							<option value="<?php echo $op['class']; ?>"><?php echo $op['class']; ?></option>
													<?php }?>
											
							</select>
								<input type="submit" name="students_info" class="btn red" value="View Class Data">
                                <input type="submit" name="enter_grade_info" class="btn red" value="Enter Grade Data">
                                <input type="submit" name="view_subject_info" class="btn red" value="View Subject Data">
									</form>	
										<?php
										
										if(isset($_POST['students_info']))
										{
											$class_students_data = $_POST['class_students_data'];
										$student_dis_admin=	$ravi->student_info_display_admin($class_students_data);
											$s_sn = 1;
														
										
										?>
										
										
															  <div class="graph">
															<div class="tables">
														
															<table id="dataTableID" class="table table-striped" cellspacing="0" width="100%">
															 
																	<thead>
																		<tr>
																			<th>#</th>
																			<th>Photo</th> 
																			<th>F.Name</th> 
																			<th>Address</th>
																			<th>U.Name</th>
																			<th>Pass</th>
																			<th>Father</th>
																			<th>Mother</th>
																			<th>DOB</th>
																			<th>Grade</th>
																			<th>Contact</th>
																			<th>Gender</th>
																			<th>Action</th>
																		</tr>
																	</thead>
																	<tbody> 
																		
										
												
														
													
															<?php 
											 if($student_dis_admin->num_rows>0){
												 
											 
											while($student_info_admin =$student_dis_admin->fetch_assoc())					{ ?>						
																
														<tr>
																	<td><?php echo $s_sn; ?></td>
															<td></td>
															<td><?php echo $student_info_admin['st_fullname']; ?></td>
															<td><?php echo $student_info_admin['st_address']; ?></td>
															<td><?php echo $student_info_admin['st_username']; ?></td>
															<td><?php echo $student_info_admin['st_password']; ?></td>
															<td><?php echo $student_info_admin['st_father']; ?></td>
															<td><?php echo $student_info_admin['st_mother']; ?></td>
															<td><?php echo $student_info_admin['st_dob']; ?></td>
															<td><?php echo $student_info_admin['st_grade'] ?></td>
															<td><?php echo $student_info_admin['st_parents_contact']; ?></td>
															<td><?php echo $student_info_admin['st_gender']; ?></td>
															<td>

															<a href="home.php?ravi=student-editnow&studentid=<?php echo $student_info_admin['st_id']; ?>" class="btn red">Edit</a>
															
															</td>
														</tr>
																<?php $s_sn++; }} else {
										 ?>
																		<td colspan="12">No any Students information found
																			</td>
																		<?php 
										} }  ?>
																	</tbody> 
															
																</table> 
															</div>
													</div>
																
											
										</div>
										<!--//graph-visual-->
									</div>