<!--
var curFile = "media/MM-9-1.WMV";
var vWidth = 320;
var vHeight = 245;
var vTitle = "ÀÁÈËÍ¼¿â lanrentuku.com";

function setMediaPlayerObject(){
if(!$("playerList")) return false;
if(!$("v_info")) return false;

var objHTML = ("<object id='MediaPlayer' codeBase='http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 type=application/x-oleobject' width='"+vWidth+"' height='"+vHeight+"' classid=CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6 standby='Loading Microsoft? Windows Media? Player components...'>");
objHTML += ("<param name='URL' value='"+curFile+"'");
objHTML += ("<param name='AutoStart' value='1'>");
objHTML += ("<param name='rate' value='1'>");
objHTML += ("<param name='balance' value='0'>");
objHTML += ("<param name='currentPosition' value='0'>");
objHTML += ("<param name='defaultFrame' value=''>");
objHTML += ("<param name='playCount' value='1'>");
objHTML += ("<param name='currentMarker' value='0'>");
objHTML += ("<param name='invokeURLs' value='-1'>");
objHTML += ("<param name='baseURL' value=''>");
objHTML += ("<param name='volume' value='50'>");
objHTML += ("<param name='mute' value='0'>");
objHTML += ("<param name='uiMode' value='none'>");
objHTML += ("<param name='stretchToFit' value='1'>");
objHTML += ("<param name='windowlessVideo' value='0'>");
objHTML += ("<param name='enabled' value='-1'>");
objHTML += ("<param name='enableContextMenu' value='0'>");
objHTML += ("<param name='fullScreen' value='0'>");
objHTML += ("<param name='SAMIStyle' value=''>");
objHTML += ("<param name='SAMILang' value=''>");
objHTML += ("<param name='SAMIFilename' value=''>");
objHTML += ("<param name='captioningID' value=''>");
objHTML += ("<param name='enableErrorDialogs' value='0'>");
objHTML += ("<param name='_cx' value='8467'>");
objHTML += ("<param name='_cy' value='8467'>");
objHTML += ("<param name='AutoSize' value='1'>");
objHTML += ("</object>");

$("playerList").innerHTML = objHTML;
$("v_info").innerHTML = vTitle;
}

setOnloadEvent(setMediaPlayerObject);
//-->

