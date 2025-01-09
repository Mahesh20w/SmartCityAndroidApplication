<?php
 include('dbconnect.php');
 
$v1=$_GET['f1'];
$v2=$_GET['f2'];
$v3=$_GET['f3'];
$v4=$_GET['f4'];
$v5=$_GET['f5'];

$response = array();
 
$sql=mysqli_query($conn,"UPDATE smart_city_user_account SET name='$v1', email='$v3', address='$v4', password='$v5' WHERE mno='$v2'");

 
if ( $sql == TRUE)
{
    $response["success"] = 1;
    $response["message"] = "Inserted successfully.";
    echo json_encode($response);
    
}
else
{
    $response["success"] = 0;
    $response["message"] = "Insertion failed.";
    echo json_encode($response);
}

?>