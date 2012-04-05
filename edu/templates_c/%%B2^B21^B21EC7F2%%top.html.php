<?php /* Smarty version 2.6.26, created on 2012-04-05 13:57:49
         compiled from inc/top.html */ ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title><?php echo $this->_tpl_vars['seo']['title']; ?>
</title>
<meta name="keywords" content="<?php echo $this->_tpl_vars['seo']['keyword']; ?>
" />
<meta name="description" content="<?php echo $this->_tpl_vars['seo']['desc']; ?>
" />

<link href="css/index_css.css" rel="stylesheet" type="text/css">
<script type='text/javascript' language='JavaScript' src='js/Southidcmenu.js'></script>
</head>


<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<table width="970" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr>
		<td><img src="images/tou.gif" width="960" height="150">
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" background="images/index_r3_c1.jpg">
			<tr>
				<td height="37" align="center" valign="top">
				<table width="100%" border="0" cellpadding="3" cellspacing="0">
					<tr>
						<td width="75%" valign="top"><script type='text/javascript'
							language='JavaScript'>
<!--
stm_bm(['uueoehr',400,'','images/blank.gif',0,'','',0,0,0,0,0,1,0,0]);
stm_bp('p0',[0,4,0,0,2,2,0,0,100,'',-2,'',-2,0,0,0,'#000000','transparent','',3,0,0,'#000000']);
stm_ai('p0i0',[0,'','','',-1,-1,0,'','_self','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#666666','#666666','#000000','9pt Tahoma','9pt Tahoma',0,0]);
stm_aix('p0i1','p0i0',[0,'首页','','',-1,-1,0,'index.php ','_self','index.php','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#ffffff','#cc0000','9pt Tahoma','9pt Tahoma']);
stm_aix('p0i2','p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#666666','#ffffff','#ffffff','9pt Tahoma','9pt Tahoma',0,0]);
<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['menulist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
stm_aix('p0i3','p0i0',[0,'<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['flag']; ?>
','','',-1,-1,0,'<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['comm_code']; ?>
','_self','<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['comm_code']; ?>
','<?php echo $this->_tpl_vars['menulist'][$this->_sections['list']['index']]['flag']; ?>
','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#ffffff','#cc0000','9pt Tahoma','9pt Tahoma']);
stm_aix('p0i2','p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ffffff','#ffffff','#ffffff','9pt Tahoma','9pt Tahoma',0,0]);
<?php endfor; endif; ?>
stm_em();
//-->
</script></td>
 <?php echo '
						<td width="25%" valign="bottom" style=" color:#FFFFFF"><SCRIPT
							language="JavaScript" type=\'text/javascript\'>

today=new Date();
var hours = today.getHours();
var minutes = today.getMinutes();
var seconds = today.getSeconds();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
document.write(today.getYear(),"年",today.getMonth()+1,"月",today.getDate(),"日 ",d[today.getDay()+1]," ");
//-->
</SCRIPT></td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
'; ?>
