<?php /* Smarty version 2.6.26, created on 2011-06-28 14:34:25
         compiled from product/prodlist.html */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>��̨����</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gbk">
		<META content=Alan name=Author>
		<LINK href="../css/pagecontent.css" type=text/css rel=stylesheet>
		<LINK href="../css/private.css" type=text/css rel=stylesheet>
		<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
		  		<TR>
		    		<TH>��̨ >> ��Ʒ���� >> ��Ʒ�б�</TH>
		    	</TR>
		    </TBODY>
		</TABLE>
		<br>
		<form action="" method="post" >
			<table border=0 cellspacing=1 align=center class=form style="display:none;">
				<tr>
					<th colspan="2">&nbsp;&nbsp;����Ʒ������</th>
				</tr>
			    <tr>
				    <td colspan="2" align="center" height='30'>
				    	��Ʒ���ͣ�
				    	<select name="classcode">
							<option value="">��ѡ���Ʒ����</option>
						    <option value="1">dfafds</option>";
						</select>&nbsp;
					    �ؼ��֣�<input type="text" name="key" id="key" value="" />
					    <input type="submit" name="into_class" value="��Ʒ����"/>
				    </td>
			    </tr>
			</table>
		</form>
		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th width='40px' align=center>���</th>
				<th width=''>��Ʒ����</th>
				<th width='150px' align=center>��Ʒ����</th>
				<th width='100px' align=center>��Ʒ����</th>
				<th width='60px' align=center>״̬</th>
				<th width="125" align=center>���ʱ��</th>
				<th width="150px" align=center>����</th>
				<th width="85px" align=center>ͼƬ</th>
			</tr>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['prodList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<td align=center><?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['id']; ?>
</td>
				<td align=center><?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['prod_name']; ?>
</td>
				<td align=center><?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['prod_code']; ?>
</td>
				<td align=center><?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['class_name']; ?>
</td>
				<td align=center><?php if ('1' == $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['state']): ?>����<?php else: ?>Dome<?php endif; ?></td>
				<td align=center><?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['create_date']; ?>
</td>
				<td align=center>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td style="cursor:hand;" onclick="location.href='prodedit.php?task=editProd&id=<?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['id']; ?>
&page=<?php echo $this->_tpl_vars['cpage']; ?>
'">
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td width="14px">
											<img src="../images/edit.gif" border="0" />
										</td>
										<td width="30px">
											�޸�
										</td>
									</tr>
								</table>
							</td>
							<td>|</td>
							<td style="cursor:hand;" onclick="location.href='action/post.php?task=deleteProd&id=<?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['id']; ?>
&path=<?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['prod_picture']; ?>
&page=<?php echo $this->_tpl_vars['cpage']; ?>
'">
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td width="14px">
											<img src="../images/delete.png" border="0" />
										</td>
										<td width="30px">
											ɾ��
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td align=center><img src="../../product/images/<?php echo $this->_tpl_vars['prodList'][$this->_sections['list']['index']]['prod_picture']; ?>
" width="80px" height="64px"/></td>
			</tr>
			<?php endfor; endif; ?>
			<tr>
				<th colspan="10"><?php echo $this->_tpl_vars['page']; ?>
</th>
			</tr>
		</table>
		<br>
	</BODY>
</HTML>