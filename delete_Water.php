<?php
include('dbconnect.php');
 

    $v1 = $_GET["id"];
    
    
    
       
       
            $sql =mysqli_query($conn,"DELETE FROM smart_city_water_complent WHERE compl_no='$v1'");


 
 

?>	<script> alert('Delete succesfully')
		               window.location.href='main_home_water.php';
		</script>