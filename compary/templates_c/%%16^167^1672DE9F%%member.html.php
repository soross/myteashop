<?php /* Smarty version 2.6.26, created on 2011-06-25 15:39:26
         compiled from sure/member.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'sure/member.html', 84, false),)), $this); ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id='content' style='width:1002px;height:417px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- ��ҳ����(�˵�) -->

<div id='pdv_14997' class='pdv_class'  title='��Ŀ����' style='width:207px;height:187px;top:0px;left:0px; z-index:9'>
<div id='spdv_14997' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_lmdh.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">��Ŀ����</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_lmdh.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">

<link href="../css/pagetitlemenu_dolphin.css" rel="stylesheet" type="text/css" />
<div class="titlemenu_dolphin" >

<a href="../sure/" target="_self" class="titlemenu_dolphin"><FONT style="color:#FF6600;">��������</FONT></a>

<a href="../job/joblist.php" target="_self" class="titlemenu_dolphin">��ƸӢ��</a>

<a href="../aboutus/link.php" target="_self" class="titlemenu_dolphin">��������</a>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_lmdh.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_lmdh.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

<!-- HTML�༭�� -->

<div id='pdv_15171' class='pdv_class'  title='��ϵ����' style='width:207px;height:218px;top:197px;left:0px; z-index:10'>
<div id='spdv_15171' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_link.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">��ϵ����</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_link.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<div style="MARGIN-TOP: 15px; PADDING-BOTTOM: 20px; MARGIN-LEFT: 25px; COLOR: #333; LINE-HEIGHT: 150%"><?php echo $this->_tpl_vars['contactInfo']; ?>
</div>
</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>


<!-- HTML�༭�� -->

<div id='pdv_15191' class='pdv_class'  title='��Ա��¼' style='width:763px;height:500px;top:0px;left:239px; z-index:12'>
<div id='spdv_15191' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">

<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<link href="../css/nav.css" rel="stylesheet" type="text/css" />
	<div class="nav" style="float:left;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">
		<?php echo $this->_tpl_vars['address']; ?>

	</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_address.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<div style="MARGIN-TOP: 15px; PADDING-BOTTOM: 20px; PADDING-left: 30px; MARGIN-LEFT: 30px; COLOR: #333; LINE-HEIGHT: 150%">
	<table width="90%"  border="0" cellspacing="0" cellpadding="3">
	  <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['caseList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	  <?php if ('2' != $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
	  <tr>
	  	<td width="30%" style="text-align:center;">
		  	<a href="showcase.php?path=<?php echo ((is_array($_tmp=$this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_picture'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')); ?>
" target="_black" title="����鿴��ҳ��ϸ��Ϣ"><img src="<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_picture']; ?>
" border='0' width="100px" height="100px"/></a>
	  	</td>
	  	<td>
	  		<table border="0"  style="width:100%;height:80px;">
	  			<tr height="40%">
	  				<td width="50%">
	  					<a href="showcase.php?path=<?php echo ((is_array($_tmp=$this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_picture'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')); ?>
" target="_black" title="����鿴��ҳ��ϸ��Ϣ"><?php if ('1' == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?><FONT style="color:#FF6600;"><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
</FONT><?php else: ?><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
<?php endif; ?></a>
	  				</td>
	  				<td width="50%" rowspan='3'>
	  					<?php if ('1' == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
	  					<table cellpadding="0" cellpadding="0">
	  						<tr>
	  							<td>�������ȣ�</td>
	  							<td style="width:100px;height:10px;background-image:url(../images/cw1.gif);"><img src="../images/cw3.gif" width="<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_plan']; ?>
px" height="10px"></td>
	  							<td>&nbsp;<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_plan']; ?>
%</td>
	  						</tr>
	  					</table>
	  					<?php endif; ?>
	  				</td>
	  			</tr>
	  			<tr height="30%">
	  				<td width="50%">
	  					<?php if ('0' == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
	  					��ѡ����
	  					<?php else: ?>
	  						<?php if ('1' == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
	  						<FONT style="color:#FF6600;">��ѡ��÷���</font>
	  						<?php else: ?>
	  							<?php if ("-1" == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
			  					��ɾ����
			  					<?php else: ?>
			  						�÷�����ȷ��
			  					<?php endif; ?>
	  						<?php endif; ?>
	  					<?php endif; ?>
	  				</td>
	  			</tr>
	  			<tr height="30%">
	  				<td width="50%">
	  					<?php if ('0' == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
	  						<input type="button" value="ɾ���÷���" onclick="if(confirm('ȷ��ɾ���÷���?'))location.href='action/changeState.php?mod=del&caseid=<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['id']; ?>
'">&nbsp;
	  						<input type="button" value="ѡ��÷���" onclick="if(confirm('ȷ��ѡ��÷���?'))location.href='action/changeState.php?mod=sel&caseid=<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['id']; ?>
'">
	  					<?php else: ?>
	  						<?php if ('1' == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
	  							<input type="button" value="��ѡ��÷���" disabled="disabled">
	  						<?php else: ?>
	  							<?php if ("-1" == $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['state']): ?>
			  						<input type="button" value="���¼���÷���" onclick="if(confirm('ȷ�����¼���÷���?'))location.href='action/changeState.php?mod=act&caseid=<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['id']; ?>
'">
		  						<?php else: ?>
		  							<input type="button" value="�÷�����ȷ��" disabled="disabled">
		  						<?php endif; ?>
	  						<?php endif; ?>
	  					<?php endif; ?>

	  				</td>
	  			</tr>
	  		</table>
	  	</td>
	  </tr>
	  <tr>
	  	<td colspan="2"><hr style="border-top-width: 1px; border-bottom: 1px dotted #FF6600" color="#FFFFFF" size="1"></td>
	  </tr>
	  <?php else: ?>
	   <tr>
	  	<td width="30%" style="text-align:center;">
		  	<a href="showcase.php?path=<?php echo ((is_array($_tmp=$this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_picture'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')); ?>
" target="_black" title="����鿴��ҳ��ϸ��Ϣ"><img src="<?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_picture']; ?>
" border='0' width="100px" height="100px"/></a>
	  	</td>
	  	<td>
	  		<table border="0"  style="width:100%;height:80px;">
	  			<tr height="40%">
	  				<td width="50%">
	  					<a href="showcase.php?path=<?php echo ((is_array($_tmp=$this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_picture'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')); ?>
" target="_black" title="����鿴��ҳ��ϸ��Ϣ"><FONT style="color:#FF6600;"><?php echo $this->_tpl_vars['caseList'][$this->_sections['list']['index']]['case_name']; ?>
</FONT></a>
	  				</td>
	  				<td width="50%" rowspan='3'>
	  					<table>
	  						<tr>
	  							<td>�������ȣ�</td>
	  							<td style="width:100px;height:10px;background-image:url(../images/cw1.gif);"><img src="../images/cw3.gif" width="100px" height="10px"></td>
	  							<td>&nbsp;100%</td>
	  						</tr>
	  					</table>
	  				</td>
	  			</tr>
	  			<tr height="30%">
	  				<td width="50%">
	  					<FONT style="color:#FF6600;">�������깤</FONT>
	  				</td>
	  			</tr>
	  			<tr height="30%">
	  				<td width="50%">
	  					<input type="button" value="�������깤" disabled="disabled">
	  				</td>
	  			</tr>
	  		</table>
	  	</td>
	  </tr>
	  <tr>
	  	<td colspan="2"><hr style="border-top-width: 1px; border-bottom: 1px dotted #FF6600" color="#FFFFFF" size="1"></td>
	  </tr>
	  <?php endif; ?>
	  <?php endfor; endif; ?>
	</table>

</div>
</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>

</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>