<?php /* Smarty version 2.6.26, created on 2012-04-05 13:57:49
         compiled from inc/left.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'inc/left.html', 25, false),)), $this); ?>
<table width="234" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" valign="middle"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">最新公告</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td style="border:1px solid #1A4D8E; border-top:0px;">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="4"></td>
							</tr>
						</table>
						<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newNews']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<table width="100%" border="0" cellpadding="0" cellspacing="1">
							<tr>
								<td>&nbsp;·&nbsp;<a
									href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['newNews'][$this->_sections['list']['index']]['id']; ?>
" target="_blank"
									class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['newNews'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '30', "..") : smarty_modifier_truncate($_tmp, '30', "..")); ?>
</a></td>
							</tr>
							<tr>
								<td width="80%" valign="top" background="img_home/xn.gif"
									height="1"></td>
							</tr>
						</table>
						<?php endfor; endif; ?>
						</td>
					</tr>
				</table>
				<table width="234" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="4"></td>
					</tr>
				</table>
				<table width="234" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" valign="middle"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">热门专业</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td style="border:1px solid #1A4D8E; border-top:0px;">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="4"></td>
							</tr>
						</table>


						 <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['hotNews']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<table width="100%" border="0" cellpadding="0" cellspacing="1">
							<tr>
								<td>&nbsp;·&nbsp;<a
									href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['hotNews'][$this->_sections['list']['index']]['id']; ?>
" target="_blank"
									class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['hotNews'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '30', "..") : smarty_modifier_truncate($_tmp, '30', "..")); ?>
</a></td>
							</tr>
							<tr>
								<td width="80%" valign="top" background="img_home/xn.gif"
									height="1"></td>
							</tr>
						</table>
						<?php endfor; endif; ?></td>
					</tr>
				</table>
				<table width="234" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="4"></td>
					</tr>
				</table>
				<table width="234" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" valign="middle"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">资料下载</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td style="border:1px solid #1A4D8E; border-top:0px;">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="4"></td>
							</tr>
						</table>

						 <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['downloadNews']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<table width="100%" border="0" cellpadding="0" cellspacing="1">
							<tr>
								<td>&nbsp;·&nbsp;<a
									href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['downloadNews'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['downloadNews'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '30', "..") : smarty_modifier_truncate($_tmp, '30', "..")); ?>
</a></td>
							</tr>
							<tr>
								<td width="80%" valign="top" background="img_home/xn.gif"
									height="1"></td>
							</tr>
						</table>
						<?php endfor; endif; ?> </td>
					</tr>
				</table>