<?php
$nofile="no.txt";
$file=fopen($nofile,'r');
$file2=fopen($nofile,'r+');
$nodata=fread($file,filesize($nofile));
$nodata2=$nodata+1;
fputs($file2,$nodata2);
fclose($file);
fclose($file2);
$divide=$nodata/2;
$pos=strpos($divide,".");
if($pos >> '0')echo "odd no";
else echo "even no";
?>