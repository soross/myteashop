<?php /* Smarty version 2.6.26, created on 2011-06-28 14:24:32
         compiled from news/newslist.html */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>后台管理</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gbk">
		<LINK href="../css/private.css" type=text/css rel=stylesheet>
		<LINK href="../css/pagecontent.css" type=text/css rel=stylesheet>
	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
		  		<TR>
		    		<TH>后台 >> 新闻管理 >> 新闻列表</TH>
		    	</TR>
		    </TBODY>
		</TABLE>
		<BR>
		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th width='40' align=center>序号</th>
				<th>新闻标题</th>
				<th width='130' align=center>作者</th>
				<th width='135' align=center>日期</th>
				<th width="150" align=center>操作</th>
			</tr>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<td align=center><?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
</td>
				<td><?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['title']; ?>
</td>
				<td align=center><?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['author']; ?>
</td>
				<td align=center><?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['create_date']; ?>
</td>
				<td align=center>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td style="cursor:hand;" onclick="location.href='newsedit.php?task=editNews&id=<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
&page=<?php echo $this->_tpl_vars['cpage']; ?>
'">
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td width="14px">
											<img src="../images/edit.gif" border="0" />
										</td>
										<td width="30px">
											修改
										</td>
									</tr>
								</table>
							</td>
							<td>|</td>
							<td style="cursor:hand;" onclick="location.href='action/post.php?task=deleteNews&id=<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
&page=<?php echo $this->_tpl_vars['cpage']; ?>
'">
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td width="14px">
											<img src="../images/delete.png" border="0" />
										</td>
										<td width="30px">
											删除
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<?php endfor; endif; ?>
			<tr>
				<th colspan="5"><?php echo $this->_tpl_vars['page']; ?>
</th>
			</tr>
		</table>
		<br>
	</BODY>
</HTML>