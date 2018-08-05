<?php
//srtrophy/login/index.php
?>
<head>
 <link href="css/style1.css"  rel = "stylesheet" media="screen">
</head>
<script>
function dothis()
{
 document.getElementById('username').focus();
}
</script>
<body onload="dothis()">
<form name='index.php' method='POST' action='check.php'>
<center>

<?php
include('../entry/header.php');
?>
<div>
Login Information
<table border=1 class='table-responsive'>
 <tbody>
  <tr> <td> Username </td> <td> <input type='text' name='username' id='username' tabindex=1> </td></tr>
  <tr> <td> Password </td> <td> <input type='password' name='password'> </td></tr>
  <tr> <td colspan=2 class='center'> <input type='submit' value='Login'> <input type='reset' value='Reset'> </td> </tr>
 </tbody>
</table>
</div>

</center>