<?PHP
include './admin/connect.php';
@extract($db->get_one("select * from movieinfo where id='".$_GET['id']."'"));
$db->query("update movieinfo set playnum=playnum+1 where id='".$_GET['id']."' ");
//��������
$url2="admin/";//��������·��
if($localaddress)
{
$newname=$localaddress;
$movieurl=$url2.$newname;
}
?>
<html>
<head>
<title><?php echo $title?>���߲���</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0">
<?php
//MediaPlayer����
if (eregi(".mid$",$movieurl) || eregi(".avi$",$movieurl) || eregi(".asf$",$movieurl) ||eregi(".asx$",$movieurl) || eregi(".wmv$",$movieurl) || eregi(".wma$",$movieurl))
{
?>
<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" type="application/x-oleobject" width=350 height=280 align="middle" standby="Loading Microsoft?Windows?Media Player components..." id="MediaPlayer1">
<param name="transparentAtStart" value="True">
<param name="transparentAtStop" value="True">
<param name="AnimationAtStart" value="Ture">
<param name="AutoStart" value="True">
<param name="AutoRewind" value="true">
<param name="DisplaySize" value="0">
<param name="AutoSize" value="false">
<param name="ShowDisplay" value="false">
<param name="ShowStatusBar" value="ture">
<param name="ShowControls" value="ture">
<param name="FileName" value="<?php echo $movieurl?>">
<param name="Volume" value="0">
<embed src="" width="350" height=280 autostart="True" align="middle" transparentatstart="True" transparentatstop="True" animationatstart="Ture" autorewind="true" displaysize="0" autosize="false" showdisplay="False" showstatusbar="-1" showcontrols="ture" filename="<?=$movieurl?>" volume="0">
</embed>
</object>
<?php
}elseif(eregi(".ra$",$movieurl)|| eregi(".mp3$",$movieurl) || eregi(".rm$",$movieurl) || eregi(".ram$",$movieurl) ){
//RealPlayer���ŵ�
?>
<object ID="video" CLASSID="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" HEIGHT="280" WIDTH="350" align="center">
<param name="_ExtentX" value="9260">
<param name="_ExtentY" value="6350">
<param name="AUTOSTART" value="-1">
<param name="SHUFFLE" value="0">
<param name="PREFETCH" value="0">
<param name="NOLABELS" value="0">
<param name="SRC" value="<?php echo $movieurl?>">
<param name="CONTROLS" value="ImageWindow">
<param name="CONSOLE" value="Clip1">
<param name="LOOP" value="0">
<param name="NUMLOOP" value="0">
<param name="CENTER" value="0">
<param name="MAINTAINASPECT" value="0">
<param name="BACKGROUNDCOLOR" value="#000000"><embed SRC="4.rpm" type="audio/x-pn-realaudio-plugin" CONSOLE="Clip1" CONTROLS="ImageWindow" HEIGHT="240" WIDTH="352" AUTOSTART="false">
</object>
<br>
<object ID="video" CLASSID="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" HEIGHT="40" WIDTH="350" align="center">
<param name="_ExtentX" value="9260">
<param name="_ExtentY" value="1058">
<param name="AUTOSTART" value="-1">
<param name="SHUFFLE" value="0">
<param name="PREFETCH" value="0">
<param name="NOLABELS" value="0">
<param name="CONTROLS" value="ControlPanel,StatusBar">
<param name="CONSOLE" value="Clip1">
<param name="LOOP" value="0">
<param name="NUMLOOP" value="0">
<param name="CENTER" value="0">
<param name="MAINTAINASPECT" value="0">
<param name="BACKGROUNDCOLOR" value="#000000">
<embed type="audio/x-pn-realaudio-plugin" CONSOLE="Clip1" CONTROLS="ControlPanel,StatusBar" HEIGHT="60" WIDTH="275" AUTOSTART="false">
</object>

<?php
}elseif(eregi(".swf$",$movieurl)) {
//flashplayer���ŵ�
?>
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="350" height="280">
<param name="movie" value="<?php echo $movieurl ?>">
<param name="quality" value="High">
<embed src="<?php echo $movieurl?>" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="350" height="280">
</object>
<?
}
?>