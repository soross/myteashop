<?php
/*
 * Created on 2007-6-8
 * Programmer : Alan , Msn - haowubai@hotmail.com
 * php100.com Develop a project PHP - MySQL - Apache
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
//Ϊ�˱����ظ������ļ�����ɴ��󣬼����жϺ����Ƿ���ڵ�������
$page = $_GET[page];
if(!function_exists(pageft)){
//���庯��pageft(),���������ĺ���Ϊ��
//$totle����Ϣ������
//$displaypg��ÿҳ��ʾ��Ϣ������������ΪĬ����20��
//$url����ҳ�����е����ӣ����˼��벻ͬ�Ĳ�ѯ��Ϣ��page����Ĳ��ֶ������URL��ͬ��
//������Ĭ��ֵ������Ϊ��ҳURL����$_SERVER["REQUEST_URI"]����������Ĭ��ֵ���ұ�ֻ��Ϊ���������Ը�Ĭ��ֵ��Ϊ���ַ������ں����ڲ�������Ϊ��ҳURL��
function pageft($totle,$displaypg=20,$url=''){

//���弸��ȫ�ֱ�����
//$page����ǰҳ�룻
//$firstcount�������ݿ⣩��ѯ����ʼ�
//$pagenav��ҳ�浼�������룬�����ڲ���û�н��������
//$_SERVER����ȡ��ҳURL��$_SERVER["REQUEST_URI"]�������롣
global $page,$firstcount,$pagenav,$_SERVER,$url;

//Ϊʹ�����ⲿ���Է�������ġ�$displaypg��������Ҳ��Ϊȫ�ֱ�����ע��һ���������¶���Ϊȫ�ֱ�����ԭֵ�����ǣ���������������¸�ֵ��
$GLOBALS["displaypg"]=$displaypg;

if(!$page) $page=1;

//���$urlʹ��Ĭ�ϣ�����ֵ����ֵΪ��ҳURL��
if(!$url){ $url=$_SERVER["REQUEST_URI"];}

//URL������
$parse_url=parse_url($url);
$url_query=$parse_url["query"]; //����ȡ��URL�Ĳ�ѯ�ִ�
if($url_query){
//��ΪURL�п��ܰ�����ҳ����Ϣ������Ҫ����ȥ�����Ա�����µ�ҳ����Ϣ��
//�����õ���������ʽ����ο���PHP�е�������ʽ��
$url_query=ereg_replace("(^|&)page=$page","",$url_query);

//��������URL�Ĳ�ѯ�ִ��滻ԭ����URL�Ĳ�ѯ�ִ���
$url=str_replace($parse_url["query"],$url_query,$url);

//��URL���page��ѯ��Ϣ��������ֵ��
if($url_query) $url.="&page"; else $url.="page";
}else {
$url.="?page";
}

//ҳ����㣺
$lastpg=ceil($totle/$displaypg); //���ҳ��Ҳ����ҳ��
$page=min($lastpg,$page);
$prepg=$page-1; //��һҳ
$nextpg=($page==$lastpg ? 0 : $page+1); //��һҳ
$firstcount=($page-1)*$displaypg;





//��ʼ��ҳ���������룺
$pagenav = "
<div class='pageBar'>
          		<p class='left'>".((($page-1)*$displaypg)+1) ."-".$page*$displaypg." of ".$totle.", ".$displaypg."��/ҳ, ��ǰ ". $page ."/".$lastpg."ҳ&nbsp;
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

if($page==1){
	$pagenav = $pagenav."&nbsp;<span class='first'>��ҳ</span>&nbsp;<span class='previous'>��ҳ</span>&nbsp;";

}else{
	$pagenav = $pagenav."
				&nbsp;<a href='$url=1' class='first'>��ҳ</a>	&nbsp;<a href='$url=$prepg' class='previous'>��ҳ</a>&nbsp;<span class='number'>";
}

	//�����ҳ��С��6 ȫ����ʾ
if($lastpg<6){
	for($i=1; $i<$lastpg+1 ;$i++){
		if($page == $i){
			$pagenav = $pagenav."&nbsp;<strong>$i</strong>&nbsp;";
		}else{
			$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>&nbsp;";
		}
	}
}else{ //�����ҳ������5ҳ ����ʾ��ǰҳ��ǰ2ҳ�ͺ�2ҳ
	if($page<4){ //12345...
		for($i=1; $i<6 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."&nbsp;<strong>$i</strong>&nbsp;";
			}else{
				$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>&nbsp;";
			}
		}
		$pagenav = $pagenav."&nbsp;<a href='$url=6'>...</a>&nbsp;";
	}else if ($page> $lastpg -3){//...n-4,n-3,n-2,n-1,n
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($lastpg-5)."'>...</a>&nbsp;";
		for($i=$lastpg-4 ; $i<$lastpg+1 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."&nbsp;<strong>$i</strong>&nbsp;";
			}else{
				$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>&nbsp;";

			}
		}
	}else{//...n-2,n-1,n,n+1,n+2...
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-3)."'>...</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-2)."'>".($page-2)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-1)."'>".($page-1)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<strong>$page</strong>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+1)."'>".($page+1)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+2)."'>".($page+2)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+3)."'>...</a>&nbsp;";
	}
}

if($page== $lastpg){
	$pagenav = $pagenav."	</span>&nbsp;<span class='next'>��ҳ</span>&nbsp;<span class='last'>βҳ</span>&nbsp;";

}else{
	$pagenav = $pagenav."</span>&nbsp;<a href='".$url."=".($page+1)."' class='next'>��ҳ</a>&nbsp;<a href='$url=$lastpg' class='last'>βҳ</a>&nbsp;";
}
/**
$pagenav = $pagenav."<LI class=opt><SELECT onchange='if(-1!=this.value)location.href=\"".$url."=\"+this.value;'>";
for($i=1; $i<$lastpg +1 ;$i++){
	if($page == $i){
		$pagenav = $pagenav."<OPTION selected value='-1'>��".$i."ҳ</OPTION>";
	}else{
		$pagenav = $pagenav."<OPTION value='$i'>��".$i."ҳ</OPTION>";
	}
}
$pagenav = $pagenav."</SELECT></LI>";

if($page== $lastpg){
	$pagenav = $pagenav."<LI class=pagesnow>βҳ</LI>";
}else{
	$pagenav = $pagenav."<LI class=pbutton>
					<A href='$url=$lastpg'>βҳ</A>
				</LI>";
}
*/
$pagenav = $pagenav."
			</p>
			</div>";


/*
$pagenav="��ʾ�� <B>".($totle?($firstcount+1):0)."</B>-<B>".min($firstcount+$displaypg,$totle)."</B> ����¼���� $totle ����¼";

//���ֻ��һҳ������������
if($lastpg<=1) return false;

$pagenav.=" <a href='$url=1'>��ҳ</a> ";
if($prepg) $pagenav.=" <a href='$url=$prepg'>ǰҳ</a> "; else $pagenav.=" ǰҳ ";
if($nextpg) $pagenav.=" <a href='$url=$nextpg'>��ҳ</a> "; else $pagenav.=" ��ҳ ";
$pagenav.=" <a href='$url=$lastpg'>βҳ</a> ";

//������ת�б�ѭ���г�����ҳ�룺
$pagenav.="������ <select name='topage' size='1' onchange='window.location=\"$url=\"+this.value'>\n";
for($i=1;$i<=$lastpg;$i++){
if($i==$page) $pagenav.="<option value='$i' selected>$i</option>\n";
else $pagenav.="<option value='$i'>$i</option>\n";
}
$pagenav.="</select> ҳ���� $lastpg ҳ";
*/

	}

}

?>
