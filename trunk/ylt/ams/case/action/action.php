<?php
require_once("../../action/global_post.php");
require_once("../../util/icove.php");
//ajax获取方案列表 不包括已经为方案的
if(isset($_POST[task]) && "getProdListByClassCode"==$_POST[task]){
	$query = $db->query("select * from prod where state='0' and prod_class='$_POST[prodClassCode]'");
	$out = "<option value='-1'>请选择产品名称</option>";
	while($row= $db->fetch_array($query)){
		$out.="<option value='".$row[id]."'>".$row[prod_name]."</option>";
	}
	if(!empty($out)){
		echo escape($out);
	}else{
		echo "ERROR";
	}
}

//方案转案例
else if(isset($_POST[task]) && "addCase"==$_POST[task]){
	$db->query("update prod set prod_link='$_POST[prod_link]',compary='$_POST[compary]',case_info_url='caseinfo.php?id=$_POST[prodid]', state='1' where id='$_POST[prodid]'");
	echo "<script>location.href='../caselist.php'</script>";
}
?>
