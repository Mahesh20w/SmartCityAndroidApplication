<?php
 include('dbconnect.php');
 
$v1=$_GET['f1'];
$v2=$_GET['f2'];
$v3=$_GET['f3'];
$v4=$_GET['f4'];
$v5=$_GET['f5'];

 
$response = array();
 
$sql=mysqli_query($conn,"insert into smart_city_view_feedback values('$v1','$v2','$v3','$v4','$v5')");

 
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