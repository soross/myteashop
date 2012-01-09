<?php

$flashPic = getRows("comm_code where type_name='TopFlashImage'",$db);
$smarty->assign("TopFlashImage",$flashPic);


$prodtype = getRows("prod_type order by seq",$db);
$smarty->assign("ProdTypt",$prodtype);

?>
