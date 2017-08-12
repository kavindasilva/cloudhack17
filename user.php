<?php
/**
 * this file is to validate user credentials and login
 */
 
//check session
/*
if(isset($_SESSION['user'])){
	header('Location: home.php');
}
*/

require_once 'dbcon.php';

if(isset($_POST['log'])){
	//echo "form login";
	$name = $_POST['uname'];
	$password = $_POST['pass'];
	
	$checkName = "select * from users where Email='$name'";
	
	$result = mysqli_query($conn, $checkName);
	
	if (!($result)) 
		{echo "Error in query";}
	$rowcount = mysqli_num_rows($result);
	
	if($rowcount==0){
		echo "Invalid user";
	}
	elseif ($rowcount==1)
	{
		$r = mysqli_fetch_array($result);
		$rpass = $r['Password']; //password form DB
		if ($rpass==$password)
		{
			$_SESSION['user']=''; //user id
			header('Location: user.php'); //redirection
		} 
	}
	
}


?>