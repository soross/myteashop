<?php
//echo md5('10');




//PHPͳ���ַ����ﵥ�ʳ��ִ���php 2010-12-07 18:44:22 �Ķ�151 ����0   �ֺţ�����С ���� .

//���룺

function full_count_words($str) {
	//�����������飬�����ַ�����ÿ������
	$words = str_word_count($str,1);
	$result = array();
	foreach ($words as $w) {
		$lw = strtolower($w);
		//�жϵ����Ƿ��ǵ�һ�γ��֣���������Ϊ1�����������1
		if (!(isset($result[$lw]))) {
			$result[$lw] = 1;
		} else {
			$result[$lw]++;
		}
	}
	return $result;
}
//���ã�<?php
$test = "Good luck to you,good by! me to ,good ,good";
$wordcount = full_count_words($test);
//echo $wordcount['good'];print_r($wordcount);
/* ��������
 * Array(
 * [good] => 4
 * [luck] => 1
 * [to] => 2
 * [you] => 1
 * [by] => 1
 * [me] => 1)
 * */
//--------------------------------------------------------------------------------
//PHP�Դ������� substr_count()

$words = "��������������ļ�Ʒ����Ʒ��������: ������������׳Բ�ᣬ����������ɫ��ɰ�̣�������״������ͷ�������塢�����ȡ�<##page##>���ݺ���ɫ���Ũ�������꣬<##page##>����Ȼ����������㣬��ζ������ʣ�<##page##>�ظ��ƾã��׳��С����ϡ�������������߶��־ã���ν�����������㡱��";
echo substr_count($words,  '<##ddpage##>');   // 2
$b=explode('<##page##>',$words);
echo $b[1];



?>
