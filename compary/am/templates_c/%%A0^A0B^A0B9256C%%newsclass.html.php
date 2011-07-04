<?php /* Smarty version 2.6.26, created on 2011-06-28 14:55:09
         compiled from news/newsclass.html */ ?>
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
						后台 >> 新闻管理 >> 新闻分类
					</TH>
				</TR>
			</TBODY>
		</TABLE>
		<BR>

		<table border=0 cellspacing=1 align=center class="form  tablelayout">
			<tr>
				<th>
					添加新闻分类
				</th>
			</tr>
			<form action="action/post.php" method="post">
				<tr>
					<td align="center" height='30px'>
						类型名称：<input type="text" name="class_name" style="width:100px"/>
						<input type="submit" name="into_class" value=" 添加新闻分类 " />
						<input type="hidden" name="task" value="addNewsClass" />
					</td>
				</tr>
			</form>
		</table>
		<br>
		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th colspan="5">
					系统新闻分类
				</th>
			</tr>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsClassList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
					<td width="40%" align=right>
						<?php echo $this->_tpl_vars['newsClassList'][$this->_sections['list']['index']]['id']; ?>

					</td>
					<td align=left width="150px">
						<input type="hidden" name="id" value="<?php echo $this->_tpl_vars['newsClassList'][$this->_sections['list']['index']]['id']; ?>
" />
						<input type="hidden" name="task" value="updateNewsClass" />
						<input type="text" name="class_name" value="<?php echo $this->_tpl_vars['newsClassList'][$this->_sections['list']['index']]['class_name']; ?>
" />
					</td>
					<td>
						<input type="submit" name="update_class" value="更新" />
						<input type="button" value="删除" onclick="location.href='action/post.php?task=deleteNewsClass&id=<?php echo $this->_tpl_vars['newsClassList'][$this->_sections['list']['index']]['id']; ?>
'"/>
					</td>
				</tr>
			</form>
			<?php endfor; endif; ?>
		</table>
		<br>
	</BODY>
</HTML>