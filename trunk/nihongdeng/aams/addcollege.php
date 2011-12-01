<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$rows = getRows("menu where remark='EDU' and id not in(select type_id from college)
				UNION
				select * from menu where id in (select pid from menu where remark='EDU' and id not in(select type_id from college))
				UNION
				select * from menu where pid='9' and id not in(select type_id from college)",$db);
$smarty->assign("typeRows",$rows);
//print_r($rows);

$smarty->display("addcollege.html");
?>
