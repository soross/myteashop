<?php
include_once("../action/mysql.class.php");
if(isset($_POST[task])&&'getNewsClick'==$_POST[task]){
	$click = getListBySql("select click from news where id=".$_POST[newsid],$db);
	echo $click[0][click];
}else{
	echo "a";
}
?>
