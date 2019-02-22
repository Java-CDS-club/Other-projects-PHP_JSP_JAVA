<?php
session_start();
$_SESSION['online']="yes";
echo "<font color='white'>";
?>
<style type="text/css">
<!--
#btnred {
	background-color: #FF0000;
	position: absolute;
	//background:url(img2.GIF);
	left: 45px;
	top: 209px;
	width: 17px;
}
/*#back {
	position: absolute;
	left: 81px;
	top: 51px;
	width: 493px;
	height: 326px;
	z-index: -2;
	background:url(background/2.jpg);
}
*/
#btnblu {
	background-color: #0000FF;
	position: absolute;
	left: 73px;
	top: 209px;
	width: 17px;
}
#btnylow {
	background-color: #FFFF00;
	position: absolute;
	left: 133px;
	top: 209px;
	width: 17px;
	color: #000000;
}
#btnpink {
	background-color: #FF66FF;
	position: absolute;
	left: 104px;
	top: 209px;
	width: 17px;
}
#btntheme {
	background-color: #999999;
	position: absolute;
	left: 298px;
	top: 209px;
	width: 55px;
	color: #3300FF;
	height: 20px;
}
#blink {
	position: absolute;
	left: 167px;
	top: 209px;
	width: 55px;
	height: 20px;
	color:#3300FF;
	background-color: #999999;
}

#btnmoving {
	position: absolute;
	left: 232px;
	top: 209px;
	width: 55px;
	height: 20px;
	color:#3300FF;
	background-color: #999999;
}

#clrall {
	position: absolute;
	left: 367px;
	top: 209px;
	width: 55px;
	height: 20px;
	color:#3300FF;
	background-color: #999999;
}
#form1 {
	position: absolute;
	width: 533px;
	top: 64px;
	left: 30px;
}
#code {
	position: absolute;
	left: 40px;
	top: 244px;
	color: #660000;
}
-->
</style>
<body bgcolor="#333333">


<script>
function t1()
{
var x=document.getElementById("textarea1");
var temp="[red]"+x.value+"[red]";
x.value=temp;
}
function t2()
{
var x=document.getElementById("textarea1");
var temp="[blue]"+x.value+"[blue]";
x.value=temp;
}
function t3()
{
var x=document.getElementById("textarea1");
var temp="[yellow]"+x.value+"[yellow]";
x.value=temp;
}
function t4()
{
var x=document.getElementById("textarea1");
var temp="[pink]"+x.value+"[pink]";
x.value=temp;
}
function t5()
{
var x=document.getElementById("textarea1");
var temp="[blink]"+x.value+"[blink]";
x.value=temp;
}

function resetfun()
{
var x=document.getElementById("textarea1");
var temp="";
x.value=temp;
}

function theme()
{
var x=document.getElementById("textarea1");
var temp="[theme]"+x.value+"[theme]";
x.value=temp;
}
function moving()
{
var x=document.getElementById("textarea1");
var temp="[marquee]"+x.value+"[marquee]";
x.value=temp;
}

</script>

<form id="form1" name="form1" method="post" action="msg.php">
  <p>
    <label>
    <b><font color=white>
    Message
	</b>
    <textarea name="textarea" id="textarea1"></textarea>
    </label>
  </p>

  <p>
    <label>
    <input type="submit" name="Submit" value="Send" />
    </label>
    <a href=code.php><b>secret code</a>
  </p>
  <p>&nbsp;</p>
</form>
<div>
<button onClick="t1()" id="btnred">r</button>
<button name="btnblu" id="btnblu" onClick="t2()">b</button>
<button onClick="t3()" id="btnylow">y</button>
<button name="btnpink" id="btnpink" onClick="t4()">p</button>
<button name="blink" id="blink" onClick="t5()"><strong>blink</strong></button>
<button name="moving" id="btnmoving" onClick="moving()"><strong>moving</strong></button>
<button name="clrall" id="clrall" onClick="resetfun()"><strong>clear</strong></button>
<button name="theme" id="btntheme" onClick="theme()"><strong>theme</strong></button>
</div>
<div id="code">
<?php
if(($_COOKIE['user']=='abhi')||($_COOKIE['user']=='apb'))
{
$myfile="chat.txt";
$data1=fopen($myfile,'r+') or die('can not open file');
$data2=fopen($myfile,'r') or die('can not open file');
$content=fread($data2,filesize($myfile));
if($_COOKIE['user']=="abhi")
{
$colr='red';
}
else
{
$colr='blue';
}
if($_POST['textarea']!="")
{
	$usekonkra=$_COOKIE['user'];
	if($usekonkra=="abhi")
	{
	$msgcolr="#CCCCCC";
	}
	else
	{
	$msgcolr="pink";
	}
$msg="<br>#<b><font color='".$colr."'>".$_COOKIE['user']." </font>:</b><font color='".$msgcolr."'>".$_POST['textarea']."<br>".date("d-m-y")." ".date(G).":".date(i).":".date(s).'<br>'.chr(13).chr(10).$content;

$msg2=explode('[img]',$msg);
$result=$msg2[0]."<img src=".$msg2[1]." height=150 width=150 />".$msg2[2];

$clr1=explode('[red]',$result);
$result=$clr1[0]."<font color=red>".$clr1[1]."</font>".$clr1[2];

// blue
//


$clr1=explode('[blue]',$result);
$result=$clr1[0]."<font color=blue>".$clr1[1]."</font>".$clr1[2];

// yellow
//


$clr1=explode('[yellow]',$result);
$result=$clr1[0]."<font color=yellow>".$clr1[1]."</font>".$clr1[2];

// pink
//


$clr1=explode('[pink]',$result);
$result=$clr1[0]."<font color=pink>".$clr1[1]."</font>".$clr1[2];

// blink
//


$clr1=explode('[blink]',$result);
$result=$clr1[0]."<blink>".$clr1[1]."</blink>".$clr1[2];

// marquee
//


$clr1=explode('[marquee]',$result);
$result=$clr1[0]."<marquee>".$clr1[1]."</marquee>".$clr1[2];


//background
//

$clr1=explode('[theme]',$result);
$theme=$clr1[1];

//
// sheck whether clrl[1] getting null or not
//

if($theme==""||$theme==NULL)
{
$settingfile=$_COOKIE['user']."config".".txt";
$datasetting=fopen($settingfile,'r+') or die('can not open file');
$theme=fread($datasetting,sizeof($settingfile));
}
else
{
$settingfile=$_COOKIE['user']."config".".txt";
$datasetting=fopen($settingfile,'r+') or die('can not open file');
fputs($datasetting,$theme);
}


$result=$clr1[0]."Theme changed to :".$clr1[1]."".$clr1[2];

fputs($data1,$result);
echo "<font color='red'><blink>your message delivered <br></blink></font>";
$content=$result;
}
echo "last recent messages are<br>";
$chunk=explode('#',$content);
echo $chunk[0]."<br>";
echo $chunk[1]."<br>";
echo $chunk[2]."<br>";
echo $chunk[3]."<br>";
echo $chunk[4]."<br>";
echo $chunk[5]."<br>";
echo $chunk[6]."<br>";
echo $chunk[7]."<br>";
echo $chunk[8]."<br>";
echo $chunk[9]."<br>";
echo $chunk[10]."<br>";
echo $chunk[11]."<br>";
echo $chunk[12]."<br>";
echo $chunk[13]."<br>";
echo $chunk[14]."<br>";
echo $chunk[15]."<br>";
fclose($data1);
fclose($data2);

}
else
{
echo "your browser has problem";
echo "<br>go back to <a href='chat.php'>login page</a>";
}
?>
</div>
<div id="back" style="position:absolute;left:31px;top:51px;width:493px;height:326px;z-index:-2;background:url(background/<?php echo $theme;?>.jpg);background-repeat:no-repeat;"></div>

</body>