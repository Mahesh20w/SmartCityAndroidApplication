<?php
 
 $conn=mysqli_connect('localhost','id20219598_project','NVCOIo&]-8k9Vudw','id20219598_smartcity');


$v1=$_REQUEST['f1'];
$v2=$_REQUEST['f2'];
$v3=$_REQUEST['f3'];
$v4=$_REQUEST['f4'];
$v5=$_REQUEST['f5'];
 


$response = array();
 
$sql="insert into view_feedback values('$v1','$v2','$v3','$v4','$v5')";

 
if (mysql_query($sql) == TRUE)
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