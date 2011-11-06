<?php
class fun{
	private $db; //数据库

	/*构造函数*/
	public function __construct($db) {
		$this->db = $db;
	}

	//可提现金
	function getMoney($mbid){
		$query = $db->query("select * from lm_mb_limit where mb_id='$mbid'");
		$limit = $db->fetch_array($query);
		return ($limit[money]*0.8)+($limit[sale_money]*0.8)+$limit[exchange];
	}
	//提现
	function getOutMoney($mbid,$cnt){
		$query = $db->query("select * from lm_mb_limit where mb_id='$mbid'");
		$limit = $db->fetch_array($query);
		if(($limit[money]*0.8)>= $cnt){
			$db->query("update lm_mb_limit set money=money-" .($cnt/0.8) ." where mb_id='$mbid'");
			return true;
		}else if((($limit[money]*0.8)+($limit[sale_money]*0.8))>= $cnt){
			$tmp = $cnt-($limit[money]*0.8);
			$db->query("update lm_mb_limit set money=0,sale_money=sale_money-".($tmp/0.8)." where mb_id='$mbid'");
			return true;
		}else if((($limit[money]*0.8)+($limit[sale_money]*0.8)+$limit[exchange])>= $cnt){
			$tmp = $cnt- (($limit[money]*0.8) + ($limit[sale_money]*0.8));
			$db->query("update lm_mb_limit set money=0,sale_money=0,exchange=exchange-".($tmp)." where mb_id='$mbid'");
			return true;
		}else{
			return false;
		}
	}


	//积分转红利
	function getJiFen2Hongli($mbdi,$cnt){
		$query = $db->query("select * from lm_mb_limit where mb_id='$mbid'");
		$limit = $db->fetch_array($query);
		if($cnt <= $limit[jifen]/500){
			$db->query("update lm_mb_limit set hongli=hongli+$cnt,jifen=jifen-".($cnt*500)." where mb_id='$mbid'");
			return true;
		}else{
			return false;
		}
	}

	//当前红利
	function currentHongLi(){
		$sql="select (SUM(price)*500)+SUM(price_type) from lm_order WHERE TO_DAYS(create_date)=TO_DAYS(now())";
		$query = $db->query($sql);
		$row = $db->fetch_array($query);
		return (($row[0]*0.05));
	}




}
include_once("mysql.class.php");
$fun = new fun($db);


?>