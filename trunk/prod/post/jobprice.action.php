<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addJobprice"==$_POST[task]){
	$db->query("select * from jobprice where prodid='".$_POST[prodid]."' and jobid='".$_POST[jobid]."'");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		$db->query("insert into jobprice(jobid,prodid,prodjobname,jobprice)" .
				"values('$_POST[jobid]','$_POST[prodid]','$_POST[prodjobname]','$_POST[jobprice]')");
		echo "<script>if(confirm('新增成功,是否继续新增?')){location.href='../addjobprice.php';}else{location.href='../jobpricelist.php';}</script>";
	}else{
		echo "<script>alert('该产品工序价格存在!');location.href='../addjobprice.php';</script>";
	}
}else if(isset($_GET[task]) && "delJobprice"==$_GET[task]){
	$db->query("delete from jobprice where id = '$_GET[del_id]'");
	echo "<script>alert('删除成功?');location.href='../jobpricelist.php';</script>";
}else if(isset($_POST[task]) && "updJobprice"==$_POST[task]){
		$db->query("update jobprice set jobid='$_POST[jobid]',prodid='$_POST[prodid]',prodjobname='$_POST[prodjobname]',prodprice='$_POST[prodprice]' where id='$_POST[id]'");
		echo "<script>alert('修改成功!');location.href='../jobpricelist.php';";
}



?>
