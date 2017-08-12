<?php 
//session maintainence
?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="./css/pageBody.css" />
		<link rel="stylesheet" type="text/css" href="./css/dropdown.css"/>

	</head>
	<body>

		<div id="topp">
			<center>
				This is top
				<img src="./data/img/welcome2.gif" style="float: none;width: 300px; " />
				This is top
				<br />

				<div class="dropdown">
					<button class="dropbtn">Dropdown</button>
					<div class="dropdown-content">
						<a href="#">Link 1</a>
						<a href="#">Link 2</a>
						<a href="#">Link 3</a>
					</div>
				</div>
				<div class="dropdown">	
					<a href="data"><button class="dropbtn">Dropdown2</button></a>
					<div class="dropdown-content">
						<a href="#">Link 4</a>
						<a href="data">Link 5</a>
						<a href="">Link 6</a>
					</div>
				</div>
			</center>
		</div>
		<!--end of the top divisor-->

		<div id="bottom">
			<!--start of the left pane-->
			<div id="leftd" >
				<P>
					bottom left blah dhjf eklgfd ikfgsd welihfgwedf  wrelgfn ljnsfg kjndfg dsrlng edsrloikngs
				</P>
			</div>
			<!--end of the left pane-->

			<!--start of the main pane-->
			<div id="rightd" >
				<P>
					Bottom right word1 word2 word 3 sdkljn slngsd olhnjwsdfg jlojhnswgf lnhsgd word6 word7 word8
				</P>
				<P>
					skjhf khhb kjhbk klhbkj jhgfch jkhb kiojhb kjhbn lnh lkjnhh ljn klbn lopnhl kloblopn lnjhl;pn kn
				</P>
				<P>
					skjhf khhb kjhbk klhbkj jhgfch jkhb kiojhb kjhbn lnh lkjnhh ljn klbn lopnhl kloblopn lnjhl;pn kn
				</P>
				
				<center>
				<form name="login" action="user.php" method="post">
					<table>
						<tr><td>user name: </td><td colspan="2" ><input type="text" name="uname" size="30"/></td></tr>
						<tr><td>password: </td><td colspan="2"><input type="text" name="pass" size="30" /></td></tr>
						<tr><td></td><td><input type="submit" value="OK" name="log"/><input type="reset" value="clear" /></td></tr>
					</table>
				</form>
				
				<form name="loginn" action="user.php" method="post">
					<table>
						<tr><td>user name: </td><td colspan="2" ><input type="text" name="eml" size="30"/></td></tr>
						<tr><td>password: </td><td colspan="2"><input type="text" name="pw" size="30" /></td></tr>
						<tr><td></td><td><input type="submit" value="OK" name="lo"/><input type="reset" value="clear" /></td></tr>
					</table>
				</form>
				</center>
							
			</div>
			<!--end of the main page-->
		</div>

		<!--start of the footer-->
		<div id="foot" style="">
			<center class="footfix">
				&copy;KS <a href="http://ugvle.ucsc.cmb.ac.lk">visit us</a>
			</center>
		</div>
		<!--end of the footer-->
		
		<div></div>
	</body>

</html>
