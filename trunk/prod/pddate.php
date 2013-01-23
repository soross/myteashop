<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<style type="text/css">
	*{margin:0px;border:0px;padding:0px;}
	body{font:12px "宋体";}
	a{color:#000;text-decoration:none;}
	a:hover{color:#F30;text-decoration:underline;}
	input{padding:0px;margin:0px;}
	.txtbox{border:1px solid #7EBF4F;height:20px;line-height:22px;width:120px;}
	.bfont{font:700 12px "宋体"};
	#login{width:400px;height:100%;overflow:hidden;margin:0px auto;}
	#title{width:400px;height:25px;line-height:25px;color:#F60;font-weight:700;background-color:#FDEBD9;text-align:center;margin:0px auto;}
	#loginbox{width:185px;height:60px;margin:10px 20px;float:left;display:inline;}
	#btnlogin{width:55px;height:60px;float:right;margin:10px 30px 10px 5px;}
	#forget{width:200px;margin:0px auto;height:25px;line-height:25px;text-align:center;}
	#forget span{width:80px;display:inline;margin:0px 10px;}
	.submitButton{
		BORDER-RIGHT: #7EBF4F 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #7EBF4F 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#B3D997); BORDER-LEFT: #7EBF4F 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #7EBF4F 1px solid
	}
</style>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<body style="text-align:center;" >
<form action="post/order.action.php?" method="post">
<table border="0" cellpadding="0" cellspacing="0">
    <tr style="height:30px">
        <td>排单时间：</td>
        <td>
        <input class="txtbox" type="text" id="sdate" name="sdate"
        onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});" class="Wdate"  readonly="readonly"/></td>
        <td>&nbsp;<input class="submitButton" type="submit" name="tijiao" value="录入排单时间"/>
        <input type="hidden" id="itemid" name="itemid" value="<?php echo $_GET[itemid];?>"/>
        <input type="hidden" id="orderid" name="orderid" value="<?php echo $_GET[orderid];?>"/>
		<input type="hidden" id="task" name="task" value="orderPDdate"/>
        </td>
    </tr>
</table>
</form>
</body>

</html>
