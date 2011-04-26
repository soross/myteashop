<?php
//echo md5('10');




//PHP统计字符串里单词出现次数php 2010-12-07 18:44:22 阅读151 评论0   字号：大中小 订阅 .

//代码：

function full_count_words($str) {
	//返回完整数组，包含字符串里每个单词
	$words = str_word_count($str,1);
	$result = array();
	foreach ($words as $w) {
		$lw = strtolower($w);
		//判断单词是否是第一次出现，是则设置为1，否则就增加1
		if (!(isset($result[$lw]))) {
			$result[$lw] = 1;
		} else {
			$result[$lw]++;
		}
	}
	return $result;
}
//调用：<?php
$test = "Good luck to you,good by! me to ,good ,good";
$wordcount = full_count_words($test);
//echo $wordcount['good'];print_r($wordcount);
/* 输出结果：
 * Array(
 * [good] => 4
 * [luck] => 1
 * [to] => 2
 * [you] => 1
 * [by] => 1
 * [me] => 1)
 * */
//--------------------------------------------------------------------------------
//PHP自带函数： substr_count()

$words = "铁观音是乌龙茶的极品，其品质特征是: 茶条卷曲，肥壮圆结，沉重匀整，色泽砂绿，整体形状似蜻蜓头、螺旋体、青蛙腿。<##page##>冲泡后汤色金黄浓艳似琥珀，<##page##>有天然馥郁的兰花香，滋味醇厚甘鲜，<##page##>回甘悠久，俗称有“音韵”。铁观音茶香高而持久，可谓“七泡有余香”。";
echo substr_count($words,  '<##ddpage##>');   // 2
$b=explode('<##page##>',$words);
echo $b[1];



?>
