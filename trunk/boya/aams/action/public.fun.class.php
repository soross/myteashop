<?php
    function replace($str) {
    	// ��ֵ: Hll Wrld f PHP
		$vowels = array("'");
		return str_replace($vowels, "&prime;",$str);

    }
?>