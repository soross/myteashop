<?php

$flashPic = getRows("comm_code where type_name='TopFlashImage'",$db);
$smarty->assign("TopFlashImage",$flashPic);


$type = getRows("news_type order by seq",$db);
$smarty->assign("newsType",$type);

?>
