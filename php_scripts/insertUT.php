<?php
include_once 'connect.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
  header("Connection: keep-alive");
  header("Keep-Alive: timeout=99, max=499");

$json = json_decode(file_get_contents('php://input'), true);
// print_r($data);
 $data = $json['ut'];


//Store User into MySQL DB
$patientid = $data['user_patientid'];
$timeinternal= $data['time'];
$steroidinternal=$data['steroid'];
$dietaryinternal=$data['dietary'];
$foodEliminationinternal=$data['foodElimination'];
$allergy_syptomsint=$data['allergy_syptoms'];
$allergy_syptoms_foodint=$data['allergy_syptoms_food'];
$elementalDietint=$data['elementalDiet'];
$exclElementalint=$data['exclElemental'];
$formulaint=$data['formula'];
$foodTrialint=$data['foodTrial'];
$foodTrial_foodint=$data['foodTrial_food'];
$input='san';

// echo $patientid;
$lin="INSERT INTO userSurvey(patientID,time,steroid,dietary,foodElimination, allergy_syptoms, allergy_syptoms_food, elementalDiet, 
exclElemental,formula,foodTrial,foodTrial_food )
values('$patientid',
'$timeinternal',
'$steroidinternal',
'$dietaryinternal',
'$foodEliminationinternal',
'$allergy_syptomsint',
'$allergy_syptoms_foodint',
'$elementalDietint',
'$exclElementalint',
'$formulaint',
'$foodTrialint',
'$foodTrial_foodint')";

echo "query".$lin;

if($conn -> query($lin) === TRUE){

  // $last_id = $conn -> insert_id;
 // $arr = array('UserId' => $last_id);
  // echo json_encode($arr);
    echo "success: ";


}else {
    echo "Error: xxxxx " . $sql . "<br>" . $conn->error;
}


$conn->close();



    

 ?>  