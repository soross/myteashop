<?php
/*
* @(#)UploadFile.php (beta) 2005/2/19
*
* exBlog�ϴ������࣬��ͬʱ�����û�����ϴ��ļ���Ч���ļ���Ч�Ժ�洢��ָ��Ŀ¼��
* �ɷ����ϴ��ļ������������Ϣ����������ʹ�á������ļ��������͡���С������·����
* ʹ�÷����������ײ���UploadFile��ʹ��ע�ͣ���Ϣ��
*/
class UploadFile {

var $user_post_file = array(); //�û��ϴ����ļ�
var $save_file_path;    //����û��ϴ��ļ���·��
var $max_file_size;     //�ļ����ߴ�
var $last_error;     //��¼���һ�γ�����Ϣ
//Ĭ�������û��ϴ����ļ�����
var $allow_type = array('gif', 'jpg', 'png', 'zip', 'rar', 'txt', 'doc', 'pdf');
var $final_file_path; //���ձ�����ļ���

var $save_info = array(); //����һ��������Ϣ��������ʾ�û���

/**
* ���캯���������ʼ�������Ϣ���û����ϴ��ļ����洢·����
*
* @param Array $file �û��ϴ����ļ�
* @param String $path �洢�û��ϴ��ļ���·��
* @param Integer $size �����û��ϴ��ļ��Ĵ�С(�ֽ�)
* @param Array $type   �������д���ʼ��û��ϴ����ļ�����
*/
function UploadFile($file, $path, $size = 2097152, $type = '') {
$this->user_post_file = $file;
$this->save_file_path = $path;
$this->max_file_size = $size; //����û�����д�ļ���С����Ĭ��Ϊ2M.
if ($type != '')
   $this->allow_type = $type;
}

/**
* �洢�û��ϴ��ļ�������Ϸ���ͨ���󣬴洢��ָ��λ�á�
* @access public
* @return int    ֵΪ0ʱ�ϴ�ʧ�ܣ���0��ʾ�ϴ��ɹ��ĸ�����
*/
function upload() {

for ($i = 0; $i < count($this->user_post_file['name']); $i++) {
   //�����ǰ�ļ��ϴ����ܣ���ִ����һ����
   if ($this->user_post_file['error'][$i] == 0) {
    //ȡ��ǰ�ļ�������ʱ�ļ�������С����չ�������潫�õ���
    $name = $this->user_post_file['name'][$i];
    $tmpname = $this->user_post_file['tmp_name'][$i];
    $size = $this->user_post_file['size'][$i];
    $mime_type = $this->user_post_file['type'][$i];
    $type = $this->getFileExt($this->user_post_file['name'][$i]);
    //��⵱ǰ�ϴ��ļ���С�Ƿ�Ϸ���
    if (!$this->checkSize($size)) {
     $this->last_error = "The file size is too big. File name is: ".$name;
     $this->halt($this->last_error);
     continue;
    }
    //��⵱ǰ�ϴ��ļ���չ���Ƿ�Ϸ���
    if (!$this->checkType($type)) {
     $this->last_error = "Unallowable file type: .".$type." File name is: ".$name;
     $this->halt($this->last_error);
     continue;
    }
    //��⵱ǰ�ϴ��ļ��Ƿ�Ƿ��ύ��
    if(!is_uploaded_file($tmpname)) {
     $this->last_error = "Invalid post file method. File name is: ".$name;
     $this->halt($this->last_error);
     continue;
    }
    //�ƶ��ļ����������ļ��á�
    $basename = $this->getBaseName($name, ".".$type);
    //�ƶ�����ļ���
    $saveas = $basename."-".time().".".$type;
    //������ļ����ٴ浽ָ��Ŀ¼�£���ʽ���洢·�� + �ļ��� + ʱ�� + ��չ��
    $this->final_file_path = $this->save_file_path."/".$saveas;
    if(!move_uploaded_file($tmpname, $this->final_file_path)) {
     $this->last_error = $this->user_post_file['error'][$i];
     $this->halt($this->last_error);
     continue;
    }
    //�洢��ǰ�ļ����й���Ϣ���Ա�����������á�
    $this->save_info[] = array("name" => $name, "type" => $type,
           "mime_type" => $mime_type,
                             "size" => $size, "saveas" => $saveas,
                             "path" => $this->final_file_path);
   }
}
return count($this->save_info); //�����ϴ��ɹ����ļ���Ŀ
}

/**
* ����һЩ���õ���Ϣ���Ա����������ط���
* @access public
* @return Array �������ձ����·��
*/
function getSaveInfo() {
return $this->save_info;
}

/**
* ����û��ύ�ļ���С�Ƿ�Ϸ�
* @param Integer $size �û��ϴ��ļ��Ĵ�С
* @access private
* @return boolean ���Ϊtrue˵����С�Ϸ�����֮���Ϸ�
*/
function checkSize($size) {
if ($size > $this->max_file_size) {
   return false;
}
else {
   return true;
}
}

/**
* ����û��ύ�ļ������Ƿ�Ϸ�
* @access private
* @return boolean ���Ϊtrue˵�����ͺϷ�����֮���Ϸ�
*/
function checkType($extension) {
foreach ($this->allow_type as $type) {
   if (strcasecmp($extension , $type) == 0)
    return true;
}
return false;
}

/**
* ��ʾ������Ϣ
* @param $msg    Ҫ��ʾ�ĳ�����Ϣ
* @access private
*/
function halt($msg) {
printf("<b><UploadFile Error:></b> %s <br>\n", $msg);
}

/**
* ȡ�ļ���չ��
* @param String $filename ����Ҫȡ��չ�����ļ�
* @access private
* @return String      ���ظ����ļ���չ��
*/
function getFileExt($filename) {
$stuff = pathinfo($filename);
return $stuff['extension'];
}
/**
* ȡ�����ļ��ļ�������������չ����
* eg: getBaseName("j:/hexuzhong.jpg"); //���� hexuzhong
*
* @param String $filename ����Ҫȡ�ļ������ļ�
* @access private
* @return String �����ļ���
*/
function getBaseName($filename, $type) {
$basename = basename($filename, $type);
return $basename;
}
}
?>