<?php
 include('dbconnect.php');
 
$v1=$_REQUEST['f1'];


 
$response = array();
 
$sql=mysqli_query($conn,"UPDATE smart_city_dustbin SET dust_level='$v1'  WHERE dust_id='001'");

 
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