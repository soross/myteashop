<?php
if (is_uploaded_file($_FILES["pic_file"][tmp_name])){
	$uptypes=array('image/jpg', //�ϴ��ļ������б�
	'image/jpeg',
	'image/png',
	'image/pjpeg',
	'image/gif',
	'image/bmp',
	'image/x-png');
	$max_file_size=5000000; //�ϴ��ļ���С����, ��λBYTE
	$destination_folder="../images/"; //�ϴ��ļ�·��
	$watermark=0; //�Ƿ񸽼�ˮӡ(1Ϊ��ˮӡ,����Ϊ����ˮӡ);
	$watertype=1; //ˮӡ����(1Ϊ����,2ΪͼƬ)
	$waterposition=1; //ˮӡλ��(1Ϊ���½�,2Ϊ���½�,3Ϊ���Ͻ�,4Ϊ���Ͻ�,5Ϊ����);
	$waterstring="��˯��"; //ˮӡ�ַ���
	$waterimg="aa.gif"; //ˮӡͼƬ
	$imgpreview=0; //�Ƿ�����Ԥ��ͼ(1Ϊ����,����Ϊ������);
	$imgpreviewsize=1/3; //����ͼ����
	$showimginfo=0; //�Ƿ�������ʾͼƬ��Ϣ(1������ʾ,��������ʾ)
	$isdebug = 0 ;//�Ƿ����(0������,1����)

	if ($_SERVER['REQUEST_METHOD'] == 'POST'){
		//�Ƿ�����ļ�
		if (!is_uploaded_file($_FILES["pic_file"][tmp_name])){
			if($isdebug==1)echo "<font color='red'>�ļ������ڣ�</font>";
			$failed = "ERROR";
			exit;
		}

		$file = $_FILES["pic_file"];
		//����ļ���С
		if($max_file_size < $file["size"]){
			if($isdebug==1)echo "<font color='red'>�ļ�̫��</font>";
			$failed =true;
			exit;
		}
		//����ļ�����
		if(!in_array($file["type"], $uptypes)){
			if($isdebug==1)echo "<font color='red'>ֻ���ϴ�ͼ���ļ���Flash��</font>";
			$failed =true;
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
			if($isdebug==1)echo "<font color='red'>ͬ���ļ��Ѿ������ˣ�</a>";
			$failed =true;
			exit;
		}

		if(!move_uploaded_file ($filename, $destination)){
			if($isdebug==1)echo "<font color='red'>�ƶ��ļ�����</a>";
			$failed =true;
			exit;
		}

		$pinfo=pathinfo($destination);
		$fname=$pinfo[basename];
		if($showimginfo==1){
			echo " <font color=red>�Ѿ��ɹ��ϴ�</font><br>�ļ���: <font color=blue>".$destination_folder.$fname."</font><br>";
			echo " ���:".$image_size[0];
			echo " ����:".$image_size[1];
		}

		//ˮӡ
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
				if($isdebug==1)die("<font color='red'>�����ϴ��������ļ���</a>");
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
}else{
	$fname="nopic.jpg";
}
?>
