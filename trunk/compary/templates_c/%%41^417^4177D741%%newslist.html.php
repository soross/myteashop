<?php /* Smarty version 2.6.26, created on 2011-06-27 02:16:41
         compiled from news/newslist.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'news/newslist.html', 129, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id='content' style='width:1002px;height:445px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>


<!-- ����һ������ -->

<div id='pdv_15087' class='pdv_class'  title='��Ŀ����' style='width:207px;height:135px;top:0px;left:0px; z-index:9'>
<div id='spdv_15087' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_lmdh.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">��Ŀ����</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_lmdh.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">

<link href="../css/newsclass_dolphin.css" rel="stylesheet" type="text/css" />
<div class="newsclass_dolphin">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsClassRow']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	  <a href="newslist.php?classcode=<?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['id']; ?>
" target="_self" class="newsclass_dolphin"><?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['class_name']; ?>
</a>
<?php endfor; endif; ?>
<!--
<a href="../../news/class/?86.html" target="_self" class="newsclass_dolphin">���Ŷ�̬</a>


<a href="../../news/class/?100.html" target="_self" class="newsclass_dolphin">��װ��ʶ</a>
-->
</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_lmdh.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_lmdh.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>



<!-- ���������� -->

<div id='pdv_15088' class='pdv_class'  title='��������' style='width:207px;height:162px;top:145px;left:0px; z-index:10'>
<div id='spdv_15088' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_link.gif) no-repeat">
	<div style="float:left;width:120px;height:38px;font:12px/46px simsun;color:#464646;padding-top:4px;padding-left:38px;">��������</div>
	<div style="float:right;width:20px;height:48px;background:url(../images/title_link.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:0px;">
<link href="../css/news_search_dolphin.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="../js/searchform.js"></script>
<SCRIPT language="javascript" src="../js/selectBox.js"></SCRIPT>
<div class="newssearchformzone">
<form id="newssearchform" method="get" action="">
  <div class="newssearchform">
    <select name="classcode" id="classcode" class="box" style="display:none; background:#ffffff; width:147px; height:19px;">
      <option value="">��ѡ�����</option>
<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsClassRow']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
	  <option value='<?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['id']; ?>
'><?php echo $this->_tpl_vars['newsClassRow'][$this->_sections['list']['index']]['class_name']; ?>
</option>
<?php endfor; endif; ?>
    </select>
	<script>
	makeSelectBox('classcode','../');
	</script>
  </div>

    <div class="newssearchform">
    <input name="key" type="text" id="newssearchform_key" style="width:145px;" class="inputtext">
  </div>
  <div class="newssearchform2">
  <input name="imageField" id="button" type="image" src="../images/search5.gif" >
  </div>
</form>
</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_link.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_link.gif) -888px -90px no-repeat">&nbsp;</div>

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

<!-- ���·�ҳ���� -->

<div id='pdv_15090' class='pdv_class'  title='���ż���' style='width:740px;height:366px;top:77px;left:244px; z-index:12'>
<div id='spdv_15090' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		���ż���
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">����</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../css/newsquery.css" rel="stylesheet" type="text/css" />
<div id="newsquery">
<ul id="queryul">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsRow']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<li class="title">
	<div class="title"><a href="<?php echo $this->_tpl_vars['newsRow'][$this->_sections['list']['index']]['news_info_url']; ?>
" target="_blank" ><?php echo ((is_array($_tmp=$this->_tpl_vars['newsRow'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 97) : smarty_modifier_truncate($_tmp, 97)); ?>
</a></div>
	<div class="time"><?php echo ((is_array($_tmp=$this->_tpl_vars['newsRow'][$this->_sections['list']['index']]['create_date'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 13, "") : smarty_modifier_truncate($_tmp, 13, "")); ?>
</div>
</li>
<?php endfor; endif; ?>

</ul>
</div>

<div id="showpages">
	  <!--  <div id="pagesinfo">��10�� ÿҳ10�� ҳ�Σ�1/1</div>
	  <div id="pages"><ul><li class="pbutton"><a href=/1273472146/news/class/index.php?page=1&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;showdate=&amp;author=&amp;key=>��ҳ</a></li><li class="pbutton">��һҳ</li><li class="pagesnow">1</li><li class="pbutton">��һҳ</li><li class="opt"><select onChange="window.location=this.options[this.selectedIndex].value"><option value="/1273472146/news/class/index.php?page=1&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;showdate=&amp;author=&amp;key=" selected>��1ҳ</option></select></li><li class="pbutton"><a href=/1273472146/news/class/index.php?page=1&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;showdate=&amp;author=&amp;key=>βҳ</a></li></ul></div>
	  -->
	<?php echo $this->_tpl_vars['page']; ?>

</div>


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