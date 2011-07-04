<?php /* Smarty version 2.6.26, created on 2011-06-29 01:46:39
         compiled from news/newsadd.html */ ?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>后台管理</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="../css/private.css" type=text/css rel=stylesheet>

	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
				<TR>
					<TH>
						后台 >> 新闻管理 >> 添加新闻
					</TH>
				</TR>
			</TBODY>
		</TABLE>
		<BR>

		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th colspan="2">
					添加新闻
				</th>
			</tr>
			<form action="action/post.php" method="post">
			<tr>
				<td width=80>
					新闻分类
				</td>
				<td>
					<select name="news_class">
						<option value="4">
							请选择新闻类型
						</option>
						<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=($this->_tpl_vars['newsClassList'])) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<option value="<?php echo $this->_tpl_vars['newsClassList'][$this->_sections['list']['index']]['id']; ?>
">
							<?php echo $this->_tpl_vars['newsClassList'][$this->_sections['list']['index']]['class_name']; ?>

						</option>
						<?php endfor; endif; ?>
					</select>
					<font style="color: red;">*</font>
				</td>
			</tr>
			<tr>
				<td width=80>
					新闻标题
				</td>
				<td>
					<input type="text" name="title" size=50 maxlength="50">&nbsp;<font style="color: red;">*</font>
				</td>
			</tr>
			<tr>
				<td width=80>
					新闻作者
				</td>
				<td>
					<input type="text" name="author" size=20 maxlength="30" value="管理员">&nbsp;<font style="color: red;">*</font>
				</td>
			</tr>
			<tr>
				<td width=80>
					来源
				</td>
				<td>
					<input type="text" name="src" size=20 maxlength="30" value="互联网">&nbsp;<font style="color: red;">*</font>
				</td>
			</tr>
			<tr>
				<td width=80>
					新闻内容
					<font style="color: red;">*<br />
				</td>
				<td>
					<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/editor.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
				</td>
			</tr>
			<tr>
				<td width=80></td>
				<td>
					<input type="button" name="goback" style="height: 30px;"
						value="取消返回" onclick="window.history.back()">
					<input type="button" name="add_news" style="height:30px;"
							value="发布新闻" onclick="this.form.newsContent.value=KE.util.getData('content1');this.form.submit();">
					<input type="hidden" name="task" value="addNews">
					<input type="hidden" name="newsContent">
				</td>
			</tr>
			</form>
		</table>
		<br>

	</BODY>
</HTML>