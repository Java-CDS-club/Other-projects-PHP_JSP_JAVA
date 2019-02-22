<style type="text/css">
<!--
#id1 {
	background-repeat: no-repeat;
	position: absolute;
	left: 411px;
	top: 101px;
	width: 355px;
	height: 271px;
	z-index: 2;
}
body {
	background-repeat: no-repeat;
	background-color: #2F455C;
}
#image {
	position: absolute;
	left: 375px;
	top: 61px;
	z-index: 1;
}
-->
</style>
<div id="id1">
<div>
<?php
$name=$_POST[name];
$pass=$_POST[pass];
if(mysqli_connect_errno())
{
echo "unable to connect to database".mysqli_connect_error();
}
$sql="SELECT * FROM users WHERE username='".$name."' AND password='".$pass."'";
$con=mysqli_connect('localhost','root','vertrigo','zingaroo');
$result= mysqli_query($con,$sql);
while($chunk = mysqli_fetch_array($result))
{
//user exist;
echo "welcome".$_POST[name];
echo "you would be shortly redirected to service page"."<script>setTimeout(location.href='services.php?usrname=".$_POST[name]."')</script>";
}
{
echo "<b><font color='black' size=26>username and password do not match</font>";
echo "<br><font color='red'><a href=newuser.php>register as new user</a></font>";
}

?>
</div>
</div> 
<div id="image">
<img src="back6.jpg" width="480" height="384" /></div>
