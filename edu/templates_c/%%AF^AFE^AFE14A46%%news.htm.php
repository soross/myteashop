<?php /* Smarty version 2.6.26, created on 2012-04-05 13:58:00
         compiled from news.htm */ ?>

 <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<script type="text/javascript"	src="js/jquery.js"></script>


<table width="970" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr>
		<td>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>

				<td width="185" valign="top"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/left.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></td>
				<td width="5"></td>
				<td valign="top" bgcolor="#F5F5F5"
					style="border: 1px solid #1A4D8E;">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					bgcolor="#9EC9EC">
					<tr>
						<td bgcolor="#4288DD" height="25">&nbsp;&nbsp;当前位置：<?php echo $this->_tpl_vars['addressNav']; ?>
</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="1" bgcolor="1A4D8E"></td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>&nbsp;</td>
					</tr>
				</table>
				<table width="90%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newslist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
					<tr>
						<td width="6%" height="24" align="center">·</td>
						<td width="65%" height="24"
							style="BORDER-bottom: #ffffff 0px dotted"><a
							href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['newslist'][$this->_sections['list']['index']]['id']; ?>
" target="_blank"><?php echo $this->_tpl_vars['newslist'][$this->_sections['list']['index']]['title']; ?>
</a>
						</td>
						<td width="29%" style="BORDER-bottom: #ffffff 0px dotted">[<?php echo $this->_tpl_vars['newslist'][$this->_sections['list']['index']]['create_date']; ?>
]
						(点击<font id="click<?php echo $this->_tpl_vars['newslist'][$this->_sections['list']['index']]['id']; ?>
" color="#ff0000"><?php echo $this->_tpl_vars['newslist'][$this->_sections['list']['index']]['click']; ?>
</font>)
						</td>
						</tr>
						<?php endfor; endif; ?>

					<tr valign="bottom">
						<td height="50" colspan="3">
						<?php echo $this->_tpl_vars['page']; ?>

						<!--
						<form method=Post action="NewsClass.asp?BigClass=&SmallClass=">
						<div align="center">首页 上一页&nbsp;下一页 尾页&nbsp;页次：<strong><font
							color=red>1</font>/1</strong>页 &nbsp;共<b><font color='#FF0000'>9</font></b>条记录
						<b>20</b>条记录/页 转到：<input type='text' name='page' size=4
							maxlength=10 class=input value=1> <input class=input
							type='submit' value='跳转 ' name='cndok'></span>
						</p>
						</div>
						</form>
						 -->
						</td>
					</tr>

				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table width="970" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr>
		<td>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="1" bgcolor="#9EC9EC"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="4"></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td height="70" align="center">
				<p><?php echo $this->_tpl_vars['copyInfo']; ?>
</p>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>


<!-- JiaThis Button BEGIN -->
<script type="text/javascript"
	src="http://v2.jiathis.com/code/jiathis_r.js?move=0" charset="utf-8"></script>
<!-- JiaThis Button END -->


</body>
</html>