<?php
//GBK
function unescape_gbk($str) {
	$str = rawurldecode($str);
	preg_match_all("/%u.{4}|&#x.{4};|&#d+;|.+/U",$str,$r);
	$ar = $r[0];
	foreach($ar as $k=>$v) {
	if(substr($v,0,2) == "%u")
	$ar[$k] = iconv("UCS-2","GBK",pack("H4",substr($v,-4)));
	elseif(substr($v,0,3) == "&#x")
	$ar[$k] = iconv("UCS-2","GBK",pack("H4",substr($v,3,-1)));
	elseif(substr($v,0,2) == "&#") {
	$ar[$k] = iconv("UCS-2","GBK",pack("n",substr($v,2,-1)));
	}
	}
	return join("",$ar);
}

//utf-8
function unescape_utf_8($str){
	$ret = '';
	$len = strlen($str);
	for ($i = 0; $i < $len; $i++){
	if ($str[$i] == '%' && $str[$i+1] == 'u'){
	$val = hexdec(substr($str, $i+2, 4));
	if ($val < 0x7f) $ret .= chr($val);
	else if($val < 0x800) $ret .= chr(0xc0|($val>>6)).chr(0x80|($val&0x3f));
	else $ret .= chr(0xe0|($val>>12)).chr(0x80|(($val>>6)&0x3f)).chr(0x80|($val&0x3f));
	$i += 5;
	}
	else if ($str[$i] == '%'){
	$ret .= urldecode(substr($str, $i, 3));
	$i += 2;
	}
	else $ret .= $str[$i];
	}
	return $ret;
}


/* 编码 js escape() */
function escape($str,$encode='GBK'){
	$sublen=strlen($str);
    $reString="";
    for ($i=0;$i<$sublen;$i++){
        if(ord($str[$i])>=127){
            $tmpString=bin2hex(iconv($encode,"ucs-2",substr($str,$i,2)));    //此处GBK为目标代码的编码格式，请实际情况修改

            if (!eregi("WIN",PHP_OS)){
                $tmpString=substr($tmpString,2,2).substr($tmpString,0,2);
            }
            $reString.="%u".$tmpString;
            $i++;
        } else {
    		$reString.="%".dechex(ord($str[$i]));
		}
    }
	return $reString;
}

?>
