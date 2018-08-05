<?php
include('dbConnect.php');
$con = getConnection();
//03_G1_M1
//03_G1_M2
//03_G1_M3
//03_G2_M1
$match='03_G1_M1';
$qry = mysqli_query($con, "create table `$match` (`inning` char(1) not null, `batsmanid` varchar(10) not null, `bowlerid` varchar(10) not null, `overs` int(2) not null, `balls` int(2) not null, `score` int(3) not null, `scoretype` varchar(10) not null, `outtype` varchar(10), fielderid varchar(10) )");
if ($qry) echo "success..";
else echo "unsuccess..";

//sms grid, hyd

50000 4500/-
25000 2800/-

?>