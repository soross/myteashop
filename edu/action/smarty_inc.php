<?php
include_once("smarty/Smarty.class.php"); //����smarty���ļ�

$smarty = new Smarty(); //����smartyʵ������$smarty

$smarty->config_dir="smarty/Config_File.class.php";  // Ŀ¼����

$smarty->caching=false; //�Ƿ�ʹ�û��棬��Ŀ�ڵ����ڼ䣬���������û���

$smarty->template_dir = "templates"; //����ģ��Ŀ¼

$smarty->compile_dir = "templates_c"; //���ñ���Ŀ¼

$smarty->cache_dir = "smarty_cache"; //�����ļ���

$smarty->cache_lifetime = 604800;  //����ʱ�� ��λ��

//----------------------------------------------------

//���ұ߽����Ĭ��Ϊ{}����ʵ��Ӧ�õ���������JavaScript���ͻ

//----------------------------------------------------

$smarty->left_delimiter = "{";

$smarty->right_delimiter = "}";

?>
