<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);

if(isset($_POST[into_prod])){
	if (is_uploaded_file($_FILES["upfile"][tmp_name])){
		$uptypes=array('image/jpg', //上传文件类型列表
		'image/jpeg',
		'image/png',
		'image/pjpeg',
		'image/gif',
		'image/bmp',
		'image/x-png');
		$max_file_size=5000000; //上传文件大小限制, 单位BYTE
		$destination_folder="../prod/images/prodphoto/"; //上传文件路径
		$watermark=0; //是否附加水印(1为加水印,其他为不加水印);
		$watertype=1; //水印类型(1为文字,2为图片)
		$waterposition=1; //水印位置(1为左下角,2为右下角,3为左上角,4为右上角,5为居中);
		$waterstring="云睡了"; //水印字符串
		$waterimg="aa.gif"; //水印图片
		$imgpreview=0; //是否生成预览图(1为生成,其他为不生成);
		$imgpreviewsize=1/3; //缩略图比例
		$showimginfo=0; //是否输入显示图片信息(1输入显示,其他不显示)

		if ($_SERVER['REQUEST_METHOD'] == 'POST'){
			//是否存在文件
			if (!is_uploaded_file($_FILES["upfile"][tmp_name])){
				echo "<font color='red'>文件不存在！</font>";
				exit;
			}

			$file = $_FILES["upfile"];
			//检查文件大小
			if($max_file_size < $file["size"]){
				echo "<font color='red'>文件太大！</font>";
				exit;
			}
			//检查文件类型
			if(!in_array($file["type"], $uptypes)){
				echo "<font color='red'>只能上传图像文件或Flash！</font>";
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
				echo "<font color='red'>同名文件已经存在了！</a>";
				exit;
			}

			if(!move_uploaded_file ($filename, $destination)){
				echo "<font color='red'>移动文件出错！</a>";
				exit;
			}

			$pinfo=pathinfo($destination);
			$fname=$pinfo[basename];
			if($showimginfo==1){
				echo " <font color=red>已经成功上传</font><br>文件名: <font color=blue>".$destination_folder.$fname."</font><br>";
				echo " 宽度:".$image_size[0];
				echo " 长度:".$image_size[1];
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
					die("<font color='red'>不能上传此类型文件！</a>");
					exit;
				}

				imagecopy($nimage,$simage,0,0,0,0,$image_size[0],$image_size[1]);
				imagefilledrectangle($nimage,1,$image_size[1]-15,80,$image_size[1],$white);

				switch($watertype){
					case 1: //加水印字符串
					imagestring($nimage,2,3,$image_size[1]-15,$waterstring,$black);
					break;
					case 2: //加水印图片
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

				//覆盖原上传文件
				imagedestroy($nimage);
				imagedestroy($simage);
			}

			if($imgpreview==1){
				echo "<br>图片预览:<br>";
				echo "<a href=\"".$destination."\" target='_blank'><img src=\"".$destination."\" width=".($image_size[0]*$imgpreviewsize)." height=".($image_size[1]*$imgpreviewsize);
				echo " alt=\"图片预览:\r文件名:".$destination."\r上传时间:\" border='0'></a>";
			}
		}
		unlink($destination_folder.$_POST[image_path]);
	}else{
		$fname=$_POST[image_path];
	}

	//插入其他数据到数据库
	$sql = "update tea_prod set prod_name = '$_POST[prod_name]',prod_desc='$_POST[content]',prod_class='$_POST[classcode]'," .
			"src_price='$_POST[src_price]',new_price='$_POST[new_price]',suttle='$_POST[suttle]',season='$_POST[season]'," .
			"packing='$_POST[packing]',exp='$_POST[exp]',save_way='$_POST[save_way]',prod_add='$_POST[prod_add]'," .
			"state='$_POST[showindex]',image_path='$fname' where id = $_POST[id]";


	try{
		$db->query($sql);
		$db->Get_admin_msg("admin_prod_list.php?page=$_POST[page]","修改成功!");
	}catch(exception $e){
		$db->Get_admin_msg("admin_prod_list.php?page=$_POST[page]","修改失败，请重试或联系管理员!");
	}
}

?>