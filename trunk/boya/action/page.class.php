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



/**
 *  <div id="page">
       <span class="page_detail">��<span class="pageTotal">20</span>��&nbsp;&nbsp;ÿҳ<span class="pagePer">10</span>��&nbsp;&nbsp;ҳ�Σ�<span class="pageTime">2/2</span></span>
       <span class="page">
       	   <a class="pageHome" href="#">��ҳ</a>
           <a class="pagePrev" href="#">��һҳ</a>
           <a class="pageNo" href="#">1</a>
           <a class="pageCurrent" href="#">2</a>
           <a class="pageNext" href="#">��һҳ</a>
           <a class="pageEnd" href="#">βҳ</a>
       </span>
   </div>
 */

//��ʼ��ҳ���������룺
$pagenav = "<div id='page'>
       <span class='page_detail'>��<span class='pageTotal'>".$totle."</span>��&nbsp;&nbsp;ÿҳ<span class='pagePer'>".$displaypg."</span>��&nbsp;&nbsp;ҳ�Σ�<span class='pageTime'>".$page."/".$lastpg."</span></span>
			<span class='page'>";

if($page==1){
	$pagenav = $pagenav."<a class=pageHome href='#'>��ҳ</a><a href='#' class=pagePrev>��һҳ</a>";

}else{
	$pagenav = $pagenav."
					<A class=pageHome href='$url=1'>��ҳ</A>
				    <a clas=pagePrev href='$url=$prepg'>��һҳ</a>";
}

	//�����ҳ��С��6 ȫ����ʾ
if($lastpg<6){
	for($i=1; $i<$lastpg+1 ;$i++){
		if($page == $i){
			$pagenav = $pagenav."<a class=pageCurrent href='#'>$i</a>";
		}else{
			$pagenav = $pagenav."<A href='$url=$i' class='pageNo'>$i</A>";
		}
	}
}else{ //�����ҳ������5ҳ ����ʾ��ǰҳ��ǰ2ҳ�ͺ�2ҳ
	if($page<4){ //12345...
		for($i=1; $i<6 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."<a class=pageCurrent href='#'>$i</a>";
			}else{
				$pagenav = $pagenav."<A class=pageNo href='$url=$i'>$i</A>";
			}
		}
		$pagenav = $pagenav."<A class=pageNo href='$url=6'>...</A>";
	}else if ($page> $lastpg -3){//...n-4,n-3,n-2,n-1,n
		$pagenav = $pagenav."<A href='".$url."=".($lastpg-5)."'>...</A>";
		for($i=$lastpg-4 ; $i<$lastpg+1 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."<a class=pageCurrent href='#'>$i</a>";
			}else{
				$pagenav = $pagenav."<A class=pageNo href='$url=$i'>$i</A>";

			}
		}
	}else{//...n-2,n-1,n,n+1,n+2...
		$pagenav = $pagenav."<A class=pageNo href='".$url."=".($page-3)."'>...</A>";
		$pagenav = $pagenav."<A class=pageNo href='".$url."=".($page-2)."'>".($page-2)."</A>";
		$pagenav = $pagenav."<A class=pageNo href='".$url."=".($page-1)."'>".($page-1)."</A>";
		$pagenav = $pagenav."<A  class=pageCurrent href='".$url."=".($page)."'>".($page)."</A>";
		$pagenav = $pagenav."<A class=pageNo href='".$url."=".($page+1)."'>".($page+1)."</A>";
		$pagenav = $pagenav."<A class=pageNo href='".$url."=".($page+2)."'>".($page+2)."</A>";
		$pagenav = $pagenav."<A class=pageNo  href='".$url."=".($page+3)."'>...</A>";
	}
}

if($page== $lastpg){
	$pagenav = $pagenav."<a class=pageNext href='#'>��һҳ</a>";

}else{
	$pagenav = $pagenav."<a class='pageNext' href='".$url."=".($page+1)."'>��һҳ</a>";
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
**/
if($page== $lastpg){
	$pagenav = $pagenav."<a class=pageEnd href='#'>βҳ</a>";
}else{
	$pagenav = $pagenav."<A class='pageEnd' href='$url=$lastpg'>βҳ</A>";
}
$pagenav = $pagenav."
		</span>
	</DIV>";


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
