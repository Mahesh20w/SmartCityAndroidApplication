<?php
 
 include('dbconnect.php');
 
$v1=$_GET['product_code'];
$v2=$_GET['product_name'];
$v3=$_GET['qty'];
$v4=$_GET['product_price'];
$v5=$_GET['product_dated'];
 $v6=$_GET['cgstin'];
 $v7=$_GET['sgstin'];
 $v8=$_GET['igstin'];
 $v9=$_GET['hsncode'];


$response = array();
 
$sql=mysqli_query($conn,"insert into product_tablesv values('','$v1','$v2','$v3','$v4','$v5','$v6','$v7','$v8','$v9')");

 
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