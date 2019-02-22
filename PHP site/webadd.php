<style type="text/css">
<!--
#php {
	position: absolute;
	left: 351px;
	top: 47px;
	width: 483px;
	height: 387px;
	background-image: url(back6.jpg);
	background-repeat: no-repeat;
	text-align: center;
	vertical-align: middle;
	text-decoration: blink;
}
#php_text {
	position: absolute;
	left: 44px;
	top: 64px;
	width: 371px;
	height: 245px;
	font-size: 24px;
}
body {
	background-color: #2E445B;
}
-->
</style>
<div id="php">
<div id="php_text">
<?php
if ($_COOKIE['auth'] == "yes")
{
$webname=$_GET['webname'];
$webdes=$_GET['webdes'];
$type=$_GET['type'];
echo "<a href='websites/webtrack.php?webname=".$webname."'>".$webname."</a>"."<br />";
echo "<br />".$type."<br />";
echo $webdes;
$mix="<a href='websites/webtrack.php?webname=".$webname."'>".$webname."</a>"."<br />"."<font color=#FF00CC>type:".$type."</font><br />"."description:".$webdes."<br />";
$webfile="websites/weblog.txt";
$file=fopen($webfile,"r") or die("cant open file");
$file2=fopen($webfile,"r+") or die("cant open file");
$content=fread($file,filesize($webfile));
$content2=$mix.chr(13).chr(10).chr(13).chr(10).$content;
fputs($file2,$content2);
fclose($file);
echo "<script>location.href='webshow.php';</script>";
}
else
{
echo " please <a href=usersection.php>login</a> or <a href=newuser.php>register</a> to post your web url";
}

?>
</div>
</div>
