<?php /* Smarty version 2.6.26, created on 2012-04-05 13:57:58
         compiled from index.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'index.htm', 130, false),)), $this); ?>



	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>





<table width="970" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr>
		<td>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
				<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['adlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<?php if ($this->_tpl_vars['adlist'][$this->_sections['list']['index']]['remark'] == 1): ?>
				<a href='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['flag']; ?>
' target='_blank'><img
					src='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_code']; ?>
' width='950' height='90' border='0'
					alt='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_value']; ?>
'></a>
				<?php endif; ?>
				<?php endfor; endif; ?>
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="3"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td valign="top">
				<table width="309" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="38" background="images/index_r7_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="18%">&nbsp;</td>
								<td width="82%" height="23" valign="bottom"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">快速导航</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td>
						<table width="309" border="0" cellpadding="0" cellspacing="1"
							bgcolor="#1B4F7E">
							<tr>
								<td bgcolor="#FFFFFF">

<?php echo '
<script type="text/javascript">
var pics="";
var links="";
var texts="";
'; ?>

<?php $this->assign('text', 1); ?>
<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['navlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<?php if ($this->_tpl_vars['text'] == 5): ?>
<?php echo '
	pics=pics+"'; ?>
<?php echo $this->_tpl_vars['navlist'][$this->_sections['list']['index']]['path']; ?>
<?php echo '";
	links=links+"newsinfo.php?newsid='; ?>
<?php echo $this->_tpl_vars['navlist'][$this->_sections['list']['index']]['id']; ?>
<?php echo '";
	texts=texts+"5";
'; ?>

<?php else: ?>
<?php echo '
	pics=pics+"'; ?>
<?php echo $this->_tpl_vars['navlist'][$this->_sections['list']['index']]['path']; ?>
<?php echo '"+"|";
	links=links+"newsinfo.php?newsid='; ?>
<?php echo $this->_tpl_vars['navlist'][$this->_sections['list']['index']]['id']; ?>
<?php echo '"+"|";
	texts=texts+"'; ?>
<?php echo $this->_tpl_vars['text']; ?>
<?php echo '"+"|";
'; ?>

<?php endif; ?>
<?php $this->assign('text', $this->_tpl_vars['text']+1); ?>
<?php endfor; endif; ?>
<?php echo '
 var focus_width=307;
 var focus_height=185;
 var text_height=0;
 var swf_height = focus_height+text_height;


 document.write(\'<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="\'+ focus_width +\'" height="\'+ swf_height +\'">\');
 document.write(\'<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/play.swf"><param name="quality" value="high"><param name="bgcolor" value="#ffffff">\');
 document.write(\'<param name="menu" value="false"><param name=wmode value="opaque">\');
 document.write(\'<param name="FlashVars" value="pics=\'+pics+\'&links=\'+links+\'&texts=\'+texts+\'&borderwidth=\'+focus_width+\'&borderheight=\'+focus_height+\'&textheight=\'+text_height+\'">\');
 document.write(\'<embed src="images/play.swf" wmode="opaque" FlashVars="pics=\'+pics+\'&links=\'+links+\'&texts=\'+texts+\'&borderwidth=\'+focus_width+\'&borderheight=\'+focus_height+\'&textheight=\'+text_height+\'" menu="false" bgcolor="#443927" quality="high" width="\'+ focus_width +\'" height="\'+ focus_height +\'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\');  document.write(\'</object>\');

  </script>
 '; ?>

  </td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
				<td width="3"></td>
				<td width="315" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="1"
					bgcolor="#CCCCCC">
					<tr>
						<td height="36" background="images/index_r8_c5.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="3%">&nbsp;</td>
								<td width="97%"><a href="news.php?type=15"
									target="_blank"
									style="font-size:10pt; font-weight:bold; color: #FF0000">最新公告</a></td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFFF">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="2"></td>
							</tr>
						</table>

						<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['newlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['newlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '44', "..") : smarty_modifier_truncate($_tmp, '44', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td width="315" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="1"
					bgcolor="#CCCCCC">
					<tr>
						<td height="36" background="images/index_r8_c5.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="3%">&nbsp;</td>
								<td width="97%"><a href="NewsClass.asp?ClassID=fwzq"
									target="_blank"
									style="font-size:10pt; font-weight:bold; color:#1A4D8E">服务专区</a></td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFFF">
						<table width="95%" border="0" align="center" cellpadding="3"
							cellspacing="3">
							<tr>
							    <?php $this->assign('i', 0); ?>
							    <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['servicelist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td align="center">
								<table border="0" cellpadding="0" cellspacing="0"
									background="images/fwzq.jpg">
									<tr>
										<td width="68" height="25" align="center"><a
											href="news.php?type=<?php echo $this->_tpl_vars['servicelist'][$this->_sections['list']['index']]['id']; ?>
" target="_blank"><?php echo $this->_tpl_vars['servicelist'][$this->_sections['list']['index']]['type_name']; ?>
</a></td>
									</tr>
								</table>
								</td>
								<?php $this->assign('i', $this->_tpl_vars['i']+1); ?>
								<?php if ($this->_tpl_vars['i']%3 == 0): ?>
								</tr><tr>
								<?php endif; ?>
								<?php endfor; endif; ?>

							</tr>
						</table>
						</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="4"></td>
					</tr>
				</table>
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0" bgcolor="#FFFFFF">
					<tr>
						<td>
						<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['adlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
						<?php if ($this->_tpl_vars['adlist'][$this->_sections['list']['index']]['remark'] == 2): ?>
						<a href='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['flag']; ?>
' target='_blank'><img
							src='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_code']; ?>
' width='315' height='78' border='0'
							alt='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_value']; ?>
'></a>
						<?php endif; ?>
						<?php endfor; endif; ?>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="4"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td width="234">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" align="center" valign="middle"><a
									href="news.php?type=1" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">热门专业</a><a
									href="news.php?type=1" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF"></a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['hotlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['hotlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['hotlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=2" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">自学考试</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['selflist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['selflist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['selflist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="5"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=3" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">成人高考</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['crlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['crlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['crlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=4" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">远程教育</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['remotelist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['remotelist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['remotelist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="4"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td width="234">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" align="center" valign="middle"><a
									href="news.php?type=5" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">其它热门</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['otherlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['otherlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['otherlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=6" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">考研培训</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['kylist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['kylist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['kylist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="5"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=7" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">会计培训</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['kjlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['kjlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['kjlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=8" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">计算机培训</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['jsjlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['jsjlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['jsjlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="4"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
				<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['adlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<?php if ($this->_tpl_vars['adlist'][$this->_sections['list']['index']]['remark'] == 3): ?>
				<a href='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['flag']; ?>
' target='_blank'><img
					src='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_code']; ?>
' width='950' height='90' border='0'
					alt='<?php echo $this->_tpl_vars['adlist'][$this->_sections['list']['index']]['comm_value']; ?>
'></a>
				<?php endif; ?>
				<?php endfor; endif; ?>
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="4"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td width="234">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" align="center" valign="middle"><a
									href="news.php?type=9" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">资料下载</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['downloadlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['downloadlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['downloadlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=10" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">职称评审</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['zcpslist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['zcpslist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['zcpslist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="5"></td>
				<td width="234" align="center" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td style="border:1px solid #1A4D8E; ">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="3">
							<tr>
							<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['schoollist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td align="center">
								   <a href='<?php echo $this->_tpl_vars['schoollist'][$this->_sections['list']['index']]['flag']; ?>
'
									target='_blank'><img src='<?php echo $this->_tpl_vars['schoollist'][$this->_sections['list']['index']]['comm_code']; ?>
'
									width='109' height='103' border='0' alt='<?php echo $this->_tpl_vars['schoollist'][$this->_sections['list']['index']]['comm_value']; ?>
'></a></td>
							 <?php if ($this->_tpl_vars['schoollist'][$this->_sections['list']['index']]['remark'] == 2): ?>
							 </tr>
							<tr>
							 <?php endif; ?>
							<?php endfor; endif; ?>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
				<td width="4"></td>
				<td width="234" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%" height="23" align="center"><a
									href="news.php?type=11" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">关于学历</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['xllist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['xllist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['xllist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="4"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td width="234">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="29" background="images/index_r11_c1.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="8%">&nbsp;</td>
								<td width="92%" height="23" align="center" valign="middle"><a
									href="news.php?type=12" target="_blank"
									style="font-size:10pt; font-weight:bold; color:#FFFFFF">合作院校</a></td>
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
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['parterlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<td>&nbsp;·&nbsp;<a href="newsinfo.php?newsid=<?php echo $this->_tpl_vars['parterlist'][$this->_sections['list']['index']]['id']; ?>
"
									target="_blank" class="top_m_txt01"><?php echo ((is_array($_tmp=$this->_tpl_vars['parterlist'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, '32', "..") : smarty_modifier_truncate($_tmp, '32', "..")); ?>
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
				</td>
				<td width="4"></td>
				<td valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="1"
					bgcolor="#CCCCCC">
					<tr>
						<td height="36" bgcolor="#FFFFFF">
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							background="images/index_r8_c8.jpg">
							<tr>
								<td width="40%" background="images/index_r8_c5.jpg">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="3%">&nbsp;</td>
										<td width="97%"
											style="font-size:10pt; font-weight:bold; color:#1A4D8E">证书样本</td>
									</tr>
								</table>
								</td>
								<td width="60%" height="36">&nbsp;</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFFF">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="2" align="center">
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="9"></td>
									</tr>
								</table>
								<!--最新图文代码开始-->

							<?php echo '
								<script language="JavaScript">
<!--
var flag=false;
function DrawImage(ImgD){
 var image=new Image();
 image.src=ImgD.src;
 if(image.width>0 && image.height>0){
  flag=true;
  if(image.width/image.height>= 105/80){
   if(image.width>105){
    ImgD.width=105;
    ImgD.height=(image.height*105)/image.width;
   }else{
    ImgD.width=image.width;
    ImgD.height=image.height;
   }
   ImgD.alt="点击查看详细信息...";
  }
  else{
   if(image.height>80){
    ImgD.height=80;
    ImgD.width=(image.width*80)/image.height;
   }else{
    ImgD.width=image.width;
    ImgD.height=image.height;
   }
   ImgD.alt="点击查看详细信息...";
  }
 }
}
//-->
</script>
'; ?>

								<div align='center' id='demo'
									style='overflow:hidden;height:140px;width:690px;'><!--滚动区的高度和宽度-->
								<table border='0' cellpadding='0' cellspacing="0" cellspace='0'>
									<tr>
										<td id='demo1' valign='top'>
										<table width='100%' cellpadding='0' cellspacing='0' border='0'
											align='center'>
											<tr valign='top'>

												<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['certlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
												<td align='center'>
												<table width=76% border=0 align=center cellpadding=0
													cellspacing=0>
													<tr>
														<td width="18">
														<table width="10" border="0" cellpadding="0"
															cellspacing="3">
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
														</td>
														<td width="158" height="85" align="center"><a
															href='certinfo.php?id=<?php echo $this->_tpl_vars['certlist'][$this->_sections['list']['index']]['id']; ?>
' target=_blank
															title='<?php echo $this->_tpl_vars['certlist'][$this->_sections['list']['index']]['cert_name']; ?>
'> <img
															src="<?php echo $this->_tpl_vars['certlist'][$this->_sections['list']['index']]['path']; ?>
" alt="<?php echo $this->_tpl_vars['certlist'][$this->_sections['list']['index']]['cert_name']; ?>
"
															width="200" height="140" border="0" /> </a></td>
													</tr>
												</table>
												</td>
												<?php endfor; endif; ?>

											</tr>
										</table>
										</td>
										<td id=demo2 valign=top></td>
									</tr>
								</table>
								</div>
<?php echo '
								<script>
var Picspeed=15
demo2.innerHTML=demo1.innerHTML
function Marquee1(){
if(demo2.offsetWidth-demo.scrollLeft<=0)
demo.scrollLeft-=demo1.offsetWidth
else{
demo.scrollLeft++
}
}
var MyMar1=setInterval(Marquee1,Picspeed)
demo.onmouseover=function() {clearInterval(MyMar1)}
demo.onmouseout=function() {MyMar1=setInterval(Marquee1,Picspeed)}
</script> '; ?>
<!--最新图文代码结束-->
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="9"></td>
									</tr>
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="4"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="1" bgcolor="#CCCCCC">
			<tr>
				<td height="36" bgcolor="#FFFFFF">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					background="images/index_r8_c8.jpg">
					<tr>
						<td width="35%" background="images/index_r8_c5.jpg">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="3%">&nbsp;</td>
								<td width="97%"
									style="font-size:10pt; font-weight:bold; color: #FF0000">友情链接</td>
							</tr>
						</table>
						</td>
						<td width="65%" height="36">&nbsp;</td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="2" align="center">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="5">
							<tr>
								<td height="5">
								<table width='100%' cellSpacing='5'>
									<tr align='center'>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
								<table width='100%' cellSpacing='5'>
									<tr align='center'>
										<?php $this->assign('j', 0); ?>
										<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['linklist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
										<td width='88'><a href='<?php echo $this->_tpl_vars['linklist'][$this->_sections['list']['index']]['url']; ?>
'
											target='_blank'
											title='<?php echo $this->_tpl_vars['linklist'][$this->_sections['list']['index']]['link_name']; ?>
'><img
											src='<?php echo $this->_tpl_vars['linklist'][$this->_sections['list']['index']]['path']; ?>
' width='88' height='31'
											border='0'></a></td>
										<?php $this->assign('j', $this->_tpl_vars['j']+1); ?>
										<?php if ($this->_tpl_vars['j']%10 == 0): ?>
										</tr><tr align="center">
										<?php endif; ?>
										<?php endfor; endif; ?>

									</tr>
								</table>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<div align="center">
<map name="Map">
	<area shape="rect" coords="181,7,220,18" href="Product.asp">
</map>
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
				<p> <?php echo $this->_tpl_vars['copyInfo']; ?>
</p>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<script language="JavaScript" type="text/javascript" src="js/online/qq.php"></script>

<!-- JiaThis Button BEGIN -->
<script	type="text/javascript"
	src="http://v2.jiathis.com/code/jiathis_r.js?move=0" charset="utf-8"></script>
<!-- JiaThis Button END --></div>

</body>


</html>