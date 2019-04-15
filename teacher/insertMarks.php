<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "march9");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$st_fullname = mysqli_real_escape_string($link, $_REQUEST['st_fullname']);
$student_grade = mysqli_real_escape_string($link, $_REQUEST['student_grade']);
$english = mysqli_real_escape_string($link, $_REQUEST['english']);
$english2 = mysqli_real_escape_string($link, $_REQUEST['english2']);
$math = mysqli_real_escape_string($link, $_REQUEST['math']);
$math2 = mysqli_real_escape_string($link, $_REQUEST['math2']);
$Social = mysqli_real_escape_string($link, $_REQUEST['Social']);
$Health = mysqli_real_escape_string($link, $_REQUEST['Health']);
$GK = mysqli_real_escape_string($link, $_REQUEST['GK']);
$Computer = mysqli_real_escape_string($link, $_REQUEST['Computer']);
$Science = mysqli_real_escape_string($link, $_REQUEST['Science']);
$Nepali = mysqli_real_escape_string($link, $_REQUEST['Nepali']);
$term = mysqli_real_escape_string($link, $_REQUEST['term']);
 
// Attempt insert query execution
$sql = "INSERT INTO result (st_fullname, student_grade, english,english2,math,math2,Social,Health,GK,Computer,Science,Nepali,term) VALUES ('$st_fullname', '$student_grade', '$english', '$english2', '$math', '$math2', '$Social', '$Health', '$GK', '$Computer', '$Science', '$Nepali', '$term')";
if(mysqli_query($link, $sql)){
    echo "Marks added successfully.";
} else{
    echo "ERROR: Could not execute $sql. " . mysqli_error($link);
    echo "<script>window.location= 'home.php';</script>";
    
}
 
// Close connection
mysqli_close($link);
?>s