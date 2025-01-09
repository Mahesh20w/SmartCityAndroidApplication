<?php
class DBController {
	private $conn = "";
	private $host = "localhost";
	private $user = "amsatech_account";
	private $password = "account@123";
	private $database = "amsatech_account";



 $conn=mysqli_connect('localhost','amsatech_account','account@123','amsatech_account');
 
//$conn=mysqli_connect('localhost','id16866037_project','Zd<ETqOQ]ZzE2p$(','id16866037_smart');
 
//$conn=mysqli_connect('localhost','amsatech_account','account@123','amsatech_account');

	function __construct() {
		$conn = $this->connectDB();
		if(!empty($conn)) {
			$this->conn = $conn;			
		}
	}

	function connectDB() {
		$conn = mysqli_connect($this->host,$this->user,$this->password,$this->database);
		return $conn;
	}

	function executeSelectQuery($query) {
		// log
		$myfile = fopen("../log.txt", "w") or die("Unable to open file!");
		fwrite($myfile, $query);

		$result = mysqli_query($this->conn,$query);
		while($row=mysqli_fetch_assoc($result)) {
			$resultset[] = $row;
		}
		if(!empty($resultset))
			return $resultset;
	}
}
?>
