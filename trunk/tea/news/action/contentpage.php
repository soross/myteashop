<LI id=pl class=pbutton onclick="javascript:showTopPageDivByKey();">��һҳ</LI>
<?php
		for($p=0;$p<$cntarray;$p++){
			if($p==0){
?>
		<LI id=li_p_<?php echo $p;?> class=pages name="pageLiByKey" onclick="javascript:showPageDivByKey(<?php echo $p;?>);"><?php echo $p+1;?></LI>
<?php
			}else{
?>
		<LI id=li_p_<?php echo $p;?> class=pagesnow name="pageLiByKey" onclick="javascript:showPageDivByKey(<?php echo $p;?>);"><?php echo $p+1;?></LI>
<?php
			}
		}
?>
<LI id=pn class=pbutton onclick="javascript:showDownPageDivByKey();">��һҳ</LI>

