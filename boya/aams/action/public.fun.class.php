<?php
    function replace($str) {
    	// ¸³Öµ: Hll Wrld f PHP
		$vowels = array("'");
		return str_replace($vowels, "&prime;",$str);

    }
?>