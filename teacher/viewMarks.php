<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style
    </head>
<body>

<table id="Marks">

<table border='1'>
	<tr>
               <th> Student Name</th>
               <th>Student Grade</th>
               <th>English</th>
                <th>English2</th>
                <th>Math</th>
               <th>Math2</th>
               <th>Social</th>
               <th>Health</th>
               <th>GK</th>
               <th>Computer</th>
               <th>Science</th>
               <th>Napali</th>
               <th>Term</th>
               <th>Update</th>
               <th>Delete</th>
           </tr>

<?php 

$conn = mysqli_connect("localhost", "root", "", "march9");

$sql_query = mysqli_query($conn,"SELECT * FROM result");

while($fetch_result  = mysqli_fetch_assoc($sql_query))
{?>


<tr>
		<td><?php echo $fetch_result['st_fullname']; ?></td>
		<td><?php echo $fetch_result['student_grade']; ?></td>
		<td><?php echo $fetch_result['english']; ?></td>
		<td><?php echo $fetch_result['english2']; ?></td>
    
         <td><?php echo $fetch_result['math']; ?></td>
		<td><?php echo $fetch_result['math2']; ?></td>
		<td><?php echo $fetch_result['Social']; ?></td>
		<td><?php echo $fetch_result['Health']; ?></td>
    
        <td><?php echo $fetch_result['GK']; ?></td>
		<td><?php echo $fetch_result['Computer']; ?></td>
		<td><?php echo $fetch_result['Science']; ?></td>
		<td><?php echo $fetch_result['Nepali']; ?></td>
        <td><?php echo $fetch_result['term']; ?></td>
    
		<td><a href="update.php?id=<?php echo $fetch_result['id']; ?>">Update</a></td>
		<td><a href="delete.php?id=<?php echo $fetch_result['id']; ?>">Delete</a></td>
</tr>	
    


<?php } ?> 

	
</table>