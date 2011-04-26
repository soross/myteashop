<?php

$filedir = "../newsfile/";
$srcfilepath="";
$filepath ="";
$filename = "";
if(strlen(trim($_GET[filepath]))!=0 ){
	$filepath = $_GET[filepath];
}
if(strlen(trim($_POST[filepath]))!=0){
	$filepath = $_POST[filepath];
}

if($filepath ==""){
	echo "<script>alter('该附件占不支持下载.');history.back();</script>";
	exit();
}else{
	$srcfilepath = $filepath;
	$filepath=$filedir.$filepath;
}


if(strlen(trim($_GET[filename]))!=0 ){
	$filename = $_GET[filename];
}
if(strlen(trim($_POST[filename]))!=0){
	$filename = $_POST[filename];
}

if($filename ==""){
	echo "<script>alter('该附件占不支持下载.');history.back();</script>";
	exit();
}

/*
Header("content-type:application/octet-stream");
Header("content-disposition:attatchment;filename".$filepath);
Header("Accept-Ranges: bytes");
Header("Pragma: no-cache"); // 缓存
Header("Expires: 0");
if(file_exists($filepath)&&$file=fopen($filepath,"r")){
	echo fread($filename,filesize($filepath));
	fclose($file);
}else{
	echo "<script>alter('该附件已不存在.');history.back();</script>";
	exit();
}
*/


//    mysql_query( "update   $tb_software   set   clicktime=clicktime+1   where   id= '$id ' ");
//    $sql   =   "select   *   from   $tb_software   where   id= '$id ' ";
//    $result   =   mysql_query($sql)   ;
//    $array   =   mysql_fetch_array($result);
//    $filepath   =   $array[filepath];
//    $filename   =   $array[filename];


if(!file_exists($filepath)&&is_readable($filepath))   {       //检查文件是否存在
    echo "<script>alter('该附件占不支持下载.');history.back();</script>";
    exit;
} else{
	$fp       =       fopen($filepath, "r ");       //       打开文件
	if($fp> 0){
    	$filesize   =   filesize($filepath);
  		//       输入文件标签
	    header( "Content-type:application/octet-stream ");
	    header( "Content-Disposition:attachment;filename=".$filename);
	    header( "Content-Description:PHP4   Generated   Data ");
	    //header( "Accept-Ranges:bytes ");
	    header( "Content-Length: ".$filesize);

	    $buffer_size   =   1024;
	    $cur_pos   =   0;
	    while(!feof($fp)&&(($filesize-$cur_pos)> $buffer_size)){
            $buffer   =   fread($fp,$buffer_size);
            echo   $buffer;
            $cur_pos   +=   $buffer_size;
	    }
	    $buffer   =   fread($fp,$filesize-$cur_pos);
	    echo   $buffer;
	    fclose($fp);

	    $fileid = 0;
		if(strlen(trim($_GET[fileid]))!=0 ){
			$fileid = $_GET[fileid];
		}
		if(strlen(trim($_POST[fileid]))!=0){
			$fileid = $_POST[fileid];
		}
		if($fileid != 0 && $srcfilepath != ""){
			require_once("../../db/conn.php");
			$updatesql = "update tea_newsfile set down_count = down_count+1 where filepath='".$srcfilepath."' and id='".$fileid."'";
			$rs = mysql_query($updatesql);
		}
    	exit;
    }
}







?>
