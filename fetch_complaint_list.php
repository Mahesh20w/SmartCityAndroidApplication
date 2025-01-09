<?php

include('dbconnect.php'); 
 
$output=array();
$v1=$_GET['f1'];

$result=mysqli_query($conn,"select * from smart_city_garbage_complent_status WHERE mobile='$v1'");

$cnt=0;

while($r=mysqli_fetch_array($result))
{
    $cnt=1;
    $output[]=array("compl_no"=>$r["compl_no"],"mobile"=>$r["mobile"],"statuss"=>$r["statuss"]);       
}

  
$flag["code"]="0";

if($cnt>0)
{
    $flag["code"]="1";
    
    print(json_encode($output));
}
else
{   
    printf(json_encode("Error"));

} 

  

?>