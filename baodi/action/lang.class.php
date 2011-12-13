<?php
$lang = array(
	"zh_cn"=>array(
		"public"=>array(
			"WangZhanZhuYe"=>"网站主页",
			"SheWeiZhuYe"=>"设为主页",
			"JiaRuShouChang"=>"加入收藏",
			"YuYanXuanZhe"=>"语言选择",
			"YingYu"=>"英语",
			"ZhongWen"=>"中文",
			"SouSuo"=>"搜索",
			"ShouYe"=>"首页",
			"GongSiJianJie"=>"公司简介",
			"ChanPinZhanShi"=>"产品展示",
			"XinWenZiXin"=>"新闻资讯",
			"JiaMengDaiLi"=>"加盟代理",
			"BaoDiXueYuan"=>"宝迪学院",
			"LianXiWoMen"=>"联系我们",
			"Copy"=>"2011宝迪护肤品牌",
		),
		"index"=>array(

		),
		"news"=>array(
			"ZuiXinZiXin"=>"最新资讯"
		),
		"company"=>array(
			"GongSiJianJie"=>"公司简介",
			"GongSiWenHua"=>"企业文化",
			"PinPaiQuanShi"=>"品牌诠释",
			"LianXiWoMen"=>"联系我们",
			"JiaMengDaiLi"=>"加盟代理",
		),
		"product"=>array(
			"BianHao"=>"编号",
			"CPBH"=>"产品编号",
			"JiaGe"=>"价格",
			"VIPJiaGe"=>"会员价格",
			"ChaKanDaTu"=>"查看大图",
			"ChanPinJieShao"=>"产品简介",
			"ShiYongFangFa"=>"使用方法",
			"ChengFen"=>"产品成分",
			"TiShi"=>"本产品内容已通过FDA（美国食品药品管理局）审核。请在专业人士指导下使用。",
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
			"JiaMengDaiLi"=>"Agent",
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
