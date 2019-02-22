<?php
$_SESSIONS['user']=$name;
/*print_r($_SESSIONS);*/
$name = $_POST['name'];
$pass = $_POST['pass'];
/*echo "the typed password is ".$pass."<br />";   */
$myfile=$name.".txt";
if (file_exists($myfile))
{
/* to check file name echo $myfile; */  
$myerror="user not found please go back and register for free ";
/* 7 edit echo "<font color='blue'>"; */
/*  $file = fopen($myfile,'r') or die($myerror);  */
$file = fopen($myfile,'r') or exit("<font color='red'>"."<b>"."user not found please go back and register");
$data = fread($file,filesize($myfile));
$chunks=explode('*',$data);
/*   to see txt file password echo $chunks[0]."<br />";   */
if ($pass == $chunks[0])
{
echo "you will be redirected to services page";
echo "<script>setTimeout(location.href='service.php?usrname=".$name."',5000);</script>";
echo "<font color='red'><b>"."welcome ".$name."<br />";
echo "<font color='#FFCC33'>"."your age is : ".$chunks[1]." ";
echo "your contact no is : ".$chunks[2]."<br />";
}
else echo "<font color='yellow'>"."password is wrong"."<br />"."<b>"." To register for free : ";
}
else
echo "<font color='red'>"."<b>"."user not found please go back and register";
echo "your ip address is being locked ".$REMOTE_ADDR."<br />";
?>
<a href="register.php">register as new user</a>
<a href="service.php">continue</a>
<html>
<body></body></html>
