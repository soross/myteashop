<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);

if(isset($_POST[into_prod])){
	if (is_uploaded_file($_FILES["upfile"][tmp_name])){
		$uptypes=array('image/jpg', //�ϴ��ļ������б�
		'image/jpeg',
		'image/png',
		'image/pjpeg',
		'image/gif',
		'image/bmp',
		'image/x-png');
		$max_file_size=5000000; //�ϴ��ļ���С����, ��λBYTE
		$destination_folder="../prod/images/prodphoto/"; //�ϴ��ļ�·��
		$watermark=0; //�Ƿ񸽼�ˮӡ(1Ϊ��ˮӡ,����Ϊ����ˮӡ);
		$watertype=1; //ˮӡ����(1Ϊ����,2ΪͼƬ)
		$waterposition=1; //ˮӡλ��(1Ϊ���½�,2Ϊ���½�,3Ϊ���Ͻ�,4Ϊ���Ͻ�,5Ϊ����);
		$waterstring="��˯��"; //ˮӡ�ַ���
		$waterimg="aa.gif"; //ˮӡͼƬ
		$imgpreview=0; //�Ƿ�����Ԥ��ͼ(1Ϊ����,����Ϊ������);
		$imgpreviewsize=1/3; //����ͼ����
		$showimginfo=0; //�Ƿ�������ʾͼƬ��Ϣ(1������ʾ,��������ʾ)

		if ($_SERVER['REQUEST_METHOD'] == 'POST'){
			//�Ƿ�����ļ�
			if (!is_uploaded_file($_FILES["upfile"][tmp_name])){
				echo "<font color='red'>�ļ������ڣ�</font>";
				exit;
			}

			$file = $_FILES["upfile"];
			//����ļ���С
			if($max_file_size < $file["size"]){
				echo "<font color='red'>�ļ�̫��</font>";
				exit;
			}
			//����ļ�����
			if(!in_array($file["type"], $uptypes)){
				echo "<font color='red'>ֻ���ϴ�ͼ���ļ���Flash��</font>";
				exit;
			}

			if(!file_exists($destination_folder))
				mkdir($destination_folder);

			$filename=$file["tmp_name"];
			$image_size = getimagesize($filename);
			$pinfo=pathinfo($file["name"]);
			$ftype=$pinfo[extension];
			$destination = $destination_folder.time().".".$ftype;
			if (file_exists($destination) && $overwrite != true){
				echo "<font color='red'>ͬ���ļ��Ѿ������ˣ�</a>";
				exit;
			}

			if(!move_uploaded_file ($filename, $destination)){
				echo "<font color='red'>�ƶ��ļ�����</a>";
				exit;
			}

			$pinfo=pathinfo($destination);
			$fname=$pinfo[basename];
			if($showimginfo==1){
				echo " <font color=red>�Ѿ��ɹ��ϴ�</font><br>�ļ���: <font color=blue>".$destination_folder.$fname."</font><br>";
				echo " ���:".$image_size[0];
				echo " ����:".$image_size[1];
			}

			if($watermark==1){
				$iinfo=getimagesize($destination,$iinfo);
				$nimage=imagecreatetruecolor($image_size[0],$image_size[1]);
				$white=imagecolorallocate($nimage,255,255,255);
				$black=imagecolorallocate($nimage,0,0,0);
				$red=imagecolorallocate($nimage,255,0,0);
				imagefill($nimage,0,0,$white);
				switch ($iinfo[2]){
					case 1:
					$simage =imagecreatefromgif($destination);
					break;
					case 2:
					$simage =imagecreatefromjpeg($destination);
					break;
					case 3:
					$simage =imagecreatefrompng($destination);
					break;
					case 6:
					$simage =imagecreatefromwbmp($destination);
					break;
					default:
					die("<font color='red'>�����ϴ��������ļ���</a>");
					exit;
				}

				imagecopy($nimage,$simage,0,0,0,0,$image_size[0],$image_size[1]);
				imagefilledrectangle($nimage,1,$image_size[1]-15,80,$image_size[1],$white);

				switch($watertype){
					case 1: //��ˮӡ�ַ���
					imagestring($nimage,2,3,$image_size[1]-15,$waterstring,$black);
					break;
					case 2: //��ˮӡͼƬ
					$simage1 =imagecreatefromgif("xplore.gif");
					imagecopy($nimage,$simage1,0,0,0,0,85,15);
					imagedestroy($simage1);
					break;
				}

				switch ($iinfo[2]){
					case 1:
					//imagegif($nimage, $destination);
					imagejpeg($nimage, $destination);
					break;
					case 2:
					imagejpeg($nimage, $destination);
					break;
					case 3:
					imagepng($nimage, $destination);
					break;
					case 6:
					imagewbmp($nimage, $destination);
					//imagejpeg($nimage, $destination);
					break;
				}

				//����ԭ�ϴ��ļ�
				imagedestroy($nimage);
				imagedestroy($simage);
			}

			if($imgpreview==1){
				echo "<br>ͼƬԤ��:<br>";
				echo "<a href=\"".$destination."\" target='_blank'><img src=\"".$destination."\" width=".($image_size[0]*$imgpreviewsize)." height=".($image_size[1]*$imgpreviewsize);
				echo " alt=\"ͼƬԤ��:\r�ļ���:".$destination."\r�ϴ�ʱ��:\" border='0'></a>";
			}
		}
		unlink($destination_folder.$_POST[image_path]);
	}else{
		$fname=$_POST[image_path];
	}

	//�����������ݵ����ݿ�
	$sql = "update tea_prod set prod_name = '$_POST[prod_name]',prod_desc='$_POST[content]',prod_class='$_POST[classcode]'," .
			"src_price='$_POST[src_price]',new_price='$_POST[new_price]',suttle='$_POST[suttle]',season='$_POST[season]'," .
			"packing='$_POST[packing]',exp='$_POST[exp]',save_way='$_POST[save_way]',prod_add='$_POST[prod_add]'," .
			"state='$_POST[showindex]',image_path='$fname' where id = $_POST[id]";


	try{
		$db->query($sql);
		$db->Get_admin_msg("admin_prod_list.php?page=$_POST[page]","�޸ĳɹ�!");
	}catch(exception $e){
		$db->Get_admin_msg("admin_prod_list.php?page=$_POST[page]","�޸�ʧ�ܣ������Ի���ϵ����Ա!");
	}
}

?>