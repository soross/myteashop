<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "CreateCardBy100"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$password = strtolower(getPassword());
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('1','2',$db)."','".$password."','".md5($password)."','0',now(),'2')");
		}
		echo "<script>alert('�ɹ�������".$_POST[num]."�����100�ĺ�����!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('��������Ҫ�����ĺ���������!');location.href='../createcard.php';</script>";
	}
}else if(isset($_POST[task]) && "CreateCardBy500"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$password = strtolower(getPassword());
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('5','10',$db)."','".$password."','".md5($password)."','0',now(),'10')");
		}
		echo "<script>alert('�ɹ�������".$_POST[num]."�����500�ĺ�����!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('��������Ҫ�����ĺ���������!');location.href='../createcard.php';</script>";
	}
}else if(isset($_POST[task]) && "CreateCardBy1000"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$password = strtolower(getPassword());
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('0','20',$db)."','".$password."','".md5($password)."','0',now(),'20')");
		}
		echo "<script>alert('�ɹ�������".$_POST[num]."�����1000�ĺ�����!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('��������Ҫ�����ĺ���������!');location.href='../createcard.php';</script>";
	}
}else if(isset($_GET[task]) && "createCardBySw"==$_GET[task]){
	if(isset($_GET[cardid])&&!empty($_GET[cardid])){
		$db->query("update lm_card set create_card='1' where id='".$_GET[cardid]."'");
		echo "<script>alert('�ƿ��ɹ�!');location.href='../nocard.php';</script>";
	}else{
		echo "<script>alert('�Ƿ�����!');location.href='../nocard.php';</script>";
	}
}
else if(isset($_GET[task]) && "createCardBySwAll"==$_GET[task]){
	$db->query("update lm_card set create_card='1' where create_card='0'");
	echo "<script>alert('ȫ���ƿ��ɹ�!');location.href='../nocard.php';</script>";
}

function getCardNo($start,$type,$db){
	$query = $db->query("select max(cardno) as maxcardno from lm_card where type='".$type."' ");
	$info = $db->fetch_array($query);
	$maxcardno = $info[maxcardno];
	//$str=date("His").rand(100,999);
	//return $start.$str;
	if(!empty($maxcardno)&&""!=$maxcardno){

		$maxcardno = $maxcardno+1;
		if($type == 20){
			$maxcardno = str_pad($maxcardno, 8, "0", STR_PAD_LEFT);
		}
		$maxcardno = substr($maxcardno,1,strlen($maxcardno));
	}else{
		$maxcardno = str_pad("1", 7, "0", STR_PAD_LEFT);
	}
	return $start.$maxcardno;
}
function getPassword(){
         //��������û�ָ���������ַ���
        for($i=0;$i<6;$i++) {
            $number=rand(0,2);
            switch($number){
                case 0 : $rand_number=rand(48,57);break;    //����
                case 1 : $rand_number=rand(65,90);break;    //��д��ĸ
                case 2 : $rand_number=rand(97,122);break;   //Сд��ĸ
            }
            //0 1 O o I i l ȥ��  �û���ʶ��
            if($rand_number==48 || $rand_number==49 ||
               $rand_number==73||$rand_number==105 ||
               $rand_number==79 || $rand_number==111
               ||$rand_number==108){
            	$i--;
            }else{
            	$ascii=sprintf("%c",$rand_number);
            	$ascii_number=$ascii_number.$ascii;
            }
        }
        return $ascii_number;
	//$str = rand(100000,999999);
	//return $str;
}
//echo getCardNo('10001','20',$db);
?>
