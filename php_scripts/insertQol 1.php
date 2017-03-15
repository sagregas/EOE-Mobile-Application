<?php
include_once 'connect.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
  header("Connection: keep-alive");
  header("Keep-Alive: timeout=99, max=499");

$data = json_decode(file_get_contents('php://input'), true);
// print_r($data);
 $qol = $data['qol'];
//echo $qol['user_patientid'];

  $patientid =  $qol['user_patientid'];
   $timeinternal= $qol['time'];
$qol1=$qol['s1q1'];
$qol2=$qol['s1q2']; 
$qol3=$qol['s1q3']; 
$qol4=$qol['s1q4']; 
$qol5=$qol['s1q5']; 
$qol6=$qol['s1q6']; 
$qol7=$qol['s2q1'];
$qol8=$qol['s2q2']; 
$qol9=$qol['s2q3'];
$qol10=$qol['s2q4']; 
$qol11=$qol['s3q1']; 
$qol12=$qol['s3q2']; 
$qol13=$qol['s3q3']; 
$qol14=$qol['s3q4']; 
$qol15=$qol['s3q5']; 
$qol16=$qol['s4q1']; 
$qol17=$qol['s4q2']; 
$qol18=$qol['s4q3']; 
$qol19=$qol['s4q4']; 
$qol20=$qol['s4q5']; 
$qol21=$qol['s4q6']; 
$qol22=$qol['s5q1']; 
$qol23=$qol['s5q2']; 
$qol24=$qol['s5q3']; 
$qol25=$qol['s5q4']; 
$qol26=$qol['s5q5']; 
$qol27=$qol['s67']; 
$qol28=$qol['s6q1']; 
$qol29=$qol['s6q2']; 
$qol30=$qol['s6q3']; 
$qol31=$qol['s6q4']; 
$qol32=$qol['s7q1']; 
$qol33=$qol['s7q2']; 
$qol34=$qol['s7q3']; 
$qol35=$qol['s8']; 
$qol36=$qol['s8q1']; 
$qol37=$qol['s8q2']; 
$sym1 = $qol['sym1score'];
$sym2 = $qol['sym2score'];
$treat = $qol['treatscore'];
$worry = $qol['worryscore'];
$comm = $qol['commscore'];
$fe = $qol['fescore'];
$ff = $qol['ffscore'];
$total = $qol['totscore'];
$sym = $qol['symscore'];




// echo $patientid;
$lin="INSERT INTO pedsQL( patientID,time, 
s1q1,
s1q2,
s1q3,
s1q4,
s1q5,
s1q6,
s2q1,
s2q2,
s2q3,
s2q4,
s3q1,
s3q2,
s3q3,
s3q4,
s3q5,
s4q1,
s4q2,
s4q3,
s4q4,
s4q5,
s4q6,
s5q1,
s5q2,
s5q3,
s5q4,
s5q5,
s6q1,
s6q2,
s6q3,
s6q4,
s7q1,
s7q2,
s7q3,
s8,
s8q1,
s8q2,
s67,
symptoms1,
symptoms2,
Treatment,
Worry,
Communication,
FE,
FF,
Total,
symptoms
 )
values('$patientid','$timeinternal',

'$qol1','$qol2','$qol3','$qol4','$qol5','$qol6','$qol7','$qol8','$qol9','$qol10','$qol11','$qol12','$qol13','$qol14','$qol15','$qol16','$qol17','$qol8',
'$qol19','$qol20','$qol21','$qol22','$qol23','$qol24','$qol25','$qol26','$qol28','$qol29','$qol30','$qol31','$qol32','$qol33','$qol34','$qol35','$qol36','$qol37','$qol27','$sym1','$sym2', '$treat','$worry','$comm','$fe','$ff','$total','$sym')" ;
echo "query".$lin;

if($conn -> query($lin) === TRUE){

	// $last_id = $conn -> insert_id;
 // $arr = array('UserId' => $last_id);
	// echo json_encode($arr);
    echo "success: ";


}else {
    echo "Error: xxxxx " . $sql . "<br>" . $conn->error;
}
//echo $data["qol"];
// $json = filter_input(INPUT_POST, 'qol');

//   $Array = json_decode($json, true);

// echo($Array);
$conn->close();


 ?>  