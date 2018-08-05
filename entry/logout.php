<?php
session_start();
if(isset($_SESSION['username']))
{
	// echo "Thank you... ", $_SESSION['username'] ," logged out successfully..";
	$_SESSION['username']="";
	session_destroy();
}
 echo "<script> window.open('../login/', '_self')</script>";
?>