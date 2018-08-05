<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>SR Champions Trophy</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="SR Engineering College, SREC Warangal, Cricket SR Engineering College, SR Champions Trophy" name="keywords">
  <meta content="SR Engineering College (SREC) established in the year 2002 is sponsored by Sri Rajeshwara Educational Society which has four decades of rich experience in the field of Education. It is located on Warangal-Karimnagar highway at about 15 KM away from Warangal City. SR Group runs 3 Engineering Colleges, and scores of Junior Colleges and Schools spreading over Telangana and Andhra Pradesh." name="description">

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
<style>
.content, empty{
float:left;
}
.content>p{min-width:100px;}
table{border-collapse:collapse;}
th,td{min-width:20px;}
th{background-color:#a5500fff;border-color:white;color:white;}
td{even-row(color:red;)}
</style>
</head>

<?php
session_start();
date_default_timezone_set('Asia/Calcutta');

$groundid = $_GET['id'];

class ground1{
	var $ground_id;
	var $con1;
	public function set_Connection()
	{
	  include("Database/dbConnect.php");
	  $this->con1 = getConnection();	 
	}
	public function set_ground1($gid)
	{
		$this->ground_id = $gid;
	}
	public function get_collegename($tid)
	{
	  $con2 = $this->con1;
	  $qry2 = mysqli_query($con2, "select * from `teamid` where `teamid` like '$tid' ");
	  while($res2=mysqli_fetch_array($qry2))
	  	  return $res2['collegename'].', '.$res2['district'];
	}
	public function get_clgcode($tid)
	{
	  $con3 = $this->con1;
	  $qry3 = mysqli_query($con3, "select * from `teamid` where `teamid` like '$tid' ");
	  while($res3=mysqli_fetch_array($qry3))
	  	  return $res3['teamid']; //college code
	}
	public function getScore()
	{
	  $gid = $this->ground_id;
	  include('groundNames.php');
	  $groundNames=groundNames();
	  $con1 = $this->con1;
	  $qry1 = mysqli_query($con1, "select * from `matches_2018` where `matchid` like '%G$gid%' and `status`='active' ");
		if(mysqli_affected_rows($con1) != 1){
		echo $gid, ' ', mysqli_affected_rows($con1);
			echo "<p>match was not started..</p>";
		}
		else{		
		echo "<small>";
		$team1name=$team2name="";
		while($res = mysqli_fetch_array($qry1)){
		  $matchid = $res['matchid'];
		  $team1id =$res['team1id'];
		  $team2id =$res['team2id'];
		  $team1clgname = $this->get_collegename($res['team1id']);
		  $team2clgname = $this->get_collegename($res['team2id']);
		  $team1clgcode= $this->get_clgcode($res['team1id']);
		  $team2clgcode = $this->get_clgcode($res['team2id']);
		  if($res['toss_type']=='bating') $firstBat = $res['toss_teamid'];
		  else
		  if($res['toss_type']=='bowling'){
			$temp = $res['toss_teamid'];			
 		    $firstBat = ($team1id==$temp)?$team2id:$team1id;
		  }
		  // $firstBat = substr($firstBat,3,5);
		  // echo $firstBat, ' ', $matchid;
		  // $matchdetails = $res;
		  break;
		}
		$vs1 = $team1clgcode.' Vs '. $team2clgcode;
		$vs2 = $team1clgname.' <br><small><u>Vs</u></small><br>'. $team2clgname;
		$Vs2 = $team1clgname.' Vs '. $team2clgname;
		
		switch($gid){
			case 1: header("Refresh:5; url=groundscore.php?id=1"); break;
			case 2: header("Refresh:5; url=groundscore.php?id=2"); break;
			case 3: header("Refresh:5; url=groundscore.php?id=3"); break;
			case 4: header("Refresh:5; url=groundscore.php?id=4"); break;
			}
		echo "<div>";
echo "<center><b>Ground-$gid ($groundNames[$gid])</div>";
include('matchSchedule.php');
?>
<div class='container'>
  <main id="main">
    <section id="services">
      <div class="container wow fadeIn" style='margin-bottom:0pt'>
        <div class="section-header" style='margin-bottom:0pt'>
          <h3 class="section-title">Match Summary</h3>
          <div class="section-description" style='font-size:20pt; margin-bottom: -10pt;'><?php echo $vs2; ?></div>
        </div>
		<p style='font-size:14pt; margin-bottom:0pt; color:green'> 
		<?php echo "<u>",($team1id==$res[5]?$team1clgname:$team2clgname),"</u> won the TOSS and choosen ", $res[6], "<br> Match schedule is ", matchSchedule(substr($res[0],5,1)); ?> </p>
        <div class="row" style='margin-top:0pt'>
          <div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
		  <center>1<sup>st</sup>Innings</center>
            <div class="box">
              
              <p id="ground1" style='margin:0px 0 0 0'>
			  <?php
			  $qry2 = mysqli_query($con1, "select * from `batting` where `matchid` = '$matchid' ");
		if( mysqli_affected_rows($con1)>0){
		echo "<table border=1 style='display:inline-block' title='$Vs2'>";
		echo "<tr><th rowspan=2>Name of the<br>Batsman</th><th colspan=6>Runs</th><th rowspan=2>Total<br>Runs/Balls</th><th rowspan=2>Strike<br>Rate</th></tr>";
		echo "<tr><th>0s</th><th>1s</th><th>2s</th><th>3s</th><th>4s</th><th>6s</th>";

		while ($res2 = mysqli_fetch_array($qry2)){
		 $playerid = $res2['playerid'];
		 $qry3=mysqli_query($con1, "select * from `players` where `playerid` = '$playerid' ");
		 while($res3 = mysqli_fetch_array($qry3))
		  $playername = $res3['name'];
		 echo "<tr><td>$playername</td><td>",$res2['n0'],"</td><td>",$res2['n1'],"</td><td>",$res2['n2'],"</td><td>",$res2['n3'],"</td><td>",$res2['n4'],"</td><td>",$res2['n6'],"</td>";
		 $tot = $res2['n1']*1 + $res2['n2']*2 + $res2['n3']*3 + $res2['n4']*4 + $res2['n6']*6;
		 $ballcount = $res2['n0'] + $res2['n1'] + $res2['n2'] + $res2['n3'] + $res2['n4'] + $res2['n6'];
		 echo "<td>$tot / $ballcount</td><td>", round(($tot / $ballcount)*100,2) ,"</td><tr>";	 
		 }
		 echo "<tr style='text-align:center;background-color:Red; color:white'><td>......</td><td colspan=8></td></tr></table>";		 
		} //affected rows
		?>
			  
  			  </p>
            </div>
			</div>
		
		<div class="col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <center>2<sup>nd</sup>Innings</center>
			<div class="box">
              
              <p id="ground1" style='margin:0px 0 0 0'>
  			  </p>
            </div>
			</div>			
          </div>
		</div>
</section>

<?php
echo "</center>";
		
	}
  }
}

$object = new ground1();
$object->set_ground1($groundid);
$object->set_Connection();
$object->getScore();

