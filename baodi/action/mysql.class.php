<?php
class mysql {
	private $db_host; //���ݿ�����
	private $db_user; //���ݿ��û���
	private $db_pwd; //���ݿ��û�������
	private $db_database; //���ݿ���
	private $conn; //���ݿ����ӱ�ʶ;
	private $result; //ִ��query����Ľ����Դ��ʶ
	private $sql; //sqlִ�����
	private $row; //���ص���Ŀ��
	private $coding; //���ݿ���룬GBK,UTF8,gb2312
	private $bulletin = true; //�Ƿ��������¼
	private $show_error = true; //���Խ׶Σ���ʾ���д���,���а�ȫ����,Ĭ�Ϲر�
	private $is_error = false; //���ִ����Ƿ�������ֹ,Ĭ��true,���鲻���ã���Ϊ��������ʱ�û�ʲôҲ�������Ǻܿ��յ�

	/*���캯��*/
	public function __construct($db_host, $db_user, $db_pwd, $db_database, $conn, $coding) {
		$this->db_host = $db_host;
		$this->db_user = $db_user;
		$this->db_pwd = $db_pwd;
		$this->db_database = $db_database;
		$this->conn = $conn;
		$this->coding = $coding;
		$this->connect();
	}

	/*���ݿ�����*/
	public function connect() {
		if ($this->conn == "pconn") {
			//��������
			$this->conn = mysql_pconnect($this->db_host, $this->db_user, $this->db_pwd);
		} else {
			//��ʹ����
			$this->conn = mysql_connect($this->db_host, $this->db_user, $this->db_pwd);
		}

		if (!mysql_select_db($this->db_database, $this->conn)) {
			if ($this->show_error) {
				$this->show_error("���ݿⲻ���ã�", $this->db_database);
			}
		}
		mysql_query("SET NAMES $this->coding");
	}

	/*���ݿ�ִ����䣬��ִ�в�ѯ����޸�ɾ�����κ�sql���*/
	public function query($sql) {
		if ($sql == "") {
			$this->show_error("SQL������", "SQL��ѯ���Ϊ��");
		}
		$this->sql = $sql;

		$result = mysql_query($this->sql, $this->conn);

		if (!$result) {
			//������ʹ�ã�sql������ʱ���Զ���ӡ����
			if ($this->show_error) {
				$this->show_error("����SQL��䣺", $this->sql);
			}
		} else {
			$this->result = $result;
		}
		return $this->result;
	}

	/*��������µ����ݿ�*/
	public function create_database($database_name) {
		$database = $database_name;
		$sqlDatabase = 'create database ' . $database;
		$this->query($sqlDatabase);
	}

	/*��ѯ�������������ݿ�*/
	//��ϵͳ���ݿ����û����ݿ�ֿ�����ֱ�۵���ʾ��
	public function show_databases() {
		$this->query("show databases");
		echo "�������ݿ⣺" . $amount = $this->db_num_rows($rs);
		echo "<br />";
		$i = 1;
		while ($row = $this->fetch_array($rs)) {
			echo "$i $row[Database]";
			echo "<br />";
			$i++;
		}
	}

	//��������ʽ�����������������ݿ���
	public function databases() {
		$rsPtr = mysql_list_dbs($this->conn);
		$i = 0;
		$cnt = mysql_num_rows($rsPtr);
		while ($i < $cnt) {
			$rs[] = mysql_db_name($rsPtr, $i);
			$i++;
		}
		return $rs;
	}

	/*��ѯ���ݿ������еı�*/
	public function show_tables($database_name) {
		$this->query("show tables");
		echo "�������ݿ⣺" . $amount = $this->db_num_rows($rs);
		echo "<br />";
		$i = 1;
		while ($row = $this->fetch_array($rs)) {
			$columnName = "Tables_in_" . $database_name;
			echo "$i $row[$columnName]";
			echo "<br />";
			$i++;
		}
	}

	/*
	mysql_fetch_row()    array  $row[0],$row[1],$row[2]
	mysql_fetch_array()  array  $row[0] �� $row[id]
	mysql_fetch_assoc()  array  ��$row->content �ֶδ�Сд����
	mysql_fetch_object() object ��$row[id],$row[content] �ֶδ�Сд����
	*/

	/*ȡ�ý������*/
	public function mysql_result_li() {
		return mysql_result($str);
	}

	/*ȡ�ü�¼��,��ȡ����-�����͹���,ʹ��$row['content'] */
	public function fetch_array() {
		return mysql_fetch_array($this->result);
	}

	//��ȡ��������,ʹ��$row['�ֶ���']
	public function fetch_assoc() {
		return mysql_fetch_assoc($this->result);
	}

	//��ȡ������������,ʹ��$row[0],$row[1],$row[2]
	public function fetch_row() {
		return mysql_fetch_row($this->result);
	}

	//��ȡ��������,ʹ��$row->content
	public function fetch_Object() {
		return mysql_fetch_object($this->result);
	}

	//�򻯲�ѯselect
	public function findall($table) {
		$this->query("SELECT * FROM $table");
	}

	//�򻯲�ѯselect
	public function select($table, $columnName = "*", $condition = '', $debug = '') {
		$condition = $condition ? ' Where ' . $condition : NULL;
		if ($debug) {
			echo "SELECT $columnName FROM $table $condition";
		} else {
			$this->query("SELECT $columnName FROM $table $condition");
		}
	}

	//��ɾ��del
	public function delete($table, $condition, $url = '') {
		if ($this->query("DELETE FROM $table WHERE $condition")) {
			if (!empty ($url))
				$this->Get_admin_msg($url, 'ɾ���ɹ���');
		}
	}

	//�򻯲���insert
	public function insert($table, $columnName, $value, $url = '') {
		if ($this->query("INSERT INTO $table ($columnName) VALUES ($value)")) {
			if (!empty ($url))
				$this->Get_admin_msg($url, '��ӳɹ���');
		}
	}

	//���޸�update
	public function update($table, $mod_content, $condition, $url = '') {
		//echo "UPDATE $table SET $mod_content WHERE $condition"; exit();
		if ($this->query("UPDATE $table SET $mod_content WHERE $condition")) {
			if (!empty ($url))
				$this->Get_admin_msg($url);
		}
	}

	/*ȡ����һ�� INSERT ���������� ID*/
	public function insert_id() {
		return mysql_insert_id();
	}

	//ָ��ȷ����һ�����ݼ�¼
	public function db_data_seek($id) {
		if ($id > 0) {
			$id = $id -1;
		}
		if (!@ mysql_data_seek($this->result, $id)) {
			$this->show_error("SQL�������", "ָ��������Ϊ��");
		}
		return $this->result;
	}

	// ����select��ѯ���������������
	public function db_num_rows() {
		if ($this->result == null) {
			if ($this->show_error) {
				$this->show_error("SQL������", "��ʱΪ�գ�û���κ����ݣ�");
			}
		} else {
			return mysql_num_rows($this->result);
		}
	}

	// ����insert,update,deleteִ�н��ȡ��Ӱ������
	public function db_affected_rows() {
		return mysql_affected_rows();
	}

	//�����ʾsql���
	public function show_error($message = "", $sql = "") {
		if (!$sql) {
			echo "<font color='red'>" . $message . "</font>";
			echo "<br />";
		} else {
			echo "<fieldset>";
			echo "<legend>������Ϣ��ʾ:</legend><br />";
			echo "<div style='font-size:14px; clear:both; font-family:Verdana, Arial, Helvetica, sans-serif;'>";
			echo "<div style='height:20px; background:#000000; border:1px #000000 solid'>";
			echo "<font color='white'>����ţ�12142</font>";
			echo "</div><br />";
			echo "����ԭ��" . mysql_error() . "<br /><br />";
			echo "<div style='height:20px; background:#FF0000; border:1px #FF0000 solid'>";
			echo "<font color='white'>" . $message . "</font>";
			echo "</div>";
			echo "<font color='red'><pre>" . $sql . "</pre></font>";
			$ip = $this->getip();
			if ($this->bulletin) {
				$time = date("Y-m-d H:i:s");
				$message = $message . "\r\n$this->sql" . "\r\n�ͻ�IP:$ip" . "\r\nʱ�� :$time" . "\r\n\r\n";

				$server_date = date("Y-m-d");
				$filename = $server_date . ".txt";
				$file_path = "error/" . $filename;
				$error_content = $message;
				//$error_content="��������ݿ⣬����������";
				$file = "error"; //�����ļ�����Ŀ¼

				//�����ļ���
				if (!file_exists($file)) {
					if (!mkdir($file, 0777)) {
						//Ĭ�ϵ� mode �� 0777����ζ�������ܵķ���Ȩ
						die("upload files directory does not exist and creation failed");
					}
				}

				//����txt�����ļ�
				if (!file_exists($file_path)) {

					//echo "���������ļ�";
					fopen($file_path, "w+");

					//����Ҫȷ���ļ����ڲ��ҿ�д
					if (is_writable($file_path)) {
						//ʹ�����ģʽ��$filename���ļ�ָ�뽫�����ļ��Ŀ�ͷ
						if (!$handle = fopen($file_path, 'a')) {
							echo "���ܴ��ļ� $filename";
							exit;
						}

						//��$somecontentд�뵽���Ǵ򿪵��ļ��С�
						if (!fwrite($handle, $error_content)) {
							echo "����д�뵽�ļ� $filename";
							exit;
						}

						//echo "�ļ� $filename д��ɹ�";

						echo "���������¼������!";

						//�ر��ļ�
						fclose($handle);
					} else {
						echo "�ļ� $filename ����д";
					}

				} else {
					//����Ҫȷ���ļ����ڲ��ҿ�д
					if (is_writable($file_path)) {
						//ʹ�����ģʽ��$filename���ļ�ָ�뽫�����ļ��Ŀ�ͷ
						if (!$handle = fopen($file_path, 'a')) {
							echo "���ܴ��ļ� $filename";
							exit;
						}

						//��$somecontentд�뵽���Ǵ򿪵��ļ��С�
						if (!fwrite($handle, $error_content)) {
							echo "����д�뵽�ļ� $filename";
							exit;
						}

						//echo "�ļ� $filename д��ɹ�";
						echo "���������¼������!";

						//�ر��ļ�
						fclose($handle);
					} else {
						echo "�ļ� $filename ����д";
					}
				}

			}
			echo "<br />";
			if ($this->is_error) {
				exit;
			}
		}
		echo "</div>";
		echo "</fieldset>";

		echo "<br />";
	}

	//�ͷŽ����
	public function free() {
		@ mysql_free_result($this->result);
	}

	//���ݿ�ѡ��
	public function select_db($db_database) {
		return mysql_select_db($db_database);
	}

	//��ѯ�ֶ�����
	public function num_fields($table_name) {
		//return mysql_num_fields($this->result);
		$this->query("select * from $table_name");
		echo "<br />";
		echo "�ֶ�����" . $total = mysql_num_fields($this->result);
		echo "<pre>";
		for ($i = 0; $i < $total; $i++) {
			print_r(mysql_fetch_field($this->result, $i));
		}
		echo "</pre>";
		echo "<br />";
	}

	//ȡ�� MySQL ��������Ϣ
	public function mysql_server($num = '') {
		switch ($num) {
			case 1 :
				return mysql_get_server_info(); //MySQL ��������Ϣ
				break;

			case 2 :
				return mysql_get_host_info(); //ȡ�� MySQL ������Ϣ
				break;

			case 3 :
				return mysql_get_client_info(); //ȡ�� MySQL �ͻ�����Ϣ
				break;

			case 4 :
				return mysql_get_proto_info(); //ȡ�� MySQL Э����Ϣ
				break;

			default :
				return mysql_get_client_info(); //Ĭ��ȡ��mysql�汾��Ϣ
		}
	}

	//�����������Զ��ر����ݿ�,�������ջ���
	public function __destruct() {
		if (!empty ($this->result)) {
			$this->free();
		}
		mysql_close($this->conn);
	} //function __destruct();

	/*��ÿͻ�����ʵ��IP��ַ*/
	function getip() {
		if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")) {
			$ip = getenv("HTTP_CLIENT_IP");
		} else
			if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")) {
				$ip = getenv("HTTP_X_FORWARDED_FOR");
			} else
				if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")) {
					$ip = getenv("REMOTE_ADDR");
				} else
					if (isset ($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")) {
						$ip = $_SERVER['REMOTE_ADDR'];
					} else {
						$ip = "unknown";
					}
		return ($ip);
	}
	function inject_check($sql_str) { //��ֹע��
		$check = eregi('select|insert|update|delete|\'|\/\*|\*|\.\.\/|\.\/|union|into|load_file|outfile', $sql_str);
		if ($check) {
			echo "����Ƿ�ע�����ݣ�";
			exit ();
		} else {
			return $sql_str;
		}
	}
	function checkurl() { //�����·
		if (preg_replace("/https?:\/\/([^\:\/]+).*/i", "\\1", $_SERVER['HTTP_REFERER']) !== preg_replace("/([^\:]+).*/", "\\1", $_SERVER['HTTP_HOST'])) {
			header("Location: http://www.kebeke.com");
			exit();
		}
	}

	function makeHtml($file,$content){
		$fp = fopen($file,'w');
		fwrite($fp,$content);
		fclose($fp);
	}

	//�ж�id��Ӧ��html�ļ��Ƿ����� ������ھ�ֱ�ӷ��� �����ھͷ���ERROR
	function getFileName($id,$dir,$start){
		$result ="ERROR";

		echo is_dir($dir)."<br>";

	   	if(is_dir($dir)){

	     	if ($dh = opendir($dir)) {
	        	while (($file= readdir($dh)) !== false){

	     			if(!((is_dir($dir."/".$file)) && $file!="." && $file!="..")){
		         		if($file!="." && $file!=".."){
		         			echo $file."<br>";
		         			$tmpId = substr($file,strlen($start)+1,strlen($id));
		         			echo "file==".$tmpId."===".$file;
		         			if($tmpId === $id ){
		         				$result = $file;
		         				break;
		         			}
		      			}
	     			}
	       		}
	        	closedir($dh);
	     	}
	   	}

	   	if($result=="ERROR"){
			$randNum = str_pad(rand(0,10000),strlen($start)+1,'1',STR_PAD_LEFT);
			$filename = $start.'_'.$id.'_'.$randNum.'.shtml';
		}else{
			$filename = $result;
		}
	   	return $filename;
	}

	//������վ��������
	function makeSearchData($path,$content){
		$tags = split(">",$content);
		$dtime = strftime("%y-%m-%d %H:%M:%S",mktime());
		$body = "";
		$title = "";
		$t=0;
		$j=0;
		//�����ȡtitle �� body����
		foreach($tags as $tag){
			$tag = ereg_replace("[\n\r\t]","",str_replace(" ","",$tag));
			if($t==0){
				if(eregi("<tit",$tag)){
					$title = eregi_replace("<(.*)$","",$tags[$j+1]);
					$t=1;
				}
			}
			if($t==1){
				if(eregi("<body",$tag)) $t=2;
			}
			if($t==2&&$tag[0]!="<"){
				$body .= str_replace("&nbsp;","",ereg_replace("<(.*)$","",$tag));
			}
			$j++;
		}
		if(empty($title) || ""== $title)$title=$path;

		//&quot; " ����   &acute; ' ������
		$body = $this->clear_html_label($body);
		$body = str_replace("'","&acute;",str_replace("\"","&quot;",$body));

		//����·���ж��Ƿ����
		//������޸�
		$query = $this->query("select count(*) from weball where filename='$path'");
		$row = $this->fetch_array($query);

		if($row[0]>0){
			$this->query("delete from weball where filename='".$path."'");
		}
		$this->query("insert into weball(title,keyword,filename,dtime) values('$title','".$body."','$path','$dtime')");
	}


	//-----------�����ַ���ȡ-----------------------------------------=--
	function cn_substr($str,$start,$len){
	  	if(strlen($str) > $len)	{
			for($i=0;$i<$start+$len-2;$i++)	{
	       		$tmpstr =(ord($str[$i])>127)?$str[$i].$str[++$i]:$str[$i];
	       		if ($i>=$start) $tmp .= $tmpstr;
	    	}
	 		return $tmp.'��';
		}else {
	       	return $str;
	 	}
	}
	function clear_html_label($html) {
		$search = array ("'<script[^>]*?>.*?</script>'si", "'<[/!]*?[^<>]*?>'si", "'([rn])[s]+'", "'&(quot|#34);'i", "'&(amp|#38);'i", "'&(lt|#60);'i", "'&(gt|#62);'i", "'&(nbsp|#160);'i", "'&(iexcl|#161);'i", "'&(cent|#162);'i", "'&(pound|#163);'i", "'&(copy|#169);'i", "'&#(d+);'e");
		$replace = array ("", "", "1", "\"", "&", "<", ">", " ", chr(161), chr(162), chr(163), chr(169), "chr(1)");

		return preg_replace($search, $replace, $html);
	}


	function subShowContent($key,$content,$startStr,$endStr){
		$tmpResult = "";
		$seq = 0;
		while($start = strpos($content,$startStr)){
			//$start = strpos($content,$startStr);
			$end = strpos($content,$endStr);
			//echo "s=".$start;
			$longStr = 30;
			$longEndStr = 100;
			if ($start !== false) {
				if($end >= $start-$longStr || $end <= ($start-$longStr+$longEndStr)){
						$longEndStr = $longEndStr+strlen($endStr);
						$longStr = $longStr + +strlen($endStr);
				}
				if($start>$longStr){

					if($seq==0){
						$tmpResult = $tmpResult."...".$this->cn_substr($content,$start-$longStr,$longEndStr);
					}else{
						$tmpResult = "...".$tmpResult."...".$this->cn_substr($content,$start-$longStr,$longEndStr);
					}
				}else{
					if($seq==0){
						$tmpResult = $tmpResult.$this->cn_substr($content,0,100);
					}else{
						$tmpResult = "...".$tmpResult.$this->cn_substr($content,0,100);
					}
				}
				//echo "<br>tmp==".$tmpResult;
				$content = $this->cn_substr($content,$end+strlen($endStr),(strlen($content)-$end-strlen($endStr)));
				//echo "<br>contetn===".$content;
			}
			$seq++;
		}
		return $tmpResult;
	}

}
$db=new mysql("localhost", "root", "root", "baodi", ALL_PS, "GBK");

//��ȡ���鼯
function getRows($table,$db,$field = "*"){
	$query = $db->query("select ".$field." from ".$table);
	$returnRow = array();
	while($row = $db->fetch_array($query)){
		$returnRow[] = $row;
	}
	return $returnRow;
}

//��ȡһ����¼��Ϣ
function getInfo($table,$db,$field = "*"){
	$query = $db->query("select ".$field." from ".$table);
	return $info = $db->fetch_array($query);
}



?>
