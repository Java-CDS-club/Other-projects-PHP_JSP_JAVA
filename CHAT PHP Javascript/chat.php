<?php
setcookie("user","any",time()+3600);
$myfile="online.txt";
$content=fopen($myfile,'r+') or die('can not open file');
$content2=fopen($myfile,'r') or die('can not open file');
$data=fread($content2,filesize($myfile));
if(($_POST['user']=='apb' || $_POST['user']=='abhi' ) && $_POST['password']=='loveushona')
{
setcookie("user",$_POST['user'], $expire);
$str=$_POST['user'].' at '.date("d-m-y")." ".date(G).":".date(i).":".date(s).'<br>'.chr(13).chr(10).$data;
fputs($content,$str);
echo "<script>location.href='msg.php';</script>";
}
elseif($_POST['user']!='' && $_POST['password']!='')
{
echo "<blink><b>username and password do not match<br></blink></b>";
}
fclose($content);
?>
<html>
<body bgcolor="#333333">
<font color="#FFFF66">
<form id="form1" name="form1" method="post" action="chat.php">
  <label>username
  <input type="text" name="user" />
  </label>
  <p>
    <label>password
    <input type="password" name="password" />
    </label>
  </p>
  <p>
  
    <input type="submit" name="Submit" value="Submit" />
   
    <input type="reset" name="Reset" value="Reset" />
    
  </p>
  <p>&nbsp;</p>
</form>
</html>
<?php
$myfile="online.txt";
$content=fopen($myfile,'r+') or die('can not open file');
$content2=fopen($myfile,'r') or die('can not open file');
$data=fread($content2,filesize($myfile));
fclose($content);
echo "welcome user last 5 login are :<br>";
$chunk=explode('<br>',$data);
echo $chunk[0].'<br>';
echo $chunk[1].'<br>';
echo $chunk[2].'<br>';
echo $chunk[3].'<br>';
echo $chunk[4].'<br>';
?>