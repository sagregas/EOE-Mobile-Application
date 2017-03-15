<?php

include_once 'connect.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$id = filter_input(INPUT_GET, 'patientID');

$sql = " SELECT * FROM foodDiary WHERE patientID = '$id' ";
  // $result = $conn->query($sql);
$result = $conn->query($sql);

$array = array();


if ($result->num_rows > 0) {

foreach ($result as $value) {


   	    array_push($array, $value);

}
    
    echo json_encode($array);

} else {
    echo "$sql".$conn->error;
   
}


$conn->close();



























?>