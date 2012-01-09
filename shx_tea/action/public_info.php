<?php

$flashPic = getRows("comm_code where type_name='TopFlashImage'",$db);
$smarty->assign("TopFlashImage",$flashPic);


?>
