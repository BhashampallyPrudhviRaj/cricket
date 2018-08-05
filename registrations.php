<style>
th{background-color:gray;color:yellow;font-size:12px;border-color:yellow;}
tr:nth-child(odd) {background: 	#F0FFF0}
tr:nth-child(even) {background: #FAFAD2}
</style>
<?php
include('matchSchedule.php');
function listt($con, $t)
{
$qry = mysqli_query($con, "select * from `teamid` order by `sno`");
// echo "welcome";
echo "<table class='table-responsive' border=1>";
echo "<tr><th>Sl.No.<th>College Code<th>College Name</th><th>Sl.No.<th>College Code<th>College Name<th>Sl.No.<th>College Code<th>College Name</th></tr>";
$i=0;
$list[0][0]="";
while ($res = mysqli_fetch_array($qry)) $list[$i++]=$res;

for($k=$t; $k<($t+15); $k++){
  $t1 = $list[$k][2]. ', '. $list[$k][3]. ', '. $list[$k][4];
  $t2 = $list[$k+15][2]. ', '. $list[$k+15][3]. ', '. $list[$k+15][4];
  $t3 = $list[$k+29][2]. ', '. $list[$k+29][3]. ', '. $list[$k+29][4];
  
 echo "<tr><td>",$k+1, "<td>", $list[$k][1], "<td title='$t1'>", substr($list[$k][2],0,500);
 echo "<td>",$k+16, "<td>", $list[$k+15][1], "<td title='$t2'>", substr($list[$k+15][2],0,500);
 echo "<td>",$k+31, "<td>", $list[$k+29][1], "<td title='$t3'>", substr($list[$k+29][2],0,500),"</tr>";
 }
 $k = $k + 15 + 16;
 echo "<tr><td colspan=6><td>",$k, "<td>", $list[$k-1][1], "<td>", $list[$k-1][2],"</tr>";
echo "</table>";
// echo "<table class='table-responsive' border=1>";
echo "<center>";
echo "SCHEDULE OF MATCHES TO BE HELD AT - GROUND-1, GROUND-2, GROUND-3, GROUND-4";
echo "<div class='row'>";
$qry2 = mysqli_query($con, "select * from `matches_2018` order by `matchid`");
echo "<div class='col-lg-6 col-md-6 wow fadeInRight' data-wow-delay='0.2s'>";
echo " Ground-1<table border=1>";
while($res2 = mysqli_fetch_array($qry2))
 if(substr($res2['matchid'],4,1)=='1')
 {
  $mtime = matchSchedule(substr($res2['matchid'],7,1));
  echo "<tr><td>",substr($res2['matchid'],0,2),"'-Jan-2018 <td>",$res2['team1id'], '<td>', $res2['team2id'], '<td>', $mtime, '</tr>';
 }
 echo "</table></div>";

echo "<div class='col-lg-6 col-md-6 wow fadeInLeft' data-wow-delay='0.2s'>";
echo " Ground-2<table border=1>";
$qry2 = mysqli_query($con, "select * from `matches_2018` order by `matchid`");
while($res2 = mysqli_fetch_array($qry2))
 if(substr($res2['matchid'],4,1)=='2')
 {
  $mtime = matchSchedule(substr($res2['matchid'],7,1));
  echo "<tr><td>",substr($res2['matchid'],0,2),"'-Jan-2018 <td>",$res2['team1id'], '<td>', $res2['team2id'], '<td>', $mtime, '</tr>';
 }
 echo "</table></div>";

echo "<div class='col-lg-6 col-md-6 wow fadeInLeft' data-wow-delay='0.2s'>";
echo " Ground-3<table border=1>";
$qry2 = mysqli_query($con, "select * from `matches_2018` order by `matchid`");
while($res2 = mysqli_fetch_array($qry2))
 if(substr($res2['matchid'],4,1)=='3')
 {
  $mtime = matchSchedule(substr($res2['matchid'],7,1));
  echo "<tr><td>",substr($res2['matchid'],0,2),"'-Jan-2018 <td>",$res2['team1id'], '<td>', $res2['team2id'], '<td>', $mtime, '</tr>';
 }
 echo "</table></div>";
 
echo "<div class='col-lg-6 col-md-6 wow fadeInRight' data-wow-delay='0.2s'>";
echo " Ground-4<table border=1>";
$qry2 = mysqli_query($con, "select * from `matches_2018` order by `matchid`");
while($res2 = mysqli_fetch_array($qry2))
 if(substr($res2['matchid'],4,1)=='4')
 {
  $mtime = matchSchedule(substr($res2['matchid'],7,1));
  echo "<tr><td>",substr($res2['matchid'],0,2),"'-Jan-2018 <td>",$res2['team1id'], '<td>', $res2['team2id'], '<td>', $mtime, '</tr>';
 }
 echo "</table></div>";
 }
?>