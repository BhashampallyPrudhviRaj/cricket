<?php
function matchSchedule($mid)
{
 switch($mid)
 {
   case 1: $m = '8:00 AM to 11:00 AM'; break;
   case 2: $m = '11:00 AM to 2:00 PM'; break;
   case 3: $m = '2:00 AM to 5:00 PM'; break;
   default : $m='error_matchSchedule-'.$mid;
 }
 return $m;
}
?>