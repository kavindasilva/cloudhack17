
<?php
include "../dbcon.php";
//require_once "p2.php";

if(isset($_POST['addcom'])){
	$cc=$_POST['complaint'];
	$bb=$_POST['busno'];
	
	inquire($bb,$cc);
}

function inquire($bus, $comp){

	$sqlq="insert into complaint values(null,'$bus','$comp','new');";
	$res = mysqli_query($GLOBALS['conn'] , $sqlq); //result
	
	if (!$res){ //check result
		echo "<p>Insert error ".mysqli_error()."</p>";
		return;
	}
	else {
		echo "<script>";
		echo "alert('insertion succesful');";
		echo "window.location('../index.php');";
		echo "</script>";
	}
}

//function

//v
?>