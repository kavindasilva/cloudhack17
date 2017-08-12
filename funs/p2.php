
<?php
include "../dbcon.php";

//addTime("11:10:00", 120);
//subsTime("11:10:00", 120);

//
function filtTime(){
	echo "zend_version";
	
}

//add time
function addTime($stt, $plus){
	$selectedTime = $stt;
	$endTime = strtotime("+$plus minutes", strtotime($selectedTime));
	echo date('H:i:s', $endTime); //24hr

}

//time diff
function subsTime($stt, $plus){
	$selectedTime = $stt;
	$endTime = strtotime("-$plus minutes", strtotime($selectedTime));
	echo date('H:i:s', $endTime); //24hr
	//return ;
}
?>