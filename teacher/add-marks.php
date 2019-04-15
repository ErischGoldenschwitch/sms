<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<title>Add Student Marks</title>
</head>
<body>
    
    <h3>Add Student Marks</h3>
    
    <div class="container">
<form action="insertMarks.php" method="post">
    <p>
        <label for="st_fullname">Student Name</label>
        <input type="text" name="st_fullname" id="st_fullname">
    </p>
    
    <p>
      <label for="StudentGrade">Student Grade</label>
      <select id="student_grade" name="student_grade">
      <option value="1">Grade 1</option>
      <option value="2">Grade 2</option>
      <option value="3">Grade 3</option>
      <option value="4">Grade 4</option>
      <option value="5">Grade 5</option>
      <option value="6">Grade 6</option>
      <option value="7">Grade 7</option>
      <option value="8">Grade 8</option>
      <option value="9">Grade 9</option>
      <option value="10">Grade 10</option>
      <option value="11">Grade 11</option>
      <option value="12">Grade 12</option>
    </select>
        
    </p>
    
    <p>
        <label for="english">English</label>
        <input type="text" name="english" id="english">
    </p>
    <p>
        <label for="english2">English2</label>
        <input type="text" name="english2" id="english2">
    </p>
    <p>
        <label for="math">Math</label>
        <input type="text" name="math" id="math">        
    </p>
    
    <p>
        <label for="math">Math2</label>
        <input type="text" name="math2" id="math2">        
    </p>
    
    <p>
        <label for="Social">Social</label>
        <input type="text" name="Social" id="Social">        
    </p>
    
    <p>
        <label for="Health">Health</label>
        <input type="text" name="Health" id="Health">        
    </p>
    
    <p>
        <label for="GK">GK</label>
        <input type="text" name="GK" id="GK">        
    </p>
    
    <p>
        <label for="Computer">Computer</label>
        <input type="text" name="Computer" id="Computer">        
    </p>
    
    <p>
        <label for="Science">Science</label>
        <input type="text" name="Science" id="Science">        
    </p>
    
    <p>
        <label for="Nepali">Nepali</label>
        <input type="text" name="Nepali" id="Nepali">        
    </p>
    
    <p>
        <label for="term">term</label> 
        <select id="term" name="term">
        <option value="1">Term 1</option>
        <option value="2">Term 2</option>
        <option value="3">Term 3</option>
    </select>
    </p>
    
    <input type="submit" value="Submit">
</form>
    </div>
</body>
</html>

