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
<DIV id=pagesinfo>��". $totle."�� ÿҳ". $displaypg ."�� ҳ�Σ�". $page ."/".$lastpg."</DIV>
		<DIV id=pages>
			<UL>";

if($page==1){
	$pagenav = $pagenav."<LI class=pagesnow>��ҳ</LI><LI class=pagesnow>��һҳ</LI>";

}else{
	$pagenav = $pagenav."
				<LI class=pbutton>
					<A href='$url=1'>��ҳ</A>
				</LI>
				<LI class=pbutton><a href='$url=$prepg'>��һҳ</a></LI>";
}

	//�����ҳ��С��6 ȫ����ʾ
if($lastpg<6){
	for($i=1; $i<$lastpg+1 ;$i++){
		if($page == $i){
			$pagenav = $pagenav."<LI class=pagesnow>$i</LI>";
		}else{
			$pagenav = $pagenav."<LI class=pbutton><A href='$url=$i'>$i</A></LI>";
		}
	}
}else{ //�����ҳ������5ҳ ����ʾ��ǰҳ��ǰ2ҳ�ͺ�2ҳ
	if($page<4){ //12345..
		for($i=1; $i<6 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."<LI class=pagesnow> $i</LI>";
			}else{
				$pagenav = $pagenav."<LI class=pbutton><A href='$url=$i'>$i</A></LI>";
			}
		}
		$pagenav = $pagenav."<LI class=pbutton><A href='$url=6'>..</A></LI>";
	}else if ($page> $lastpg -3){//..n-4,n-3,n-2,n-1,n
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($lastpg-5)."'>..</A></LI>";
		for($i=$lastpg-4 ; $i<$lastpg+1 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."<LI class=pagesnow>$i</LI>";
			}else{
				$pagenav = $pagenav."<LI class=pbutton><A href='$url=$i'>$i</A></LI>";

			}
		}
	}else{//..n-2,n-1,n,n+1,n+2..
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($page-3)."'>..</A></LI>";
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($page-2)."'>".($page-2)."</A></LI>";
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($page-1)."'>".($page-1)."</A></LI>";
		$pagenav = $pagenav."<LI class=pagesnow><A href='".$url."=".($page)."'>".($page)."</A></LI>";
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($page+1)."'>".($page+1)."</A></LI>";
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($page+2)."'>".($page+2)."</A></LI>";
		$pagenav = $pagenav."<LI class=pbutton><A href='".$url."=".($page+3)."'>..</A></LI>";
	}
}

if($page== $lastpg){
	$pagenav = $pagenav."<LI class=pagesnow>��һҳ</LI>";

}else{
	$pagenav = $pagenav."<LI class=pbutton><a href='".$url."=".($page+1)."'>��һҳ</a></LI>";
}

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
$pagenav = $pagenav."
			</UL>
		</DIV>
	</DIV>";

$pagenav = $pagenav."<style>

div#pagesinfo {
float:left;
padding:3px 8px;
white-space: nowrap;
}

div#pages {
float:right;
padding-right:8px;
white-space: nowrap;
}

div#pages ul{
margin:0;
padding:0;
}

div#pages a:link,div#pages a:visited,div#pages a:active{
color:#303030;
text-decoration: none;
}

div#pages a:hover{
color:#ff0000;
text-decoration: none;
}

div#pages li{
margin:3px;
padding:2px 5px;
list-style-type: none;
float:left;
background:#dcd9d4;
color:#303030;
border:1px #dcd9d4 solid;
white-space: nowrap;
}

div#pages li.pagesnow{
color:#303030;
background-color:#eee;
white-space: nowrap;
border:1px #dcd9d4 solid;
}

div#pages li.pbutton{
color:#303030;
background-color:#dcd9d4;
padding:3px 5px 1px 5px;
white-space: nowrap;
border:1px #dcd9d4 solid;
}

div#pages li.opt{
color:#303030;
padding:0px;
white-space: nowrap;
border:0px;
background:#fff;
}

</style>" ;

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
