<?php
echo $a = htmlentities('<a class="footerAlink" href="procat.php">а╙цкил╪р</a>');
echo "<br>";
echo html_entity_decode($a);
if(date('Ymd')>'20111106'){echo date('Ymd');};
?>
