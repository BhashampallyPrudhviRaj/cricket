<?php
session_start();
include("../Database/dbConnect.php");
if(isset($_POST['username']) && isset($_POST['password']) )
{
$u = trim($_POST['username']);
$p = trim($_POST['password']);
$con = getConnection();
$qry1 = mysqli_query($con, "select * from `login` where `user_id` = '$u'");
$flag=0;
$type="";
while($res1 = mysqli_fetch_array($qry1))
{
 if($res1[1]==$p){
	 $gid=$res1[2];
     $flag=1;
 }
}
if($flag){
 $_SESSION['username'] = $u;
 $gid = substr($u,4,1);
 $qry2 = mysqli_query($con, "select * from `matches_2018` where `matchid` like '____$gid%' and `status`='active'");
 if(mysqli_affected_rows==0) $_SESSION['matchid']=0;	// to check this error
 while($res2 = mysqli_fetch_array($qry2)){
 // echo "<br>",$res2['matchid'], " " , $res2['status'];
 $_SESSION['matchid'] = $res2['matchid']; 
 }
  echo "<script>window.open('../entry/', '_self');</script>";
 }
else	echo "<script>window.open('../login/', '_self')</script>";
	// header('Location:/OBE_WT');
}
?>