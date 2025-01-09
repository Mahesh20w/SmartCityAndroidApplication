<?php
 
include('dbconnect.php');

$v1=$_REQUEST['f1'];
$v2=$_REQUEST['f2'];
$v3=$_REQUEST['f3'];
$v4=$_REQUEST['f4'];

  
 


$response = array();
 
$sql="UPDATE smart_city_dustbin SET dust_level='$v2',latitude='$v3',longitude='$v4' WHERE dust_id='$v1'";

 
if ($conn->query($sql) == TRUE)
{
    $response["code"] = 1;
    $response["message"] = "Inserted successfully.";
    echo json_encode($response);
    
}
else
{
    $response["code"] = 0;
    $response["message"] = "Insertion failed.";
    echo json_encode($response);
}

mysqli_close($conn);
?>