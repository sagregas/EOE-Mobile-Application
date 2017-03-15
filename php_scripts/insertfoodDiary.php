<?php

include_once 'connect.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$data = json_decode(file_get_contents('php://input'), true);
// print_r($data);
 $qol = $data['food'];
//echo $qol['user_patientid'];

$patientid =  $qol['user_patientid'];
$imgName=$qol['imgName'];
$whoisinput=$qol['whoisinput']; 
$wherelinternal=$qol['wherelinternal']; 
$timeinternal= $qol['time'];
$whichMealinternal=$qol['whichMealinternal']; 
$whointernal=$qol['whointernal']; 
$feelBeforeint=$qol['feelBeforeint']; 
$feelAfterint=$qol['feelAfterint'];
$allergicint=$qol['allergicint']; 
$others=$qol['others']; 

$lin= "INSERT INTO foodDiary(patientID,time,image,inputPerson,location, meal, partner, feelBefore, feelAfter, worry ,others) values('$patientid','$timeinternal','$imgName','$whoisinput','$wherelinternal','$whichMealinternal','$whointernal','$feelBeforeint','$feelAfterint','$allergicint','$others')";

//echo $lin;

if($conn -> query($lin) === TRUE){
$last_id = $conn -> insert_id;

$sql1 = " SELECT * FROM foodDiary WHERE diaryID='$last_id' ";

$result = $conn->query($sql1);

if ($result->num_rows > 0) {
//echo "done";
$row = array($result ->fetch_assoc());
echo json_encode($row);

}else{
echo "$sql1".$conn->error;	
}


}//if out
else {
    echo "Error: " . $lin . "<br>" . $conn->error;
}//else out


$conn->close();

?>  