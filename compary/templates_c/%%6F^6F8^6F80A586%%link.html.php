<?php /* Smarty version 2.6.26, created on 2011-06-25 15:41:02
         compiled from aboutus/link.html */ ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id='content' style='width:1002px;height:417px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- ��ҳ����(�˵�)-->


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
<div style="MARGIN-TOP: 15px; PADDING-BOTTOM: 20px; MARGIN-LEFT: 25px; COLOR: #333; LINE-HEIGHT: 150%">
<?php echo $this->_tpl_vars['contactInfo']; ?>
</div>
</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>
<!-- ͼƬ�������� -->

<div id='pdv_15300' class='pdv_class'  title='��������' style='width:740px;height:41px;top:77px;left:244px; z-index:13'>
<div id='spdv_15300' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		��������
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;color:">����</a>
		</div>
	</div>
<div style="padding:0px">

<ul style="padding:0px;overflow:hidden;margin:0px 20px;">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['rowLink']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<li style="list-style-type:none;float:left;margin:0px;padding:3px 22px 3px 0px">
<a href="<?php echo $this->_tpl_vars['rowLink'][$this->_sections['list']['index']]['link_url']; ?>
" target='_blank'><img src="../images/link/<?php echo $this->_tpl_vars['rowLink'][$this->_sections['list']['index']]['link_picture']; ?>
" border="0" width="<?php echo $this->_tpl_vars['rowLink'][$this->_sections['list']['index']]['width']; ?>
"  height="<?php echo $this->_tpl_vars['rowLink'][$this->_sections['list']['index']]['height']; ?>
" alt="<?php echo $this->_tpl_vars['rowLink'][$this->_sections['list']['index']]['link_name']; ?>
" /></a>
<?php endfor; endif; ?>

</ul>


</div>
</div>

</div>
</div>

<!-- ��ǰλ����ʾ�� -->

<div id='pdv_15301' class='pdv_class'  title='��ǰλ��' style='width:763px;height:47px;top:0px;left:239px; z-index:14'>
<div id='spdv_15301' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<a href="../../" style="font:12px/20px simsun;cursor:hand;"><div style="float:right;width:11px;height:44px;background:url(../images/title_address.gif) -889px 0px no-repeat;padding-top:6px;"></div></a>

<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<div id="nav">
<?php echo $this->_tpl_vars['address']; ?>


</div>

</div>

</div>
</div>
</div>



<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>