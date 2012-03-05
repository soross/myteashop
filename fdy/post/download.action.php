<?php
function download($file_dir,$file_name,$name)
//参数说明：
//file_dir:文件所在目录
//file_name:文件名
{
    $file_dir = chop($file_dir);//去掉路径中多余的空格
    //得出要下载的文件的路径
    if($file_dir != ""){
        $file_path = $file_dir;
        if(substr($file_dir,strlen($file_dir)-1,strlen($file_dir)) != ""){
            $file_path .= "" ;
            $file_path .= $file_name;
        }
    }else{
        $file_path = $file_name;
    }
    //判断要下载的文件是否存在
    if(!file_exists($file_path))
    {
        echo "对不起,你要下载的文件不存在。";
        return false;
    }

    $file_size = filesize($file_path);

    header("Content-type: application/octet-stream");
    header("Accept-Ranges: bytes");
    header("Accept-Length: $file_size");
    header("Content-Disposition: attachment; filename=$name");

    $fp = fopen($file_path,"r");
    $buffer_size = 1024;
    $cur_pos = 0;

    while(!feof($fp)&&$file_size-$cur_pos>$buffer_size)
    {
        $buffer = fread($fp,$buffer_size);
        echo $buffer;
        $cur_pos += $buffer_size;
    }

    $buffer = fread($fp,$file_size-$cur_pos);
    echo $buffer;
    fclose($fp);
    return true;

}
if(isset($_GET[docid]) && !empty($_GET[docid])){
	require_once("../action/mysql.class.php");
	$query = $db->query("select src,author from news where id='$_GET[docid]'");
	$info = $db->fetch_array($query);
	$bool = download("","../".$info[src],"$info[author]");
	if(!$bool){
		echo "<script>alert('文件不存在,请联系客服!');window.history.back(-1);</script>" ;
	}
}else{
	echo "<script>alert('非法下载!');window.history.back(-1);</script>" ;
}

?>
