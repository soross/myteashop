<?php
require_once("action/checkAamsLogin.php");
require_once("action/checkOrderPassword.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$cust = getListBySql("select c.id,c.custid,c.custname from customer c order by c.custname,c.custid",$db);
$smarty->assign("custlist",$cust);

$prod = getListBySql("select c.id,c.prodid,c.picname from prod c order by c.picname,c.prodid",$db);
$smarty->assign("prodlist",$prod);

$smarty->display("addorder.html");
?>
