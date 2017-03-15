<?php
include 'connect.php';

$json = array(); // total array of errors
$message = array(); // localized description error
$patientName=null;
$email = null;
$password = null;
$gender=null;
$date=null;
$Grade=null;
$Ethnicity=null;
$Race=null;
$LenDisease=null;
$FamIncome=null;
$fatherEducation=null;
$MotherEduc=null;
 //if (isset($_POST["patientName"]) && isset($_POST["gender"]) && isset($_POST["date"]) && isset($_POST["Grade"]) && isset($_POST["Ethnicity"])
 //&& isset($_POST["Race"]) && isset($_POST["LenDisease"])&& isset($_POST["FamIncome"]) && isset($_POST["MotherEduc"]) && isset($_POST["FathEduc"]) )
 //{
 $patientName = $_POST["patientName"];
 $gender = $_POST["gender"];
 $email = $_POST['email'];
 $password = $_POST['password'];
 $date = $_POST["date"];
 $Grade = $_POST["Grade"];
 $Ethnicity = $_POST["Ethnicity"];
 $Race = $_POST["Race"];
 $LenDisease = $_POST["LenDisease"];
 $FamIncome = $_POST["FamIncome"];
 $fatherEducation = $_POST["FathEduc"];
 $MotherEduc = $_POST["MotherEduc"];
 $doctorId="1";
 //$sql_query = "insert into userInfo values('$doctorId','$name','$birthDate','$race','$ethnicity','$gender','$grade','$lengthOfDisease','$motherEducation','$fatherEducation','$familyIncome');";

$result = "INSERT INTO userInfo( doctorId, name, email, password, birthDate, race, ethnicity, gender, grade, lengthOfDisease, motherEducation, fatherEducation, familyIncome )
values('$doctorId','$patientName','$email','$password','$date','$Race','$Ethnicity','$gender','$Grade','$LenDisease','$MotherEduc','$fatherEducation','$FamIncome')";

if($conn -> query($result) === TRUE){

 $last_id = $conn -> insert_id;
echo json_encode($last_id);
   // echo "success: ";


}else {
    echo "Error: " . $conn->error;
}
//echo $data["qol"];
// $json = filter_input(INPUT_POST, 'qol');

//   $Array = json_decode($json, true);

// echo($Array);
$conn->close();

 //}
 //else
 //{
	//$result = mysqli_query($connection,"SELECT * FROM userInfo WHERE deleted=0");
// }






//}
 ?>
