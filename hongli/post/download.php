<?php
function download($file_dir,$file_name,$name)
//����˵����
//file_dir:�ļ�����Ŀ¼
//file_name:�ļ���
{
    $file_dir = chop($file_dir);//ȥ��·���ж���Ŀո�
    //�ó�Ҫ���ص��ļ���·��
    if($file_dir != ""){
        $file_path = $file_dir;
        if(substr($file_dir,strlen($file_dir)-1,strlen($file_dir)) != ""){
            $file_path .= "" ;
            $file_path .= $file_name;
        }
    }else{
        $file_path = $file_name;
    }
    //�ж�Ҫ���ص��ļ��Ƿ����
    if(!file_exists($file_path))
    {
        echo "�Բ���,��Ҫ���ص��ļ������ڡ�";
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
require_once("../action/mysql.class.php");
if(isset($_GET[type] )&& "SjHeTong"== $_GET[type]){
	$query = $db->query("select type_code,content from lm_comm_code where type_name='SjHeTong'");
	$info = $db->fetch_array($query);
	download("","$info[type_code]","$info[content]");
}else if(isset($_GET[type] ) && "AgentHeTong"== $_GET[type]){
	$query = $db->query("select type_code,content from lm_comm_code where type_name='AgentHeTong'");
	$info = $db->fetch_array($query);
	download("","$info[type_code]","$info[content]");
}
?>
