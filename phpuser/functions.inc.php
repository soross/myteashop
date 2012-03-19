<?php
error_reporting(0);
function check_form($form) {
	if(!get_magic_quotes_gpc()) {
		foreach( $form as $key=>$v){
			$form[$key] = addslashes($v);
		}
	}
	return $form;
}
/*------------------------自定义域名查询接口说明-------------------------/
1.将此文件名改为whois_api.php，系统在查询域名时会自动调用此接口
2.whois_api函数中的参数$domain是域名，$suffix是后缀(如.com)，在查询时传入
3.函数返回值要求：
http://pandavip.www.net.cn/check/check_ac1.cgi?domain=monclersalesuk.org
/-----------------------------------------------------------------------*/
function whois_api($domain,$ext){
	$params = 'domain='.urlencode($domain).".".urlencode($ext);
	$url = "http://pandavip.www.net.cn/check/check_ac1.cgi?".$params;
	$result=file_get_contents($url);
	$status = explode('|',$result);
	$str = $status[2];
	$name = $status[1];
	//1000 查询失败
	//1001 不可注册
	//9999 可以注册
	if( $ext == "co.uk" or $ext == "us"){
		return simulate( $domain,$ext);
	}else{
		if ($str == '210' ){
			return 9999;
		}elseif ($str == '211' ) {
			return 1001;
		}elseif ($str =='212'){
			return 1000;
		}else{
			return 1000;
		}
	}
}
//echo whois_api("123php",".cn");


function simulate( $domain,$ext){
	$action = "http://www.domainregister.com/cgi-bin/cdpro4.pl";
	$paramter = array(
	"domain"=>$domain,
	"ext"=>$ext, //$ext不包含点(.)
	"cdomain"=>"2.6",
	"lookup"=>"OK",
	"submit"=>"Check name"
	);
	$blist[] = "Mozilla/5.0 (compatible; Konqueror/3.92; Microsoft Windows) KHTML/3.92.0 (like Gecko)";
	$blist[] = "Mozilla/5.0 (compatible; Konqueror/4.0; Microsoft Windows) KHTML/4.0.80 (like Gecko)";
	$blist[] = "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; Media Center PC 5.0; .NET CLR 1.1.4322; Windows-Media-Player/10.00.00.3990; InfoPath.2";
	$blist[] = "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; Dealio Deskball 3.0)";
	$blist[] = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; NeosBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)";
	$br = $blist[array_rand($blist)];
	//curl setting
	$buf2 = '';
	if( function_exists("curl_init")){
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch, CURLOPT_USERAGENT, $br);
		curl_setopt($ch, CURLOPT_REFERER, $action);
		curl_setopt($ch, CURLOPT_URL,$action);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query( $paramter));
		$buf2 = curl_exec ($ch);
		curl_close ($ch);
		unset($ch);
	}
	if( strstr($buf2,"available.")){
		return 9999;
	}elseif( strstr($buf2,"is in use")){
		return 1001;
	}else{
		return 1000;
	}
}

//echo simulate("monclersaleuk","co.uk");

?>