<?php 

  
class project2
	
{
	public $server = "localhost";
	public $username = "root";
	public $password = "";
	public $dbname = "march9";
	public $connectdb;
	
	function __construct()
	{
		$this->connectdb = new mysqli($this->server,$this->username,$this->password,$this->dbname);
		if($this->connectdb->connect_error)
		{
			die("connection failed");
		}
	}
	
    public function hackme()
    {
        $this->connectdb = new mysqli($this->server,$this->username,$this->password,$this->dbname);
        return $this->connectdb;
    }
	public function student_login_check($st_username,$st_password)
	{ 
        //Get password from db
        $st_user_check = $this->student_info_select($st_username);
        $st_user_info = $st_user_check->fetch_assoc();
        $stored_password = $st_user_info['st_password'];     
        //Verify Password from DB
        $verified = $this->password_verification($st_password, $stored_password);
		return $verified;
	}

	public function student_info_select($st_username)
	{
		$student_info_sel = "select * from st_info where st_username='$st_username'";
		$student_info_run = $this->connectdb->query($student_info_sel);
		
		return $student_info_run;
	}
		
	
	/////////////////////////////// ADMINNNNNNNNNNNNNNNNN--------------------------
	
	public function meadmin_check($admin_username,$admin_password)
	{
        //Get password from DB
		
        $meadin_login_select = $this->meadmin_username($admin_username);
        $meadin_info = $meadin_login_select->fetch_assoc();
        $stored_password = $meadin_info['admin_password'];  
        //Verify Password from DB
        $verified = $this->password_verification($admin_password, $stored_password);
		return $verified;
	}
    
	public function meadmin_username($adminname)
	{
		$meadmin_username_select = "select * from meadmin where admin_username='$adminname'";
		$meadmin_username_run = $this->connectdb->query($meadmin_username_select);
		return $meadmin_username_run;
	}
    
    
    /////////////////////////////// TEACHER LOGIN INFO--------------------------
	
	public function teacher_check($teacher_username,$teacher_password)
	{
		
        //Get password from db
        $teacher_login_select = $this->teacher_username($teacher_username);
		$teacher_info = $teacher_login_select ->fetch_assoc();
        $stored_password = $st_user_info['t_pass']; 
            
        //Verify Password from DB
        $verified = $this->password_verification($teacher_password, $stored_password);
		return $verified;
	}
    
	public function teacher_username($teachername)
	{
		$teacher_username_select = "select * from teacher_info where t_username='$teachername'";
		$teacher_username_run = $this->connectdb->query($teacher_username_select);
		return $teacher_username_run;
	}
	
	//////////////////////////////////Teacher Info ////////////////////////////////
	public function teacher_info($adminname,$t_staff_type)
	{
		switch($t_staff_type)
		{
			case "Admin":
			$teacher_info_select = "select * from teacher_info where t_staff_type='$t_staff_type' AND t_username='$adminname'";
			break;
			case "Teacher":
			$teacher_info_select = "select * from teacher_info where t_staff_type='$t_staff_type' AND t_username='$adminname'";
			break;
			default :
				echo "no teacher found";
		}
		$teacher_info_select_run = $this->connectdb->query($teacher_info_select);
		return $teacher_info_select_run;
		
	
		
	}
	public function teacher_info_display_admin()
	{
		$teacher_info_admin = "select * from teacher_info";
		$teacher_info_admin_run = $this->connectdb->query($teacher_info_admin);
		return $teacher_info_admin_run;
	}
	///// display teacher info in  student panel
	public function teacher_info_instudent($st_grade)
	{
		$teacher_info_instudent_select = "select * from subjects_info where grade='$st_grade'";
		$teacher_info_instudent_run = $this->connectdb->query($teacher_info_instudent_select);
		return $teacher_info_instudent_run;
		
	}
	////////////////////////End Teacher Info ------------//////////////////////
	
	///////////////////////// student password update //////////
	
	public function student_password_change($st_password_update,$st_username)
	{
        $st_password_hashed = $this->password_hashing($st_password_update);
		$student_password_update = "update st_info set st_password='$st_password_hashed' where st_username='$st_username'";
		$student_password_update_run = $this->connectdb->query($student_password_update);
		return $student_password_update_run;
	}
	
	
	
	///////////////////------- end student password update --------------//////////////
	
	///////////////////-------- display subject in admin ----------------////////
	public function subject_info()
	{
		
		$subject_info_admin = "select * from subjects_info";
		$subject_info_admin_run = $this->connectdb->query($subject_info_admin);
		return $subject_info_admin_run;
	}
	
	////////////  edit teacher information ////////////////////
	
	public function edit_teacherid($teacher_id)
	{
		$edit_teacherid = "select * from teacher_info where t_id='$teacher_id'";
		$edit_teacherid_run = $this->connectdb->query($edit_teacherid);
		return $edit_teacherid_run;
	}

	////////////  edit student information ////////////////////

	public function edit_studentid($st_id)
	{
		$edit_studentid = "select * from st_info where st_id='$st_id'";
		$edit_studentid_run = $this->connectdb->query($edit_studentid);
		return $edit_studentid_run;
	}

	public function update_student_info($up_st_fullname,$up_st_username,$up_st_password,$up_st_grade,$up_st_rollno,$up_st_dob,$up_st_address,$up_st_distcrict,$up_st_gender,$up_st_father,$up_st_mother,$up_st_parent_contact,$studentid)
	{
		$update_student_info_select = "update st_info set st_fullname='$up_st_fullname',st_username='$up_st_username',st_password='$up_st_password',st_grade='$up_st_grade',roll_no='$up_st_rollno',st_dob='$up_st_dob',st_address='$up_st_address',st_district='$up_st_distcrict',st_gender='$up_st_gender',st_father='$up_st_father',st_mother='$up_st_mother',st_parents_contact='$up_st_parent_contact' where st_id='$studentid'";
		$update_student_info_run = $this->connectdb->query($update_student_info_select);
		return $update_student_info_run;
	}

	///////////////// update teacher info from admin/////////////
	public function update_teacher_info($up_fullname,$up_address,$up_email,$up_father,$up_mother,$up_dob,$up_qualification,$up_contact,$up_staff,$up_gender,$teacher_id)
	{
		$update_teacher_info_select = "update teacher_info set t_fullname='$up_fullname',t_address='$up_address',t_email='$up_email',t_father='$up_father',t_mother='$up_mother',t_dob='$up_dob',t_qualification='$up_qualification',t_contact='$up_contact',t_staff_type='$up_staff',t_gender='$up_gender' where t_id='$teacher_id'";
		$update_teacher_info_run = $this->connectdb->query($update_teacher_info_select);
		return $update_teacher_info_run;
	}
	
	////////// add new teacher form admin ////////////////////////
	public function add_teacher($add_t_fullname,$add_t_address,$add_t_email,$add_t_username,$add_t_pass,$add_t_father,$add_t_mother,$add_t_dob,$add_t_qualification,$add_t_contact,$add_t_staff,$add_t_gender)
	{
	$add_teacher = "insert into teacher_info(t_fullname,t_address,t_email,t_username,t_pass,t_father,t_mother,t_dob,t_qualification,t_contact,t_staff_type,t_gender) value('$add_t_fullname','$add_t_address','$add_t_email','$add_t_username','$add_t_pass','$add_t_father','$add_t_mother','$add_t_dob','$add_t_qualification','$add_t_contact','$add_t_staff','$add_t_gender')";
	$add_teacher_run = $this->connectdb->query($add_teacher);
		return $add_teacher_run;
	}
	
	//////// delete teacher form admin //////////////////////
	public function delete_teacher($del_teacher)
	{
	$delete_teacher_info = " delete from teacher_info where t_id='$del_teacher'";
	$delete_teacher_info_run = $this->connectdb->query($delete_teacher_info);
	return $delete_teacher_info_run;
	}
	////////////////////// looping class from subject info table////////////////
	public function grade($grade)
	{
		$grade_select = "select class from sub_class_name";
		$grade_run = $this->connectdb->query($grade_select);
		return $grade_run;
	}
	
	///////////// display data from st_info select st-grade ///////////
	public function grade_st_info($grade_st_data)
	{
		$grade_st_info_select = "select * from st_info where st_grade='$grade_st_data'";
		$grade_st_info_run = $this->connectdb->query($grade_st_info_select);
		return $grade_st_info_run;
	}
	////////// student info display by admin //////////////////////////
	public function student_info_display_admin($class_students_data)
	{
		$student_info_display_admin_select = "select * from st_info where st_grade='$class_students_data'";
		$student_info_display_admin_run = $this->connectdb->query($student_info_display_admin_select);
		return $student_info_display_admin_run;
	}
	/////////// add student from admin panel /////////////////////
	public function add_student($std_fullname,$std_username,$std_password,$std_grade,$std_roll,$std_dob,$std_address,$std_district,$std_gender,$std_father,$std_mother,$std_parent_contact)
	{
		$add_student_insert = "insert into st_info(st_fullname,st_username,st_password,st_grade,roll_no,st_dob,st_address,st_district,st_gender,st_father,st_mother,st_parents_contact) value('$std_fullname','$std_username','$std_password','$std_grade','$std_roll','$std_dob','$std_address','$std_district','$std_gender','$std_father','$std_mother','$std_parent_contact')";
		$add_student_run = $this->connectdb->query($add_student_insert);
		return $add_student_run;
	}
	
	///////////// General Information about website ///////////
	public function general_setting($web_name,$web_address,$web_phone1,$web_phone2,$web_email1,$web_email2,$web_start,$web_about)
	{
		$general_setting_insert = "insert into general_setting(website_name,website_address,website_phone1,website_phone2,website_email1,website_email2,website_start,web_about) value('$web_name','$web_address','$web_phone1','$web_phone2','$web_email1','$web_email2','$web_start','$web_about')";
		$general_setting_run = $this->connectdb->query($general_setting_insert);
		return $general_setting_run;
	}
	public function general_setting_check()
	{
		$general_setting_check = "select * from general_setting";
		$general_setting_run = $this->connectdb->query($general_setting_check);
		return $general_setting_run;
	}
	public function general_setting_update($upweb_name,$upweb_address,$upweb_phone1,$upweb_phone2,$upweb_email1,$upweb_email2,$upweb_start,$upweb_about)
	{
		$update_general_setting = "update general_setting set website_name='$upweb_name',website_address='$upweb_address',website_phone1='$upweb_phone1',website_phone2='$upweb_phone2',website_email1='$upweb_email1',website_email2='$upweb_email2',website_start='$upweb_start',web_about='$upweb_about'";
	 $update_general_run = $this->connectdb->query($update_general_setting);
		return $update_general_run;
	}
	public function meravi_add_table($Nepdev_table_Name,$Nepdev_student_name,$Nepdev_student_grade,$Nepdev_subject1,$Nepdev_subject2,$Nepdev_subject3,$Nepdev_subject4,$Nepdev_subject5,$Nepdev_subject6,$Nepdev_subject7,$Nepdev_subject8,$Nepdev_subject9,$Nepdev_subject10,$Nepdev_subject11)
	{
		$Meravi_database = "CREATE TABLE $Nepdev_table_Name(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,$Nepdev_student_name varchar(250) Null,$Nepdev_student_grade varchar(10) null,$Nepdev_subject1 varchar(250) null,$Nepdev_subject2 varchar(250) null,$Nepdev_subject3 varchar(250) null,$Nepdev_subject4 varchar(250) null,$Nepdev_subject5 varchar(250) null,$Nepdev_subject6 varchar(250) null,$Nepdev_subject7 varchar(250) null,$Nepdev_subject8 varchar(250) null,$Nepdev_subject9 varchar(250) null,$Nepdev_subject10 varchar(250) null,$Nepdev_subject11 varchar(250) null)";
		$Meravi_run = $this->connectdb->query($Meravi_database);
		return $Meravi_run;
	}
	public function Nepdev_Exam_Term($Nepdev_exam_term)
	{
		$Nepdev_Select = "SELECT * FROM exam_term where name='$Nepdev_exam_term'";
		$Nepdev_Run = $this->connectdb->query($Nepdev_Select);
		if($Nepdev_Run->num_rows>0)
		{
			echo "<script>alert('You Have ALready Added $Nepdev_exam_term');</script>";
		}
		else
		{
			$Nepdev_Add = "INSERT INTO exam_term(name) VALUES('$Nepdev_exam_term')";
			$Nedev_Add_Run = $this->connectdb->query($Nepdev_Add);
			if($Nedev_Add_Run==true)
			{
				echo "<script>alert('Success Added $Nepdev_exam_term');</script>";
				}
			}
			return 	$Nepdev_Run;
	}
    /////////////////////////Start of Student Reports///////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////Prototyping//////////////////////////////////////////////////////////////////

    public function find_student_class_enrollment($st_id){
        $studentClassEnrollment = "SELECT `sccode` FROM `student_class_enrol` WHERE `scode`='$st_id'";
        $studentClassEnrollment_run = $this->connectdb->query($studentClassEnrollment);
        return $studentClassEnrollment_run;
    }
    
    public function get_subject_code($stdClassEnrollment){      
        $getSubjectCode = "SELECT `sccode`,`subject` FROM `student_subject_enrol` WHERE `sccode` ='$stdClassEnrollment'";
        $getSubjectCode_run = $this->connectdb->query($getSubjectCode);
        return $getSubjectCode_run;
    }
    public function get_subject_description ($subjectCode){
                $getSubjectDescript = "SELECT `subject_name` FROM `subjects_info` WHERE `id` = '$subjectCode'";
                $getSubjectDescript_run = $this->connectdb->query($getSubjectDescript);
            
            return $getSubjectDescript_run;
        }        
    /*public function student_term_marks($studentClassEnrollment, $subjectCode ,$term)
	{      try
            { 
                $student_term_report = "select `mark` from marks where ssecode='$studentClassEnrollment' and subject_code ='$subjectCode' and term = '$term'";
                $student_term_report_run = $this->connectdb->query($student_term_report);
                return $student_term_report_run;
            }
            catch (SomeException $e){
                //ignore errors             
            }
	      
    }*/
    //Get all students results
    public function student_marks_all( $st_id){
        $student_term_report = "SELECT mark as mark, C.subject_name,E.st_fullname, term FROM mark as A inner join student_subject_enrol B on A.ssecode=B.scecode inner join subjects_info C on B.subject=C.id inner join student_class_enrol D on D.sccode=B.sccode inner join st_info E on D.scode=E.st_id WHERE E.st_id ='$st_id' ORDER BY C.subject_name, term";
                $student_term_report_run = $this->connectdb->query($student_term_report);
                return $student_term_report_run;
        
    }
    //Get mark per student, per subject, per term.
    public function student_marks_selected($st_id, $subjectName, $term){
        $student_mark_report = "SELECT mark FROM mark as A inner join student_subject_enrol B on A.ssecode=B.scecode inner join subjects_info C on B.subject=C.id inner join student_class_enrol D on D.sccode=B.sccode inner join st_info E on D.scode=E.st_id WHERE E.st_id ='$st_id' AND C.subject_name='$subjectName' AND term='$term' ORDER BY C.subject_name, term";
        $student_mark_run = $this->connectdb->query($student_mark_report);
        $i = 0;
        while($mark_res = $student_mark_run->fetch_assoc()){ 
            //Get one mark for a subject, for a term and if there are multiple overwrite prior results with the last entered.
            $mark = $mark_res['mark'];
        }
        if(isset($mark)) return $mark;  
        else return "N/A";
    }
    public function count_student_marks($st_id){
      $student_term_report_count ="  SELECT COUNT(*) FROM mark as A inner join student_subject_enrol B on A.ssecode=B.scecode inner join subjects_info C on B.subject=C.id inner join student_class_enrol D on D.sccode=B.sccode inner join st_info E on D.scode=E.st_id WHERE E.st_id ='$st_id'";
        $student_term_report_count_run = $this->connectdb->query($student_term_report_count);
        return $student_term_report_count_run;
        
    }
    
    ///////////////////////////////////////Utilities////////////////////////////////////////////////////////////////////
       function array_implode(array $a)
    {//type hint: this function will only work if $a is an array
        return implode(',',(array)$a);
    }
    //Alert function for debugging and activity tracing
    function phpAlert($msg) {
        echo "<script>alert('PHP Alert: $msg');</script>";
        //return $msg;
    }
    //Hash Passwords
    function password_hashing($password){
        $options = ['cost' => 12,];
        $hashed_password = password_hash($password, PASSWORD_BCRYPT, $options);
        return $hashed_password;
        
    }
    //Verifies passwords, returns 1 if password is found.
    function password_verification($userinput,$stored_password){
        $verified = password_verify($userinput,$stored_password);
        return $verified;
    }
    //Salt function for future improvements on the storage of other data and additional passwords security
    function salt_password(){
        $salt = md5('quick salt');
        return $salt;
    }
    //Encrypt any sensitive data
    function ssl_encrypt_password($plaintext){
        //Encryption relies on AES 256.
        $method = 'aes-256-cbc';
        $key = openssl_random_pseudo_bytes(16);
        $iv = openssl_random_pseudo_bytes(16);
        //Open SSL Encrypt the plaintext using aes 256, the random keys and the internilization vector
        $cipherText = openssl_encrypt($plaintext, $method, $key, 0, $iv);
        $cipherText = $key.$iv.$cipherText;//Adds key and iv to the cipher.
        $cipherText = base64_encode($cipherText);
        return $cipherText;
        
    }
    //Decrypt data
    function ssl_decrypt_password($cipherText){
        //Decryption
        $cipher = base64_decode($cipherText);
        $method = 'aes-256-cbc';
        $key = substr($cipher, 0, 16);//Gets key from cipher substring
        $iv = substr($cipher, 16, 16);//Gets IV from cipher substring
        $cipher = substr($cipher, 32);
        $readableText = openssl_decrypt($cipher, $method, $key, 0, $iv);
        return $readableText;
    }
    //Update all passwords to encrypted passwords
    function update_to_encrypted($pk ,$column,$table){
        //Uncomment this when mass update is needed otherwise leave closed as it may cause unnecessary problems
        /*$counter = 0;
        
        $table_info_developer = "select * from $table";//Example is: select * from st_info
		$table_info_developer_run = $this->connectdb->query($table_info_developer);
        if($table_info_developer_run->num_rows>0){
            while($row=$table_info_developer_run->fetch_assoc()){
                
                $password_to_hash = $row["$column"];
                $primary_key = $row["$pk"];
                $this->phpAlert("Student Password: ". $password_to_hash);
                
                $hashed_update = $this->password_hashing($password_to_hash);
                //$this->phpAlert("Hashed Student Password: ". $hashed_update);
               
                $columnVal = 'abc'.$counter;
                $this->phpAlert("PK: ". $primary_key." and ColVal: ".$hashed_update. " and counter: ".$counter);
                //$update_sql = "UPDATE $table SET $column = '$hashed_update' WHERE $pk = $counter";
                //$this->phpAlert("QUERY $update_sql Update Successful");
                $update_sql_run = $this->connectdb->query($update_sql);
                //$this->phpAlert("$primary_key Update Successful");   
                $counter++;
            }
        }*/
        
    }
 
    ///////////////////////////////////////End of prototype/////////////////////////////////////////////////////////////


/////////////////////////End of Student Reports////////////////////////////////////////////////////////////////////////////////////////////////

    
    
    
    
    
    
    
    
    
    
    
	}
$ravi = new project2;
