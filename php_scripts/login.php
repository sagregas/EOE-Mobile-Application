<?php

include 'connect.php';

$email = $_GET['email'];
$password = $_GET['password'];
$sql = "SELECT * FROM userInfo WHERE email = '$email' AND password = '$password'";

$result = $conn->query($sql);

$rowCount = mysqli_num_rows($result);

if($rowCount == 1){
   $row = mysqli_fetch_assoc($result);
   echo json_encode($row);
}

$conn->close();
 ?>
