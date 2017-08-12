<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>TimeScheduleTemplate</title>

		<!-- Bootstrap -->
		<link href="../uis/css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="../uis/css/bootstrap.min.css" />
		<link type="text/css" href="../uis/css/bootstrap-timepicker.min.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="../uis/js/jquery.min.js"></script>
		<script type="text/javascript" src="../uis/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../uis/js/bootstrap-timepicker.min.js"></script>
		<style media="screen">
			.fa {
				padding: 10px;
				font-size: 30px;
				width: 50px;
				text-align: center;
				text-decoration: none;
				margin: 5px 2px;
			}

			.fa:hover {
				opacity: 0.7;
			}

			.fa-facebook {
				background: #3B5998;
				color: white;
			}
			body {
				background-color: #e6f5ff;
			}
		</style>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="../funs/lsearch.js"></script>
		<script type="text/javascript" src="../funs/lsearch2.js"></script>
	</head>
	<body>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>

		<div class="container">
			<br>

			<div class="panel panel-primary">
				<div class="panel-heading">
					Time schedule
				</div>
				<div class="panel-body">

					<div class="well well-lg">
						<?php
						include "../dbcon.php";
						require_once "p2.php";

						if (isset($_POST['searchfare'])) {
							$bustype = $_POST['btype'];

							if (is_null($_POST['sstarttime']) || empty($_POST['sstarttime']))
								$sstttime = "0:0:0";
							else
								$sstttime = $_POST['sstarttime'];
							//echo "KK==".$sstttime;

							if (is_null($_POST['sstoptime']) || empty($_POST['sstoptime']))
								$sstptime = "23:59:59";
							else
								$sstptime = $_POST['sstoptime'];

							searchRoute(0, $_POST['sstart'], $_POST['sstop'], $sstttime, $sstptime, $bustype);
						}
						?>

					</div>

				</div>
			</div>
		</div>

	</body>
</html>

<?php

//searchRoute(0,'colombo', 'yakkala', 0);
//searchRoute(0, 'yakkala','mudungoda', 0);

//time varadiy
//searchRoute(0, 'mahara','mudungoda', 0,0);
//searchRoute(0, 'mahara','mudungoda','12:0:0');
//searchRoute(0, 'mahara','mudungoda', "12:00:00",'13:20:0');
//searchRoute(0, 'mahara','mudungoda', "10:00:00");
//searchRoute(0, 'colombo','warakapola', 0,0);

//start, stop, time, day eka danna
function searchRoute($dt, $stt, $stp, $tmst = "0:0:0", $tmsp = "23:59:59", $type) {

	//$sql1="SELECT rid from nfare WHERE dest='$stt' and rid IN (SELECT rid from nfare where dest='$stp')"; //returns bus routes
	$sql1 = "SELECT * from nfare WHERE dest='$stt' and rid IN (SELECT rid from nfare where dest='$stp')";
	//returns bus routes

	selectQ($sql1, $stt, $stp, $tmst, $tmsp, $type);
	//select and display price, route, travel time

	//filtTime();

}

//view routes
function viewRoute($result) {

}

//select data
function selectQ($sqlq, $sstt, $sstp, $tmst, $tmsp, $type) {

	$res = mysqli_query($GLOBALS['conn'], $sqlq);
	//result

	if (mysqli_num_rows($res) == 0) {//check result
		echo "<p>Sorry there are no direct busses</p>";
		return;
	} else {
		echo "<table id='tblbus'>";
		//echo "<tr> <th>ID</th> <th></th> <th>First name</th> <th>Last name</th> <th>Birthday</th> <th>class</th>";
		//echo " <th>sex</th> <th>telephone1</th> <th>telephone2</th> <th>Address</th></tr>";

		//ivalues 2 venasa ganna
		while ($row = mysqli_fetch_array($res)) {
			$route = $row['rid'];
			$sql2 = "select ivalue,eta from nfare where rid='$route' and dest='$sstt'";
			//aniwa exists + start
			$sql3 = "select ivalue,eta from nfare where rid='$route' and dest='$sstp'";
			//aniwa exists + stop

			$res2 = mysqli_query($GLOBALS['conn'], $sql2);
			//start
			$row2 = mysqli_fetch_array($res2);
			$ind2 = $row2['ivalue'];
			$time2 = $row2['eta'];

			$res3 = mysqli_query($GLOBALS['conn'], $sql3);
			//stop
			$row3 = mysqli_fetch_array($res3);
			$ind3 = $row3['ivalue'];
			$time3 = $row3['eta'];

			//skip vice versa of routes
			$priceindex = $ind3 - $ind2;
			//ind3>ind2
			if ($priceindex < 0) {
				//$priceindex=$priceindex*-1;
				continue;
			}
			echo "<label for='sel2'>start: </label> " . $sstt . "<br>";
			echo "<label for='sel2'>stop: </label> " . $sstp . "<br>";

			$esttravel = ($time3 - $time2);
			echo "<label for='sel2'>EST travel time: </label>" . $esttravel . " mins<br>";

			//echo $route."<BR>";//"Rs. ";
			echo substr($route, 0, -3) . " ";
			//"Rs. ";

			//print bus route
			$sql4 = "select * from route where rid='$route'";
			$res4 = mysqli_query($GLOBALS['conn'], $sql4);
			//only 1 result
			$row4 = mysqli_fetch_array($res4);
			echo $row4['start'] . " " . $row4['end'] . "<br>Rs. ";
			$starthalt = $row4['start'];

			//get price
			$sql4 = "select val from fareindex where fid=$priceindex";
			$res4 = mysqli_query($GLOBALS['conn'], $sql4);
			//only 1 result
			$row4 = mysqli_fetch_array($res4);
			$pricex = $row4['val'];
			echo $pricex;

			//1st stop eken ena time eka ganna
			$tmst = subsTime($tmst, $time2);
			//echo "Col=".$tmst;

			//ETA calc
			//$sql2="select * from schedule where rid='$route' "; //aniwa exists + start
			$sql2 = "select s.timestart as xx1, a.type as xx2 from schedule s, allbus a where rid='$route' and a.type='$type' and s.busno=a.busid and s.timestart between '$tmst' and '$tmsp'";
			//aniwa exists + start
			//$sql3="select * from schedule where rid='$route' "; //aniwa exists + stop
			$res2 = mysqli_query($GLOBALS['conn'], $sql2);
			//start
			if (mysqli_num_rows($res2) == 0) {
				echo "There are no busses at this time";
				return;
			} else {
				echo "<br><B>Arrival time to $sstt</b><br>";
				//echo "<br><B>Departure from $starthalt \t Arrival to $sstt \t </b><br>";
				while ($row = mysqli_fetch_array($res2)) {
					echo "<form method='post' action=''>";
					$tmp1 = $row['xx1'];
					//bus eka pitath vena time eka
					if ($row['xx2'] == "n") {
						$btype = "normal";
						//start time + EST
						addTime($tmp1, $time2);
						echo " ==> " . $btype . "<br>";
					} elseif ($row['xx2'] == "s") {
						$btype = "semi-luxury";
						addTime($tmp1, $time2);
						echo " ==> " . $btype . "<br>";
					}

					echo "</form>";
				}
			}

			//filtTime();
			echo "<hr color='green'>";
		}
		echo "</table>";
	}
}

//function

//v
?>