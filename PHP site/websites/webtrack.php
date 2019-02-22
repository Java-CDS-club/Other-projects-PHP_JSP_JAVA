<?php
$webname=$_GET['webname'];
$webtrack=$webname;
$webtrack2=str_replace('://','$',$webtrack);
$webtrack3=str_replace('.','#',$webtrack2);
$webtrack4=$webtrack3.".txt";
if(file_exists($webtrack4))
{
$file=fopen($webtrack4,"r+");
$file2=fopen($webtrack4,"r");
$file3=fread($file2,filesize($webtrack4));
$data2=$file3+1;
fputs($file,$data2);
fclose($file);
fclose($file2);
}
else
{
$file=fopen($webtrack4,"w+");
fwrite($file,"1");
fclose($file);
}
header("LOCATION: $webname");
echo $webname;
?>