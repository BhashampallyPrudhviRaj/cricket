<?php
// source .. from srtrophy/entry/test1.php


date_default_timezone_set('Asia/Calcutta');
session_start();
include('getTeamNames.php');
include("../Database/dbConnect.php");
$con = getConnection();
$matchid = $_SESSION['matchid'];
$tablename = $matchid;


/*
echo 'batsman=', $_REQUEST['batsman'];
echo '<br>bowler = ', $_REQUEST['bowler'];
echo '<br>type of ball (wide)' , isset($_REQUEST['wide'])?$_REQUEST['wide']:"NA";
echo '<br>Runs = ', isset($_REQUEST['runs'])?$_REQUEST['runs']:"NA";
echo '<br>Byes = ', isset($_REQUEST['byes'])?$_REQUEST['byes']:"NA";
echo '<br>Overthrows = ', isset($_REQUEST['overthrow'])?$_REQUEST['overthrow']:"NA";
echo '<br>wicketfall = ', isset($_REQUEST['wicketfall'])?$_REQUEST['wicketfall']:"NA";
$extra=0;
if(isset($_REQUEST['wide'])) { 
	$extra=1;
	if(isset($_REQUEST['runs']))
		$extra += $_REQUEST['runs'];
	}
else
if(isset($_REQUEST['overthrow'])) $extra=$_REQUEST['overthrow'];
else
if(isset($_REQUEST['byes'])) $extra = $_REQUEST['byes'];
else $runs=0;
echo "<br>Extra Runs = ", $extra;
*/
$inning = $_POST['inning'];
$batsmanid = $_POST['batsman'];
$bowlerid = $_POST['bowler'];
$overs = $_POST['overcount'];
$balls = $_POST['ballcount'];
$score = $_POST['runs'];
$scoretype = $_POST['scoretype']; //FreeHit Hit LegBye	|| Wide Noball
$outtype = $_POST['outtype']=='Notout'?'.':$_POST['outtype'];

// echo $tablename;
$qry1 = mysqli_query($con, "select * from `$tablename` ");
if(mysqli_affected_rows($con)==0)
{
 // echo '--',$scoretype;
 $innings=1;
 if($scoretype=="Wide" || $scoretype=="Noball" || $scoretype == "MissKeeping")
  $qry2 = mysqli_query($con, "insert into `$tablename` (`inning`, `batsmanid`, `bowlerid`, `overs`, `balls`, `score`, `scoretype`, `extra`, `extratype`, `outtype`, `fielderid`)  values ('$innings', '$batsmanid', '$bowlerid', '0', '1', '0', '.', '$score', '$scoretype', '.', '.')");
 else
  $qry2 = mysqli_query($con, "insert into `$tablename` (`inning`, `batsmanid`, `bowlerid`, `overs`, `balls`, `score`, `scoretype`, `extra`, `extratype`, `outtype`, `fielderid`)  values ('$innings', '$batsmanid', '$bowlerid', '0', '1', '$score', '$scoretype', '0', '.',  '.', '.')");
}
else
{
 $t1 = mysqli_query($con, "select max(`overs`) from `$tablename`");
 while($r1 = mysqli_fetch_array($t1)) $movers = $r1[0];
 // echo $movers;
 $t1 = mysqli_query($con, "select max(`balls`) from `$tablename` where `overs`=$movers");
 while($r1 = mysqli_fetch_array($t1)) $mballs = $r1[0];
 if($movers==3 && $mballs==6){$innings=2;$overs=0; $balls=0;}


 $innings=1;
 $q3 = mysqli_query($con, "select MAX(`overs`) as `overs` from `$tablename` where `inning`=$innings");
 while($r3 = mysqli_fetch_array($q3))
  $overs = $r3['overs'];
 $q4 = mysqli_query($con, "select MAX(`balls`) as `balls` from `$tablename` where `overs` = $overs and `inning`=$innings");
 while($r4 = mysqli_fetch_array($q4))
  $balls = $r4['balls'];
 if($balls==6){
  $overs++;
  $balls=0;
 }
 

 
 if($scoretype=="Wide" || $scoretype=="Noball")
  $qry4 = mysqli_query($con, "insert into `$tablename` (`inning`, `batsmanid`, `bowlerid`, `overs`, `balls`, `score`, `scoretype`, `extra`, `extratype`, `outtype`, `fielderid`)  values ('$innings', '$batsmanid', '$bowlerid', '$overs', '$balls', '0', '.', '$score', '$scoretype', '.', '.')");
  else
  {
   $bcount = $balls+1;
   if($scoretype=="MissKeeping")
    $qry5 = mysqli_query($con, "insert into `$tablename` (`inning`, `batsmanid`, `bowlerid`, `overs`, `balls`, `score`, `scoretype`, `extra`, `extratype`, `outtype`, `fielderid`)  values ('$innings', '$batsmanid', '$bowlerid', '$overs', '$bcount', '0', '.', '$score', '$scoretype', '$outtype', '.')");
   else
    $qry5 = mysqli_query($con, "insert into `$tablename` (`inning`, `batsmanid`, `bowlerid`, `overs`, `balls`, `score`, `scoretype`, `extra`, `extratype`, `outtype`, `fielderid`)  values ('$innings', '$batsmanid', '$bowlerid', '$overs', '$bcount', '$score', '$scoretype', '0', '.',  '$outtype', '.')");
  }
}


echo "<script>history.go(-1)</script>";
?>