<?php /* Smarty version 2.6.26, created on 2011-06-27 02:26:28
         compiled from case/caselist.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'case/caselist.html', 107, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id='content' style='width:1002px;height:429px;background:none transparent scroll repeat 0% 0%;margin:0px auto'>



<!-- 图片/FLASH -->

<div id='pdv_14951' class='pdv_class'  title='图片' style='width:207px;height:72px;top:354px;left:0px; z-index:10'>
<div id='spdv_14951' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<a href="../product/prodorder.php"><img src="../images/1268633326.gif" border="0" width="100%" /></a>


</div>
</div>

</div>
</div>


<!-- 产品分类（列表） -->

<div id='pdv_14950' class='pdv_class'  title='产品分类' style='width:207px;height:343px;top:0px;left:0px; z-index:11'>
<div id='spdv_14950' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/bg.gif) repeat-y;">
<div style="height:100%;background:url(../images/bg.gif) right repeat-y;">
<div style="height:48px;border:0px;padding:0;margin:0;background:url(../images/title_prod.gif) no-repeat">
		<div style="float:right;width:20px;height:48px;background:url(../images/title_prod.gif) -880px 0px no-repeat;"></div>
</div>

<div style="margin:0px 1px 0px;padding:12px;">

<link href="../css/productclass_dolphin.css" rel="stylesheet" type="text/css" />
<div class="productclass_dolphin">

<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['prodclass']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<a href="caselist.php?classcode=<?php echo $this->_tpl_vars['prodclass'][$this->_sections['list']['index']]['id']; ?>
" target="_self" class="productclass_dolphin"><?php echo $this->_tpl_vars['prodclass'][$this->_sections['list']['index']]['class_name']; ?>
</a>
<?php endfor; endif; ?>

</div>

</div>
</div>
</div>
<div style="margin-top:-10px;height:10px;line-height:10px;background:url(../images/title_prod.gif) 0px -90px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-10px;line-height:10px;width:12px;height:10px;background:url(../images/title_prod.gif) -888px -90px no-repeat">&nbsp;</div>

</div>
</div>


<!-- 当前位置提示条 -->

<div id='pdv_15141' class='pdv_class'  title='当前位置' style='width:763px;height:47px;top:0px;left:239px; z-index:11'>
<div id='spdv_15141' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../images/title_address.gif) no-repeat">
	<a href="../../" style="font:12px/20px simsun;cursor:hand;">
	<div style="float:right;width:11px;height:44px;background:url(../images/title_address.gif) -889px 0px no-repeat;padding-top:6px;"></div></a>

<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<div id="nav">
<?php echo $this->_tpl_vars['address']; ?>


</div>

</div>

</div>
</div>



<!-- 产品检索搜索 -->

<div id='pdv_15142' class='pdv_class'  title='产品检索' style='width:762px;height:384px;top:77px;left:240px; z-index:10'>
<div id='spdv_15142' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
		产品检索
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../css/productquery.css" rel="stylesheet" type="text/css" />
<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['prodRow']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<div id="productquery">
	<div class="fang" style="width:140px;height:107px">
		<div class="picFit" style="width:140px;height:107px">
		<a href="<?php echo $this->_tpl_vars['prodRow'][$this->_sections['list']['index']]['case_info_url']; ?>
" target="_self" ><img src="../product/images/<?php echo $this->_tpl_vars['prodRow'][$this->_sections['list']['index']]['prod_picture']; ?>
" alt="<?php echo $this->_tpl_vars['prodRow'][$this->_sections['list']['index']]['prod_name']; ?>
" style="width:140px;height:107px" border="0" /></a>
		</div>
	</div>
	<a href="<?php echo $this->_tpl_vars['prodRow'][$this->_sections['list']['index']]['case_info_url']; ?>
" target="_self" class="prodtitle" title="<?php echo $this->_tpl_vars['prodRow'][$this->_sections['list']['index']]['prod_name']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['prodRow'][$this->_sections['list']['index']]['prod_name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 20, "..") : smarty_modifier_truncate($_tmp, 20, "..")); ?>
</a>
</div>
<?php endfor; endif; ?>

<?php echo '
<script>
$(function() {
$().picFit("auto");
});
</script>
'; ?>

<div id="showpages" >
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