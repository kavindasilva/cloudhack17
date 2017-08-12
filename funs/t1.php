<?php

$selectedTime = "9:15:00";
$endTime = strtotime("-45 minutes", strtotime($selectedTime));
echo date('H:i:s', $endTime); //24hr

?>