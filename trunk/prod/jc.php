<?php
$itemid = $_GET[itemid];
?>
<html>
<head>
<title>进仓</title>
<style type="text/css">
	.submitButton{
		BORDER-RIGHT: #7EBF4F 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #7EBF4F 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#B3D997); BORDER-LEFT: #7EBF4F 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #7EBF4F 1px solid
	}
</style>

</head>
<body>
<form action="post/order.action.php" method="get">
<input type="text" size="15" maxlength="20" readonly="readonly"
onfocus="{literal}WdatePicker({dateFmt:'yyyy-MM-dd'}){/literal}" class="Wdate"  readonly="readonly">
<input type="submit" name="submitname" class="submitButton" value="确定进仓"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
</form>
</body>
</html>