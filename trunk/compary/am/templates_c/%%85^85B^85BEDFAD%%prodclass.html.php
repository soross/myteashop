<?php /* Smarty version 2.6.26, created on 2011-06-28 08:15:09
         compiled from product/prodclass.html */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>后台管理</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=GBK">
		<META content=Alan name=Author>
		<LINK href="../css/private.css" type=text/css rel=stylesheet>
		<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
				<TR>
					<TH>
						后台 >> 产品管理 >> 产品分类
					</TH>
				</TR>
			</TBODY>
		</TABLE>
		<BR>

		<table border=0 cellspacing=1 align=center class="form  tablelayout">
			<tr>
				<th>
					添加产品分类
				</th>
			</tr>
			<form action="action/post.php" method="post">
				<tr>
					<td align="center" height='30px'>
						类型名称：<input type="text" name="class_name" style="width:100px"/>
						英文简明：<input type="text" name="ename" style="width:30px"/>
						英文全名：<input type="text" name="full_ename" style="width:150px"/>
						<input type="submit" name="into_class" value=" 添加产品分类 " />
						<input type="hidden" name="task" value="addProdClass" />
					</td>
				</tr>
			</form>
		</table>
		<br>
		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th colspan="5">
					系统产品分类
				</th>
			</tr>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['prodClassList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<form action="action/post.php" method="post">
				<tr style="vertical-align: top">
					<td width="28%" align=right>
						<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['id']; ?>

					</td>
					<td align=left width="150px">
						<input type="hidden" name="id" value="<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['id']; ?>
" />
						<input type="hidden" name="task" value="updateProdClass" />
						<input type="text" name="class_name" value="<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['class_name']; ?>
" />
					</td>
					<td width="30px">
						<input type="text" style="width:30px" name="ename" value="<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['ename']; ?>
" />
					</td>
					<td width="250px">
						<input type="text" style="width:230px" name="full_ename" value="<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['full_ename']; ?>
" />
					</td>
					<td>
						<input type="submit" name="update_class" value="更新" />
						<input type="button" value="删除" onclick="location.href='action/post.php?task=deleteProdClass&id=<?php echo $this->_tpl_vars['prodClassList'][$this->_sections['list']['index']]['id']; ?>
'"/>
					</td>
				</tr>
			</form>
			<?php endfor; endif; ?>
		</table>
		<br>
	</BODY>
</HTML>