<?php
$lang = array(
	"zh_cn"=>array(
		"public"=>array(
			"WangZhanZhuYe"=>"��վ��ҳ",
			"SheWeiZhuYe"=>"��Ϊ��ҳ",
			"JiaRuShouChang"=>"�����ղ�",
			"YuYanXuanZhe"=>"����ѡ��",
			"YingYu"=>"Ӣ��",
			"ZhongWen"=>"����",
			"SouSuo"=>"����",
			"ShouYe"=>"��ҳ",
			"GongSiJianJie"=>"��˾���",
			"ChanPinZhanShi"=>"��Ʒչʾ",
			"XinWenZiXin"=>"������Ѷ",
			"JiaMengDaiLi"=>"����ѧԺ",
			"BaoDiXueYuan"=>"���˴���",
			"LianXiWoMen"=>"��ϵ����",
			"Copy"=>"2011���ϻ���Ʒ��",
		),
		"index"=>array(

		),
		"news"=>array(
			"ZuiXinZiXin"=>"������Ѷ"
		),
		"company"=>array(
			"GongSiJianJie"=>"��˾���",
			"GongSiWenHua"=>"��ҵ�Ļ�",
			"PinPaiQuanShi"=>"Ʒ��ڹ��",
			"LianXiWoMen"=>"��ϵ����",
			"JiaMengDaiLi"=>"���˴���",
		),
		"product"=>array(
			"BianHao"=>"���",
			"CPBH"=>"��Ʒ���",
			"JiaGe"=>"�۸�",
			"VIPJiaGe"=>"��Ա�۸�",
			"ChaKanDaTu"=>"�鿴��ͼ",
			"ChanPinJieShao"=>"��Ʒ���",
			"ShiYongFangFa"=>"ʹ�÷���",
			"ChengFen"=>"��Ʒ�ɷ�",
			"TiShi"=>"����Ʒ������ͨ��FDA������ʳƷҩƷ����֣���ˡ�����רҵ��ʿָ����ʹ�á�",
		),
	),
	"en"=>array(
		"public"=>array(
			"WangZhanZhuYe"=>"Home Page",
			"SheWeiZhuYe"=>"Set Home Page",
			"JiaRuShouChang"=>"Collection",
			"YuYanXuanZhe"=>"Language",
			"YingYu"=>"English",
			"ZhongWen"=>"Chinese",
			"SouSuo"=>"Search",
			"ShouYe"=>"Home Page",
			"GongSiJianJie"=>"About Us",
			"ChanPinZhanShi"=>"Products",
			"XinWenZiXin"=>"News",
			"JiaMengDaiLi"=>"BTW College",
			"BaoDiXueYuan"=>"Distributor",
			"LianXiWoMen"=>"Contact Us",
			"Copy"=>"2011BaoDi Micro Peeling",
		),
		"news"=>array(
			"ZuiXinZiXin"=>"The Latest Information"
		),
		"company"=>array(
			"GongSiJianJie"=>"About Us",
			"GongSiWenHua"=>"Culture",
			"PinPaiQuanShi"=>"About Brand",
			"LianXiWoMen"=>"Contact Us",
			"JiaMengDaiLi"=>"Distributor",
		),
		"product"=>array(
			"BianHao"=>"No",
			"CPBH"=>"Item No",
			"JiaGe"=>"Preferred Customer Price",
			"VIPJiaGe"=>"Customer Price",
			"ChaKanDaTu"=>"View Larger",
			"ChanPinJieShao"=>"Overview",
			"ShiYongFangFa"=>"How To Use",
			"ChengFen"=>"Ingredients",
			"TiShi"=>"This statement has been evaluated by the Food and Drug Administration. This product is not intended to diagnose, treat, cure or prevent disease. ",
		),
	),
);
session_start();
$currlang = "".$_SESSION["Lang"];
//print_r($currlang);
if(empty($currlang) || ""==$currlang){
	$currlang="en";
}

?>
