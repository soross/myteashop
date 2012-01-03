<?php
@set_time_limit(0);
class HttpDown {
	var $m_url = "";
	var $m_urlpath = "";
	var $m_scheme = "http";
	var $m_host = "";
	var $m_port = "80";
	var $m_user = "";
	var $m_pass = "/";
	var $m_query = "";
	var $m_fp = "";
	var $m_error = "";
	var $m_httphead = "";
	var $m_html = "";
	var $m_puthead = "";
	var $BaseUrlPath = "";
	var $JumpCount = "0";

	//��ʼ��ϵͳ
	function PrivateInit($url) {
		if ($url == "")
			return;
		$urls = "";
		$urls = @ parse_url($url);
		$this->m_url = $url;
		if (is_array($urls)) {
			$this->m_host = $urls["host"];
			if (!empty ($urls["scheme"]))
				$this->m_scheme = $urls["scheme"];

			if (!empty ($urls["user"]))
				$this->m_user = $urls["user"];

			if (!empty ($urls["pass"]))
				$this->m_pass = $urls["pass"];

			if (!empty ($urls["port"]))
				$this->m_port = $urls["port"];

			if (!empty ($urls["path"])) {
				$this->m_path = $urls["path"];
			}

			$this->m_urlpath = $this->m_path;

			if (!empty ($urls["query"])) {
				$this->m_query = $urls["query"];
				$this->m_urlpath .= "?" . $this->m_query;
			}

			$this->HomeUrl = $urls["host"];
			$this->BaseUrlPath = $this->HomeUrl . $urls["path"];
			$this->BaseUrlPath = preg_replace("/\/([^\/]*)\.(.*)$/", "/", $this->BaseUrlPath);
			$this->BaseUrlPath = preg_replace("/\/$/", "", $this->BaseUrlPath);
		}
	}

	//���������
	function ResetAny() {
		$this->m_url = "";
		$this->m_urlpath = "";
		$this->m_scheme = "http";
		$this->m_host = "";
		$this->m_port = "80";
		$this->m_user = "";
		$this->m_pass = "";
		$this->m_path = "/";
		$this->m_query = "";
		$this->m_error = "";
	}

	//��ָ����ַ
	function OpenUrl($url,$requerType="GET"){
		$this->ResetAny();
		$this->JumpCount=0;
		$this->m_httphead=Array();
		$this->m_html="";
		$this->Close();
		//��ʼ��ϵͳ
		$this->PrivateInit($url);
		$this->PrivateStartSession($requerType);
	}

	//ת��300�ض�����ַ
	function JumpOpenUrl($url){
		$this->ResetAny();
		$this->JumpCount++;
		$this->m_httphead = Array();
		$this->m_html="";
		$this->Close();
		//��ʼ��ϵͳ
		$this->PrivateInit($url);
		$this->PrivateStartSession("GET");
	}

	//��ȡĳЩ���������ԭ��
	function printError(){
		echo "������Ϣ��".$this->m_error;
		echo "<br>���巵��ͷ��<br/>";
		foreach($this->m_httphead as $k=>$v){
			echo "$k=>$v<br />\r\n";
		}
	}

	function IsGetOK(){
		if(ereg("^2",$this->GetHead("http-state"))){
			return true;
		}else{
			$this->m_error.=$this->GetHead("http-state")."-".$this->GetHead("http-describe")."<br />";
			return false;
		}
	}

	//�����ص���ҳ�Ƿ���text����
	function IsText(){
		if(ereg("^2",$this->GetHead("http-state"))&&eregi("^text",$this->GetHead("content-type"))){
			return true;
		}else{
			$this->m_error."����Ϊ���ı����ͻ���ַ�ض���<br />";
			return false;
		}
	}

	//�жϷ��ص���ҳ�Ƿ����ض�������
	function IsContentType($ctype){
		if(ereg("^2",$this->GetHead("http-state"))&&$this->GetHead("content-type")==strtolower($ctype)){
			return true;
		}else{
			$this->m_error."���Ͳ���".$this->GetHead("content-type")."<br />";
			return false;
		}
	}

	//ʹ��httpЭ�������ļ�
	function SaveToBin($savefilename){
		if(!$this->IsGetOK())return false;
		if(@feof($this->m_fp)){
			$this->m_error="�����Ѿ��ر�";
			return false;
		}

		$fp = fopen($savefilename,"w");
		while(!feop($this->m_fp)){
			fwrite($fp,fread($this->m_fp,1024));
		}

		fclose($this->m_fp);
		fclose($fp);

		return true;
	}

	//������ҳ����Ϊtext�ı�
	function SaveToText($savefilename){
		if($this->IsText())$this->SaveToBin($savefilename);
		else return "";
	}

	function SaveFile($savefilename,$somecontent=""){
		$filename = $savefilename;
		$somecontent = $somecontent==""?$this->GetHtml():$somecontent;
		//if(is_writable($filename)){
			if(!$handle = fopen($filename,"w")){
				echo "can not open $filename";
				return false;
			}
			//��$somecontentд�뵽���Ǵ򿪵��ļ���
			if(!fwrite($handle,$somecontent)){
				echo "can not open $filename";
				return false;
			}
			//echo "�ɹ�д���ļ�"
			fclose($handle);
			//die($savefilename);
			return true;

		//}else{
		//echo "file $filename cannot";
		//return false;
		//}
	}

	//��httpЭ���ȡһ����ҳ������
	function GetHtml(){
		if(!$this->IsText())return "";
		if($this->m_html!="")return $this->m_html;
		if(!$this->m_fp || @feof($this->m_fp))return "";
		while(!feof($this->m_fp)){
			$this->m_html.=fgets($this->m_fp,256);
		}

		@fclose($this->m_fp);
		return $this->m_html;
	}

	//��ʼhttp�ػ�
	function PriveteStartSession($requerType="GET"){

		if(!$this->PrivateOpenHost()){
			$this->m_error.="��Զ����������!";
			return false;
		}

		if($this->GetHead("http-edition")=="HTTP/1.1"){
			$httpv = "HTTP/1.1";
		}else{
			$httpv = "HTTP/1.0";
		}

		$ps = explode("?",$this->m_urlpath);

		//���͹̶�����ʼ����ͷGet host��Ϣ
		if($requerType=="GET"){
			fputs($this->m_fp,"GET".$this->m_urlpath."$httpv\r\n");
		}else{
			fputs($this->m_fp,"POST".$ps[0],"$httpv\r\n");
		}
		$this->m_puthead["Host"] = $this->m_host;

		//�����û��Զ��������ͷ
		if(!isset($this->m_puthead["Accept"])){
			$this->m_puthead["Accept"]="*/*";
		}
		if(!isset($this->m_puthead["User-Agent"])){
			$this->m_puthead["User-Agent"]="Mozilla/4.0 (compatible;MSIE 6.0; Window NT 5.2)";
		}
		if(!empty($GLOBALS["RfUrl"])){
			$this->m_puthead["Refer"]=$GLOBALS["RfUrl"];
		}else if(!isset($GLOBALS["RfUrl"])){
			$this->m_puthead["Refer"]="http://".$this->m_puthead["Host"];
		}

		foreach($this->m_puthead as $k=>$v){
			$k = trim($k);
			$v = trim($v);
			if($k!="" && $v!=""){
				fputs($this->m_fp,"$k: $v\r\n");
			}
		}

		if($requerType=="POST"){
			$postdate = "";
			if(count($ps)>1){
				for ($i = 1; $i < count($ps); $i++) {
					$postdate.=$ps[$i];
				}
			}else{
				$postdate="OK";
			}

			$plen = strlen($postdate);
			fputs($this->m_fp,"Content-Type: application/x-www-form-urlencoded\r\n");
			fputs($this->m_fp,"Content-Length: $plen\r\n");
		}

		//���͹̶��Ľ�������ͷ
		//http 1.1Э�����ָ���ĵ�������ر����� �����ȡ�ĵ���ʱ���޷�ʹ��feof�жϽ���
		if($httpv=="HTTP/1.1"){
			fputs($this->m_fp,"Content: Close\r\n\r\n");
		}else{
			fputs($this->m_fp,"\r\n");
		}

		if($requerType=="POST"){
			fputs($this->m_fp,$postdate);
		}

		//��ȡӦ��ͷ״̬��Ϣ
		$httpstas = explode(" ",fgets($this->m_fp,256));
		$hits->m_httphead["http-edition"]=trim($httpstas[0]);
		$hits->m_httphead["http-state"]=trim($httpstas[1]);
		$hits->m_httphead["http-describe"]="";

		for($i=2;$i<count($httpstas);$i++){
			$this->m_httphead["http-describe"]=" ".trim($httpstas[$i]);
		}

		//��ȡ��ϸ��Ӧ��ͷ
		while(!feof($this->m_fp)){
			$line = trim(fgets($this->m_fp,256));
			if($line=="")break;
			$hkey = "";
			$hvalue="";
			$v = 0;
			for($i=0;i<strlen($line);$i++){
				if($v==1)$hvalue.=$line[$i];
				if($line[$i]==":")$v=1;
				if($v==0)$hkey.=$line[$i];
			}
		}

		$hkey = trim($hkey);
		if($hkey){
			$this->m_httphead[strtolower($hkey)] =trim($hvalue);
		}


		//�ж��Ƿ���3xxx��ͷ��Ӧ��
		if(ereg("^3",$this->m_httphead["http-state"])){
			if($this->JumpCount>3)return;
			if(isset($this->m_httphead["location"])){
				$newurl = $this->m_httphead["location"];
				if(eregi("^http",$newurl)){
					$this->JumpOpenUrl($newurl);
				}else{
					$newurl = $this->FillUrl($newurl);
					$this->JumpOpenUrl($newurl);
				}
			}else{
				$this->m_error="�޷�ʶ��𸴣�";
			}
		}
	}

	//��ȡһ��httpͷ��ֵ
	function GetHead($headname){
		$headname = strtolower($headname);
		if(isset($this->m_httphead[$headname])){
			return $this->m_httphead[$headname];
		}else{
			return false;
		}
	}

	//����httpͷ��ֵ
	function SetHead($skey,$svalue){
		$this->m_puthead[$skey] = $svalue;
	}

	//������
	function PrivateOpenHost(){
		if($this->m_host=="")return false;
		$errno = "";
		$errstr = "";
		$this->m_fp = @fsockopen($this->m_host,$this->m_port,$errno,$errstr,10);
		if(!$this->m_fp){
			$this->m_error = $errstr;
			return false;
		}else{
			return true;
		}
	}

	//�ر�����
	function Close(){
		@fclose($this->m_fp);
	}

	//��ȫ�����ַ
	function FillUrl($surl){
		$i = 0;
		$dstr = "";
		$pstr = "";
		$okurl = "";
		$pathStep = 0;
		$surl = trim($surl);
		if($surl=="")return "";
		$pos = strpos($surl,"#");
		if($pos>0)$surl =substr($surl,0,$pos);
		if($surl[0]=="/"){
			$okurl = "http://".$this->HomeUrl.$surl;
		}else if($surl[0]=="."){
			if(strlen($surl)<=1) return "";
			if(strlen($surl[1]=="/")){
				$okurl = "http://".$this->BaseUrlPath."/".substr($surl,2,strlen($surl)-2);
			}else{
				$urls = explode("/",$surl);
				foreach($urls as $u){
					if($u=="...")$pathStep++;
					else if($i<count($urls)-1) $dstr.= $urls[$i]."/";
					else $dstr.=$urls[$i];
					$i++;
				}
				$urls = explode("/",$this->BaseUrlPath);
				if(count($urls)<=$pathStep)return "";
				else{
					$pstr = "http://";
					for ($i = 0; $i < count($urls)-$pathStep; $i++) {
						$pstr.=$urls[$i]."/";
					}
					$okurl = $pstr.$dstr;
				}
			}
		}else{
			if(strlen($surl)<7){
				$okurl = "http://".$this->BaseUrlPath."/".$surl;
			}else if(strtolower(substr($surl,0,7))=="http://"){
				$okurl = $surl;
			}else{
				$okurl = "http://".$this->BaseUrlPath."/".$surl;
			}
			$okurl = eregi_replace("^([url]http://)[/url]","",$okurl);
			$okurl = eregi_replace("/{1,}","/",$okurl);
			return "http://".$okurl;
		}
	}
}
?>