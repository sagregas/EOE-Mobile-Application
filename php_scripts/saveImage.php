<?php

include_once 'connect.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$target_dir = "eoeImgs";

if(!file_exists($target_dir))
{
mkdir($target_dir, 0755, true);
}

$target_dir = $target_dir."/".basename($_FILES["file"]["name"]);



if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_dir)) 
{

chmod($target_dir,0644);

$arr = array('fileLocation' => basename( $_FILES["file"]["name"]));
	echo json_encode($arr);

} else {

echo json_encode([
"Message" => "Sorry, there was an error uploading your file.",
"Status" => "Error",
//"userId" => $_REQUEST["userId"]
]);

}	 

$conn->close();


?>