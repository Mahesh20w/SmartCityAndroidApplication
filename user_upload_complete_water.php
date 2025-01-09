<?php
 
include('dbconnect.php');

$v1=$_REQUEST['compl_no'];
$v2=$_REQUEST['user_name'];
$v3=$_REQUEST['mobile'];

$v4=$_REQUEST['place_name'];
$v5=$_REQUEST['imged'];
$v6=$_REQUEST['latitude'];
$v7=$_REQUEST['longitude'];
$v8=$_REQUEST['dept_name'];

$v9=$_REQUEST['dated'];
 
 


$response = array();
 
$sql="UPDATE smart_city_water_complent SET compl_no='$v1',user_name='$v2',mobile='$v3',place_name='$v4',latitude='$v6',longitude='$v7',dept_name='$v8',dated='$v9' WHERE imged='$v5'";

 
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