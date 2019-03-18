<!DOCTYPE HTML>
<html>
    <head>
        <title>
            Blah
        </title>
    </head>

    <body>
    <p>
        hello from inside html!
    </p>

    <?php

    echo "Hello?\n";

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "march9";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 
    echo "Connected successfully\n";

    $sql = "SELECT subject_name FROM subjects_info";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Subject: " . $row["subject_name"]. "<br>\n";
    }
    } else {
        echo "0 results\n";
    }
    $conn->close();

    ?>

    </body>

</html>