<head>

  <!-- Favicons -->
  <link href="../img/fav-icon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../lib/animate/animate.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="../css/style.css" rel="stylesheet">

<style>
fieldset{
 display:inline;
}
table{
	border-collapse:collapse;
}
.container{
	margin-left:0%;
}
#d1{
	text-align:right;
}
*{line-height:22px;font-size:11pt;}
select:hover, input:hover{}
th{height:40px;min-width:55px;}
tr:nth-child(odd) {background: 	#F0FFF0}
tr:nth-child(even) {background: #FAFAD2}
#center{text-align:center;font-size:85%}
select{font-size:10px;width:80px;}
</style>
<script src="https://1ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="../js/jquery.min.js"></script>
</head>
<body onload='disable6runs(),selectcatch_hide();'>
<center>
<?php
// source .. from srtrophy/entry/index
date_default_timezone_set('Asia/Calcutta');
session_start();
include('getTeamNames.php');
include("../Database/dbConnect.php");
$con = getConnection();
if(!isset($_SESSION['username']))
{
	echo "<script>window.open('../login/', '_self')</script>";
}
// $gid = $_SESSION['matchid'];
$tosstype = $_SESSION['tosstype'];
$toss_teamid = $_SESSION['toss_team_id'];

 if($tosstype==0 || $toss_teamid==0)
 {
  echo "<script>1history.go(-1)</script>";
 }
 // if(!isset($_SESSION['tosstype']) || !isset($_SESSION['toss_team_id'])) echo "<script>history.go(-1)</script>";

// echo $tosstype, $toss_teamid, $_SESSION['matchid'];
    $matchid = $_SESSION['matchid'];
    $team1id = $_SESSION['team1id'];
	$team2id = $_SESSION['team2id'];
	$team1name = $_SESSION['team1name'];
	$team2name = $_SESSION['team2name'];
	
	$qry0 = mysqli_query($con, "update `matches_2018` set `toss_teamid`='$toss_teamid' where `toss_teamid`='.' and `matchid` = '$matchid'");
	$qry0 = mysqli_query($con, "update `matches_2018` set `toss_type`='$tosstype' where `toss_type`='.' and `matchid` = '$matchid'");
	$current_date_time = Date('Y-m-d h:i:s');
	// echo $current_date_time;
	$qry0 = mysqli_query($con, "update `matches_2018` set `inning1start`=NOW() where `inning1start` is NULL and `matchid` = '$matchid'");
	
	
	if(($toss_teamid == $team1id) && ($tosstype=='Bowling') ) {$teamtobat = $team2id; $teamtobowl = $team1id;}
	else
	if(($toss_teamid == $team1id) && ($tosstype=='Batting') ) {$teamtobat = $team1id; $teamtobowl = $team2id;}
	else
	if(($toss_teamid == $team2id) && ($tosstype=='Bowling') ) {$teamtobat = $team1id; $teamtobowl = $team2id;}
	else
	if(($toss_teamid == $team2id) && ($tosstype=='Batting') ) {$teamtobat = $team2id; $teamtobowl = $team1id;}

	// $qrying = mysql_query($con, "select
	
	
	$team1_details = getTeamNames($teamtobat, $con);
	$team2_details = getBowlersNames($teamtobowl, $con);
	$bowlerCount = $team2_details[0][0];

// $qry1 = mysqli_query($con, "select * from `players` where `teamid` = '$teamtobat'");
// $team1_details[0][0]="";;
// $i=0;
// while ($res1 = mysqli_fetch_array($qry1)){
	// $team1_details[$i++] = $res1;
// }
include('header.php');
?>
<div class='container'>
  <main id="main">
<form name='test1' action='test2.php' method='POST'>
<table border=1 style='margin-top:2%;' class='tablep-responsive'>
<tr> <th id='center' colspan=5> Inning Type <select name='inning' id='select1'><option value='1' selected>First Inning</option><option value='2'>Second Inning</option></select></th></tr>
<tr> <th id='center'> Current Batsman -</th> <td> <select name='batsman' id='select1'> 
  <?php for($x=0; $x<11; $x++) { 
  ?>
  <option value='<?php echo $team1_details[$x][1]; ?>'> <?php echo $team1_details[$x][1]; ?> </option>
  <?php } ?>
  </select> </td>
  <th id='center'> Current Bowler - </th> <td>  <select name='bowler' id='select1'> 
  <?php for($x=1; $x<=$bowlerCount; $x++) { 
  ?>
  <option value='<?php echo $team2_details[$x][1]; ?>'> <?php echo $team2_details[$x][1]; ?> </option>
  <?php } ?>
  </select> </td> </tr>

  <tr> 	<th id='center'> Score Type </th>
		<td> <input type='radio' name='scoretype' value='Hit' onchange='enable6runs();'checked> Hit  <br>
			 <input type='radio' name='scoretype' value='Legbye' onchange='disable6runs();'> LegBye <br>
			 <input type='radio' name='scoretype' value='MissKeeping' onchange='disable6runs();'> <small> MissKeeping</small> <br>
			 <input type='radio' name='scoretype' value='Wide' title='Extraa' onchange='disable6runs();'> Wide <br>
			 <input type='radio' name='scoretype' value='Noball'; onchange='enable6runs();'> Noball
		</td> 
		<script>
			function disable6runs(){
				document.getElementById('runs6').style.visibility='hidden';
			}
			function enable6runs(){
				document.getElementById('runs6').style.visibility='visible';
			}			
		</script>
		<th id='center'> Runs Scored<br>
		  <input type='radio' name='runs' id='runs0' value='0' checked>0 &nbsp; 
		  <input type='radio' name='runs' id='runs1' value='1'>1 <br> 
		  <input type='radio' name='runs' id='runs2' value='2'>2 &nbsp;
		  <input type='radio' name='runs' id='runs3' value='3'>3 <br>
		  <input type='radio' name='runs' id='runs4' value='4'>4 &nbsp; 
		  <input type='radio' name='runs' id='runs6' value='6'>6
<!--		  <br> <center>
		  <a href="#" id='clear_2'>Clear<a/> </center>
			<script type="text/javascript">
			document.getElementById('clear_2').addEventListener('click', function () {
			  ["runs0", "runs1", "runs2", "runs3", "runs4", "runs6"].forEach(function(id) {
				document.getElementById(id).checked = false;
			  });
			  return false;
			})
		  </script> -->
		</td>
		<th id='center'>Over Throw Runs<br> &nbsp;
		  <input type='radio' name='overthrowruns' id='overthrowruns0' value='0' checked>0 <br>
		  <input type='radio' name='overthrowruns' id='overthrowruns1' value='1'>1 &nbsp;
		  <input type='radio' name='overthrowruns' id='overthrowruns2' value='2'>2 <br>
		  <input type='radio' name='overthrowruns' id='overthrowruns3' value='3'>3 &nbsp;
		  <input type='radio' name='overthrowruns' id='overthrowruns4' value='4'>4
<!--		  <br> <center>
		  <a href="#" id='clear_3'>Clear<a/> </center>
			<script type="text/javascript">
			document.getElementById('clear_3').addEventListener('click', function () {
			  ["overthrowruns0", "overthrowruns1", "overthrowruns2", "overthrowruns3", "overthrowruns4"].forEach(function(id) {
				document.getElementById(id).checked = false;
			  });
			  document.getElementById("overthrowruns0").checked=true;
			  return false;
			})
		  </script>		-->
		</td>		
		</tr>
		
	<tr> <th id='center'> Out Type </th>
	<td> <input type='radio' name='outtype' value='Notout' checked onchange='selectcatch_hide();'>Not-Out<br>
		 <input type='radio' name='outtype' value='Bowled' onchange='selectcatch_hide();'>Bowled<br>
		 <input type='radio' name='outtype' value='Runout' onchange='selectcatch_hide();'>Runout<br>
		 <input type='radio' name='outtype' value='Catch' onchange='selectcatch_show();'>Catch
		 <select name='fielder_catch' id='selectcatch'> 
			  <?php for($x=1; $x<=$bowlerCount; $x++) { 
			  ?>
			  <option value='<?php echo $team2_details[$x][1]; ?>'> <?php echo $team2_details[$x][1]; ?> </option>
			  <?php } ?>
		  </select> <br>
		<script>
			function selectcatch_hide(){
				document.getElementById('selectcatch').style.visibility='hidden';
			}
			function selectcatch_show(){
				document.getElementById('selectcatch').style.visibility='visible';
			}		
		</script>		 
		 
		 
		 <input type='radio' name='outtype' onchange='selectcatch_hide();'>LBW<br>
		 <input type='radio' name='outtype' onchange='selectcatch_hide();'>Stumps
	</td>
	<th id='center'> Over<br> <select name='overcount'>
			<?php
			for($i=1; $i<=20; $i++)
				{?>
					<option><?php echo $i; ?></option> 
				<?php
				} 
				?>
			</select>
	<br>Ball Count <br> <select name='ballcount'>
			<?php
			for($i=1; $i<=6; $i++)
				{?>
					<option><?php echo $i; ?></option> 
				<?php
				} 
				?>
			</select>
	
	</td>
	 <td colspan=3 style='text-align:center'>
  <input type='submit' value='ok'> &nbsp;
  <input type='reset' value='reset'>
  </td></tr>
  	</table>
	<?php echo ExactBrowserName(); ?>
  </form>
 </div>