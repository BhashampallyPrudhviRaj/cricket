<head>
  <!-- Favicons -->
  <link href="img/fav-icon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

</head>

	<?php
	echo "<center><h2>16<sup>th</sup>SR Champion Trophy - 2018</h2></center>";
	if(isset($_SESSION['username'])){
	echo "<div id='d1'>";	
	echo "Hi! ", $_SESSION['username'], "...";
	echo "<table><tr><td width='100%'>";
	?>
	<td>
	<form name='logout_form' method='post' action='logout.php'>
	 <input type='submit' value='Logout'>
	</form> </td> </tr>
	</table>
	<hr style='margin-top:0px'>
	</div>
	<?php
	}
	?>