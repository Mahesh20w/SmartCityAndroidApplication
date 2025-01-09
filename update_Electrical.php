<?php
 include('dbconnect.php');
 
$v1=$_REQUEST['f1'];
$v2=$_REQUEST['f2'];
$v3=$_REQUEST['f3'];
$v4=$_REQUEST['f4'];
$v5=$_REQUEST['f5'];
$v6=$_REQUEST['f6'];
$v7=$_REQUEST['f7'];
$response = array();
 
$sql=mysqli_query($conn,"insert into smart_city_electrical_complent values('$v1','$v2','$v3','$v4','$v5','$v6','$v7')");

 
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