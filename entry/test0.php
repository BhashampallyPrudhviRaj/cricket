<?php
session_start();
$_SESSION['toss_team_id']=$_POST['toss_teamid'];
$_SESSION['tosstype']=$_POST['tosstype'];
// echo $_SESSION['toss_team_id'];
// echo  $_SESSION['tosstype'];
 echo "<script>window.open('test1.php','_self')</script>";
?>