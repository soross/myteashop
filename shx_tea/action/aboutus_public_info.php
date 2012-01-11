<?php

$leftMenu = getRows("comm_code where isshow>0 order by isshow",$db);
$smarty->assign("leftmenu",$leftMenu);


$guide_left  = getInfo("comm_code where type_name='Guide_Left'",$db);
$smarty->assign("GuideInfoLeft",html_entity_decode($guide_left[type_value]));


$flashPic = getRows("comm_code where type_name='TopFlashImage'",$db);
$smarty->assign("TopFlashImage",$flashPic);


?>
