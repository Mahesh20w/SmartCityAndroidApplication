<?php

$conn=mysqli_connect('localhost','id20219598_project','NVCOIo&]-8k9Vudw','id20219598_smartcity');
		$errors= array();
      $file_name = $_FILES['uploaded_file']['name'];
      $file_size =$_FILES['uploaded_file']['size'];
      $file_tmp =$_FILES['uploaded_file']['tmp_name'];
      $file_type=$_FILES['uploaded_file']['type'];
      $file_ext=strtolower(end(explode('.',$_FILES['uploaded_file']['name'])));
      
      $expensions= array("jpeg","jpg","png","vcf","txt","doc");
      
      if(in_array($file_ext,$expensions)=== false){
         $errors[]="extension not allowed, please choose a JPEG or PNG file.";
      }
      
      if($file_size > 2097152){
         $errors[]='File size must be excately 2 MB';
      }
      
      if(empty($errors)==true)
	  {
		  
 move_uploaded_file($file_tmp,"img_road/".$file_name);
 $sql=mysqli_query($conn,"INSERT INTO smart_city_road_complent(imged) VALUES('$file_name')");
  
	  }
	  else{
         print_r($errors);
      }
?>

