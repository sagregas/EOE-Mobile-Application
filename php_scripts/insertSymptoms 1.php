<?php
include_once 'connect.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


header("Connection: keep-alive");
header("Keep-Alive: timeout=99, max=499");

$data = json_decode(file_get_contents('php://input'), true);
// print_r($data);
 $symptoms = $data['symptoms'];
//echo $qol['user_patientid'];

$countf = 0;
$counts = 0;
$freq_score = 0;
$sev_score = 0;
$patientid=$symptoms['user_patientid'];
$timeinternal=$symptoms['time'];
$sym1=$symptoms['q1f'];
$sym2=$symptoms['q1s'];
$sym3=$symptoms['q2f'];
$sym4=$symptoms['q2s'];
$sym5=$symptoms['q3f'];
$sym6=$symptoms['q3s'];
$sym7=$symptoms['q4f'];
$sym8=$symptoms['q4s'];
$sym9=$symptoms['q5f'];
$sym10=$symptoms['q5s'];
$sym11=$symptoms['q6f'];
$sym12=$symptoms['q6s'];
$sym13=$symptoms['q7f'];
$sym14=$symptoms['q7s'];
$sym15=$symptoms['q8f'];
$sym16=$symptoms['q8s'];
$sym17=$symptoms['q9f'];
$sym18=$symptoms['q9s'];
$sym19=$symptoms['q10f'];
$sym20=$symptoms['q11f'];
$freq_score = $symptoms["freq_score"];
$sev_score = $symptoms["sev_score"];
$tot_score = $symptoms["tot_score"];
$dysphagia = $symptoms["dysphagia"];
$gerd = $symptoms["gerd"];
$nausea = $symptoms["nausea"];
$pain = $symptoms["pain"];


// echo $patientid;
$lin="INSERT INTO peess( patientID,time, q1f,q1s,q2f,q2s,q3f,q3s,q4f,q4s,q5f,q5s,q6f,q6s,q7f,q7s,q8f,q8s,q9f,q9s,q10f,q11f,frequency,severity,total,Dysphagia,Gerd,Nausea,Pain)
values('$patientid','$timeinternal','$sym1','$sym2','$sym3','$sym4','$sym5','$sym6','$sym7','$sym8','$sym9','$sym10','$sym11','$sym12','$sym13','$sym14','$sym15','$sym16','$sym17','$sym18',
  '$sym19','$sym20','$freq_score','$sev_score','$tot_score','$dysphagia','$gerd','$nausea','$pain')" ;
echo $lin;

if($conn -> query($lin) === TRUE){
// $last_id = $conn -> insert_id;
 // $arr = array('UserId' => $last_id);
// echo json_encode($arr);
echo "success: ";
}else {
echo "Error: " . $lin . "<br>" . $conn->error;
}
//echo $data["qol"];
// $json = filter_input(INPUT_POST, 'qol');
//   $Array = json_decode($json, true);
// echo($Array);
$conn->close();
 ?>
