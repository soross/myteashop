<?php

//���ϴ��ļ�ʱ
if (empty($_FILES) === false) {
	//ԭ�ļ���
	$file_name = $_FILES['imgFile']['name'];
	//����������ʱ�ļ���
	$tmp_name = $_FILES['imgFile']['tmp_name'];
	//�ļ���С
	$file_size = $_FILES['imgFile']['size'];
	//����ļ���
	if (!$file_name) {
		alert("��ѡ���ļ���");
	}
	//���Ŀ¼
	if (@is_dir($save_path) === false) {
		alert("�ϴ�Ŀ¼�����ڡ�");
	}
	//���Ŀ¼дȨ��
	if (@is_writable($save_path) === false) {
		alert("�ϴ�Ŀ¼û��дȨ�ޡ�");
	}
	//����Ƿ����ϴ�
	if (@is_uploaded_file($tmp_name) === false) {
		alert("��ʱ�ļ����ܲ����ϴ��ļ���");
	}
	//����ļ���С
	if ($file_size > $max_size) {
		alert("�ϴ��ļ���С�������ơ�");
	}
	//����ļ���չ��
	$temp_arr = explode(".", $file_name);
	$file_ext = array_pop($temp_arr);
	$file_ext = trim($file_ext);
	$file_ext = strtolower($file_ext);
	//�����չ��
	if (in_array($file_ext, $ext_arr) === false) {
		alert("�ϴ��ļ���չ���ǲ��������չ����");
	}
	//���ļ���
	$new_file_name = date("YmdHms") . '_' . rand(10000, 99999) . '.' . $file_ext;
	//echo $file_ext;
	//�ƶ��ļ�
	$file_path = $save_path . $new_file_name;
	if (move_uploaded_file($tmp_name, $file_path) === false) {
		alert("�ϴ��ļ�ʧ�ܡ�");
	}
	echo $file_path;
	@chmod($file_path, 0644);
	//$file_url = $save_url . $new_file_name;
}


//��ʾ���رղ�
function alert($msg)
{
	echo '<html>';
	echo '<head>';
	echo '<title>error</title>';
	echo '<meta http-equiv="content-type" content="text/html; charset=GBK">';
	echo '</head>';
	echo '<body>';
	echo '<script type="text/javascript">alert("'.$msg.'");window.history.back();</script>';
	echo '</body>';
	echo '</html>';
	exit;
}
?>