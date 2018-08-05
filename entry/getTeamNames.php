<?php
date_default_timezone_set('Asia/Calcutta');
function getTeamNames($teamid, $con){
 $con = getConnection();
 $qry = mysqli_query($con, "select * from `players` where `teamid` = '$teamid'");
 $data[0][0]="";
 $i=0;
 // echo mysqli_affected_rows($con);
 while($res = mysqli_fetch_array($qry)){
  $data[$i++] = $res;
  }
 return $data;
}

function getBowlersNames($teamid, $con){
 $con = getConnection();
 $qry = mysqli_query($con, "select * from `players` where `teamid` = '$teamid' and `bowl_type` not like 'None'");
 $data[0][0]="";
 $i=1;
 // echo mysqli_affected_rows($con);
 while($res = mysqli_fetch_array($qry)){
  $data[$i++] = $res;
  }
  $data[0][0]=$i-1;
 return $data;
}