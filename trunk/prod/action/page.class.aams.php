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

//�Ƿ��������ύ������ʽ
$postParent = "";
if(isset($_POST[task])&&"searchProcat"==$_POST[task]){
	if(isset($_POST[szSheng]) && !empty($_POST[szSheng])){
		$postParent = $postParent."pkey=".urlencode($_POST[szSheng]);
	}
	if(isset($_POST[szShi]) && !empty($_POST[szShi])){
		$postParent = $postParent."&ckey=".urlencode($_POST[szShi]);
	}
	if(isset($_POST[shopkey]) && !empty($_POST[shopkey])){
		$postParent = $postParent."&key=".urlencode($_POST[shopkey]);
	}
}
//$postParent = urlencode($postParent);


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
	if($url_query) $url.=($postParent."&page"); else $url.=($postParent."page");
}else {
$url.="?".$postParent."&page";
}

//ҳ����㣺
$lastpg=ceil($totle/$displaypg); //���ҳ��Ҳ����ҳ��
$page=min($lastpg,$page);
$prepg=($page < 1 ? 1 : $page-1); //��һҳ
$nextpg=($page==$lastpg ? 0 : $page+1); //��һҳ
$firstcount=($page-1)*$displaypg;



//�����ҳ��С��6 ȫ����ʾ
$pagenav = '';
if($lastpg<6){
	for($i=1; $i<$lastpg+1 ;$i++){
		if($page == $i){
			$pagenav = $pagenav."&nbsp;$i";
		}else{
			$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>";
		}
	}
}else{ //�����ҳ������5ҳ ����ʾ��ǰҳ��ǰ2ҳ�ͺ�2ҳ
	if($page<4){ //12345...
		for($i=1; $i<6 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."&nbsp;$i";
			}else{
				$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>";
			}
		}
		$pagenav = $pagenav."&nbsp;<a href='$url=6'>..</a>";
	}else if ($page> $lastpg -3){//...n-4,n-3,n-2,n-1,n
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($lastpg-5)."'>..</a>";
		for($i=$lastpg-4 ; $i<$lastpg+1 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."&nbsp;$i";
			}else{
				$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>";

			}
		}
	}else{//...n-2,n-1,n,n+1,n+2...
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-3)."'>..</a>";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-2)."'>".($page-2)."</a>";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-1)."'>".($page-1)."</a>";
		$pagenav = $pagenav."&nbsp;$page";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+1)."'>".($page+1)."</a>";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+2)."'>".($page+2)."</a>";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+3)."'>..</a>";
	}
}



$pageSelect = '';
if($lastpg<101){
	for($i=1;$i<$lastpg+1;$i++){
		if($i==$page){
			$pageSelect = $pageSelect.'<option value="'.$i.'" selected>��'.$i.'ҳ</option>';
		}else{
			$pageSelect = $pageSelect.'<option value="'.$i.'" >��'.$i.'ҳ</option>';
		}
	}
}else{
	if($page>50 && $page<$lastpg-50){
		for($i=$page-50;$i<$page+50+1;$i++){
			if($i==$page){
				$pageSelect = $pageSelect.'<option value="'.$i.'" selected>��'.$i.'ҳ</option>';
			}else{
				$pageSelect = $pageSelect.'<option value="'.$i.'" >��'.$i.'ҳ</option>';
			}
		}
	}else if($page>50&& $page>=$lastpg-50){
		for($i=$lastpg-100;$i<$lastpg+1;$i++){
			if($i==$page){
				$pageSelect = $pageSelect.'<option value="'.$i.'" selected>��'.$i.'ҳ</option>';
			}else{
				$pageSelect = $pageSelect.'<option value="'.$i.'" >��'.$i.'ҳ</option>';
			}
		}

	}else{
		for($i=1;$i<101;$i++){
			if($i==$page){
				$pageSelect = $pageSelect.'<option value="'.$i.'" selected>��'.$i.'ҳ</option>';
			}else{
				$pageSelect = $pageSelect.'<option value="'.$i.'" >��'.$i.'ҳ</option>';
			}
		}
	}
}



//��ʼ��ҳ���������룺
$pagenav='<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25%" height="29" nowrap="nowrap">
					<span class="STYLE1">��'.$totle.'����¼����ǰ��'. $page .'/'.$lastpg.'ҳ��ÿҳ'.$displaypg.'����¼</span></td>
				<td width="75%" valign="top" class="STYLE1">
					<div align="right">
						<table height="20" border="0" cellpadding="0" cellspacing="0">
							<tr>
							  <td width="40" height="22" valign="middle"><div align="right">
								<A href='.$url.'=1><img src="images/tab/first.gif" width="37" height="15" border="0"/></A></div></td>
							  <td width="45" height="22" valign="middle"><div align="right">
								<a href='.$url.'='.($page-1>0?$page-1:1).'><img src="images/tab/back.gif" width="43" height="15" border="0"/></a></div></td>
							  <td align="center">'.$pagenav.'</td>
							  <td width="45" height="22" valign="middle"><div align="right">
								<a href='.$url.'='.($page+1>$lastpg?$lastpg:$page+1).'><img src="images/tab/next.gif" width="43" height="15" border="0" /></a></div></td>
							  <td width="40" height="22" valign="middle"><div align="right">
								<A href='.$url.'='.$lastpg.'><img src="images/tab/last.gif" width="37" height="15" border="0" /></div></td>
							  <td width="30" height="22" valign="middle" align="right"><strong>GO:</strong></td>
							  <td width="90" height="22" valign="middle" align="left"><select onchange="javascript:gotopage(this);">'.$pageSelect.'</select></td>
							</tr>
					    </table>
					</div>
				</td>
			</tr>
		</table>
	    <script>
	    function gotopage(obj){
	       location.href="'.$url.'="+obj.value;
	    }
	    </script>
		';
}
}
?>