
<?php
$host="sql101.byethost10.com";
$uname="b10_20053047";
$password="zr506t1k";
$dataBase="b10_20053047_gobus";

$conn=new mysqli($host,$uname,$password,$dataBase);

//oop
if($conn->connect_error){
	die("<p>Connection failed: " . $conn -> connect_error . "</p>");
}
else{
	//echo "connected to " . $dataBase . "<hr/>";
}

?>