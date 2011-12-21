<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addCollege"==$_POST[task]){
	$query = $db->query("select * from college where  lang='".$_POST[lang]."'  and type_id='".$_POST[type]."' ");
	$cnt = $db->db_num_rows();
	if($cnt<1){
		$db->query("insert into college(type_id,content,create_date,remark,lang) values('$_POST[type]','".addslashes($_POST[content])."',now(),null,'$_POST[lang]')");
		echo "<script>if(confirm('宝迪学院知识增加成功,是否继续发布?')){location.href='../addcollege.php';}else{location.href='../college.php';}</script>";
	}else{
		echo "<script>alert('该知识类型+语言种类已经存在,添加失败,请到知识列表中查看修改!');location.href='../addcollege.php';</script>";
	}
}else if(isset($_POST[task]) && "updateCollege"==$_POST[task]){
	$query = $db->query("select * from college where  lang='".$_POST[lang]."'  and type_id='".$_POST[type]."' ");
	$cnt = $db->db_num_rows();
	while($info=$db->fetch_array($query)){
   	$id = $info[id];
	}

	if($cnt==1&&$id==$_POST[newid]){
	$db->query("update college set type_id='$_POST[type]',content='".addslashes($_POST[content])."',lang='$_POST[lang]' where id='".$_POST[newid]."'");
	echo "<script>if(confirm('宝迪学院知识修改成功,是否继续修改?')){location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';}else{location.href='../college.php';}</script>";
	}
	else if($cnt<1){
	$db->query("update college set type_id='$_POST[type]',content='".addslashes($_POST[content])."',lang='$_POST[lang]' where id='".$_POST[newid]."'");
	echo "<script>if(confirm('宝迪学院知识修改成功,是否继续修改?')){location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';}else{location.href='../college.php';}</script>";

	}
	else{
	echo "<script>alert('该知识类型+语言种类已经存在,更新失败,请到知识列表中查看修改!');location.href='../updatecollege.php?task=toUpdateCollege&collegeid=".$_POST[newid]."';</script>";
	}
}
else if(isset($_GET[task])&&"deleteCollege" ==$_GET[task]){
	$db->query("delete from college where id = '$_GET[newsid]'");
	echo "<script>alert('宝迪学院知识删除成功?');location.href='../college.php';</script>";

}
else if(isset($_POST[task]) && "alldelCollege"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from college where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('删除成功！');location.href='../college.php';</script>");
}else{
echo("<script type='text/javascript'>alert('删除成功失改！');location.href='../college.php';</script>");
}
}

?>
