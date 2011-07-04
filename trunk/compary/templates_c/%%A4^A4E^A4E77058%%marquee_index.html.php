<?php /* Smarty version 2.6.26, created on 2011-06-30 11:25:35
         compiled from inc/marquee_index.html */ ?>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>果果网络</title>
<?php echo '
<script language="JavaScript">
	var tm=null
	function newsScroll()   {
		if(scrollimg.parentNode.scrollLeft!=(scrollimg.clientWidth/2)) {
			scrollimg.parentNode.scrollLeft++;
		}else {
			scrollimg.parentNode.scrollLeft=0
		}
	}
	window.onload=function(){
		simg1.innerHTML=simg.innerHTML
		tm=setInterval(\'newsScroll()\',25)
	}
	function stop(){
	clearInterval(tm)
	}
	function start(){
		tm=setInterval(\'newsScroll()\',25)
	}
</script>
'; ?>

</head>
<body>
	<div style="width:1000px;overflow:hidden" onMouseOver="stop()" onMouseOut="start()">
		<table width="1000px" border="0" cellspacing="0" cellpadding="0" id="scrollimg">
			<tr>
			    <td id="simg">
				    <table width="1000" border="0" cellspacing="0" cellpadding="0">
						<tr>
						    <td><?php echo $this->_tpl_vars['newsListStr']; ?>
</td>
						</tr>
					</table>
				</td>
			    <td id="simg1"></td>
			</tr>
		</table>
	</div>
</body>
</html>