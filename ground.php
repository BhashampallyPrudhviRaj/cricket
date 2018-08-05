<style>
th,td{height:0pt;margin:0px 0px 0px 0px;min-width:18pt;}
th{font-size:10px;}
td{font-size:12px;}
#center{text-align:center;}
</style>
<?php
session_start();
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
	  	  return $res3['clgcode'];
	}
	public function getScore()
	{
		$gid = $this->ground_id;
		echo "<p";
		include('groundNames.php');
		$groundNames=groundNames();
		$con1 = $this->con1;
		$qry1 = mysqli_query($con1, "select * from `matches_2018` where `matchid` like '%G$gid%' and `status`='active' ");
		if(mysqli_affected_rows($con1) != 1){
			echo "<a href='' title='match was not activated.. at Ground$this->ground_id'>",$groundNames[$this->ground_id];
			echo "<br>match was not activated..</a></p>";
			// echo mysqli_affected_rows($con1);
		}
		else{		
		echo "<small>";
		$team1name=$team2name="";
		while($res = mysqli_fetch_array($qry1)){
		  $matchid = $res['matchid'];
		  $team1clgname = $this->get_collegename($res['team1id']);
		  $team2clgname = $this->get_collegename($res['team2id']);
		  // $team1clgcode = $this->get_clgcode($res['team1id']);
		  // $team2clgcode = $this->get_clgcode($res['team2id']);
		  $team1clgcode = $res['team1id'];
		  $team2clgcode = $res['team2id'];
		}
		$vs1 = $team1clgcode.' Vs '. $team2clgcode;
		$vs2 = $team1clgname.' Vs '. $team2clgname;
		
		echo "<p title='$vs2' style='height:0px'>";
		echo "<a style='color:Green' href='groundscore.php?id=$gid' title='Click here to get Detailed score of Ground$this->ground_id'>",$vs1, " at ", $groundNames[$this->ground_id],"</a>";
		
		$qry2 = mysqli_query($con1, "select distinct(`batsmanid`) from `$matchid` where `outtype` = '.' ");
		if( mysqli_affected_rows($con1)>0){
		echo "<table border=1 style='display:inline-block' title='$vs2' class='table-responsive; align:center'>";
		echo "<tr><th rowspan=2>Name of the<br>Batsman</th><th colspan=6>Runs</th><th rowspan=2>Total<br>Runs/Balls</th><th rowspan=2>Strike<br>Rate</th></tr>";
		echo "<tr><th>.</th><th>1</th><th>2</th><th>3</th><th>4</th><th>6</th>";

		while ($res2 = mysqli_fetch_array($qry2)){
		 $playerid = $res2['batsmanid'];
		 
		 $qry3=mysqli_query($con1, "select * from `players` where `playerid` = '$playerid' ");
		 while($res3 = mysqli_fetch_array($qry3))
		  $playername = $res3['name'];
		  
		echo "<tr><td>$playername</td>";
		$n=array(0,1,2,3,4,6);
		$nscore=array(0,0,0,0,0);
		$balls=0;
		$score=0;
		for($i=0; $i<6; $i++){
		$qry4=mysqli_query($con1, "select count(`score`) as `value` from `$matchid` where `batsmanid`='$playerid' and `score`='$n[$i]' and `extratype`='.'");
		 while($res4 = mysqli_fetch_array($qry4))
		  $x = $res4['value'];
		  $nscore[$i]=$x;
		  $balls +=$nscore[$i];
		  echo "<td>", $nscore[$i]?$nscore[$i]:' ', "</td>";
		 }
		 for($i=1; $i<6; $i++) $score += ($nscore[$i]*$n[$i]);
		 
		 echo "<td>$score / $balls</td><td>", $score?round(($score/$balls)*100,2):0 ,"</td><tr>";
		 
		  $tot=10; $ballcount=2;
		 // echo "<tr><td>$playername</td><td>";//,$res2['n0'],"</td><td>",$res2['n1'],"</td><td>",$res2['n2'],"</td><td>",$res2['n3'],"</td><td>",$res2['n4'],"</td><td>",$res2['n6'],"</td>";
		 // $tot = $res2['n1']*1 + $res2['n2']*2 + $res2['n3']*3 + $res2['n4']*4 + $res2['n6']*6;
		 // $ballcount = $res2['n0'] + $res2['n1'] + $res2['n2'] + $res2['n3'] + $res2['n4'] + $res2['n6'];
		 // echo "<td>$tot / $ballcount</td><td>", round(($tot / $ballcount)*100,2) ,"</td><tr>";	 
		 }
		 // echo "<tr style='text-align:center;background-color:Red; color:white'><td>Last Wicket...</td><td colspan=8></td></tr>";
		 echo "</table>";
		 echo "</br>Current Over : ";
		 echo "</br>Overs : ", "Runs : " , "Extras : ", "Total Runs : ", "Run Rate : ";
		 $qryCO = mysqli_query($con1, "select max(`overs`) from `$matchid`");
		 while($resCO=mysqli_fetch_array($qryCO))
		  $currentOver = $resCO[0];
		  
		 $qryCO = mysqli_query($con1, "select * from `$matchid` where `overs`=$currentOver");
		 echo "<center><table border=1 class='table-responsive; align:center'><tr>";
		 // while($resCO=mysqli_fetch_array($qryCO))  // 1st row
		   // echo "<td>",$resCO['overs'], '.', $resCO['balls'];
		 echo  "</tr><tr>";		  
		 $qryCO = mysqli_query($con1, "select * from `$matchid` where `overs`=$currentOver");
		 while($resCO=mysqli_fetch_array($qryCO))	// 2nd row
		  if($resCO['extratype']=='.')
		    echo "<td id='center'>", $resCO['score'];
		  else
		   if($resCO['extra']>0)
		    echo "<td id='center'>", substr($resCO['extratype'],0,4), $resCO['extra'];
		   else
		    echo "<td id='center'>",substr($resCO['extratype'],0,4);
			
		 echo "</tr></table>";
		 echo "</div>";
		} //affected rows
		else
		 echo "<br>Toss just completed..";
		 
		}
		
		echo "</center> </small>";
		echo "</p>";
		}
	
}


$object = new ground1();
$object->set_ground1($groundid);
$object->set_Connection();
$object->getScore();

//header("Refresh:1; url=ground1.php");
// $x=rand(10,20);
?>

<?php
// for($i=1; $i<=5; $i++)
// echo "<small>hi.. ", $msg, "<br></small>";


?>