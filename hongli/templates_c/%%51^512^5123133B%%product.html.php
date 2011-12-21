<?php /* Smarty version 2.6.26, created on 2011-11-29 17:20:41
         compiled from product.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'wordwrap', 'product.html', 52, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<!-- w位置
<div id="bcwrapper">
	<div id="breadcrumbs">
		<a href="/">首页</a> >
		<a href="#">产品中心</a> >
		<a href="#">Essential Nutrition</a> >
		<strong>Antioxidants</strong>
	</div>

	<div id="addthis">
	</div>
	<div class=clear></div>
</div>
 -->

<div id="content" class="columns180720">
	<div id="leftColumn" class="column column180">
		<a id="sectionHeader" href="product.php" style="background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/product_en.gif<?php else: ?>images/title/product_cn.gif<?php endif; ?>);"><span>Products</span></a>
		<ul id="subNav">

			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['titleRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['pid'] == 5): ?>
			<li><a href="product.php?typeid=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
"><?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['menu_name']; ?>
</a>
				<ul>
				<?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['titleRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['lt']['show'] = true;
$this->_sections['lt']['max'] = $this->_sections['lt']['loop'];
$this->_sections['lt']['step'] = 1;
$this->_sections['lt']['start'] = $this->_sections['lt']['step'] > 0 ? 0 : $this->_sections['lt']['loop']-1;
if ($this->_sections['lt']['show']) {
    $this->_sections['lt']['total'] = $this->_sections['lt']['loop'];
    if ($this->_sections['lt']['total'] == 0)
        $this->_sections['lt']['show'] = false;
} else
    $this->_sections['lt']['total'] = 0;
if ($this->_sections['lt']['show']):

            for ($this->_sections['lt']['index'] = $this->_sections['lt']['start'], $this->_sections['lt']['iteration'] = 1;
                 $this->_sections['lt']['iteration'] <= $this->_sections['lt']['total'];
                 $this->_sections['lt']['index'] += $this->_sections['lt']['step'], $this->_sections['lt']['iteration']++):
$this->_sections['lt']['rownum'] = $this->_sections['lt']['iteration'];
$this->_sections['lt']['index_prev'] = $this->_sections['lt']['index'] - $this->_sections['lt']['step'];
$this->_sections['lt']['index_next'] = $this->_sections['lt']['index'] + $this->_sections['lt']['step'];
$this->_sections['lt']['first']      = ($this->_sections['lt']['iteration'] == 1);
$this->_sections['lt']['last']       = ($this->_sections['lt']['iteration'] == $this->_sections['lt']['total']);
?>
					<?php if ($this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['pid'] == $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']): ?>
					<li><a href="product.php?typeid=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['id']; ?>
"><?php echo $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['menu_name']; ?>
</a></li>
					<?php endif; ?>
				<?php endfor; endif; ?>
				</ul>

			</li>
			<?php endif; ?>
			<?php endfor; endif; ?>
		</ul>
	</div>


	<div id="productColumnWrapper" >

		<link href="css/productquery.css" rel="stylesheet" type="text/css" />
		<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['prodRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
		<div id="productquery" class="border1" onmousemove="javascript:this.className='border2';" onmouseout="javascript:this.className='border1';">
			<div class="fang" style="width:140px;height:107px">
				<div class="picFit" style="width:140px;height:107px">
				<a href="prodinfo.php?prodid=<?php echo $this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['id']; ?>
"  target="_blank" >
					<img src="<?php echo $this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['prod_pic']; ?>
" alt="<?php echo $this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['prod_name']; ?>
" title="<?php echo $this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['prod_name']; ?>
" style="width:140px;height:107px" border="0" /></a>
				</div>
			</div>
			<a href="prodinfo.php?prodid=<?php echo $this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['id']; ?>
"  target="_blank" class="prodtitle" title="<?php echo $this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['prod_name']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['prodRows'][$this->_sections['list']['index']]['prod_name'])) ? $this->_run_mod_handler('wordwrap', true, $_tmp, 26, "<br>") : smarty_modifier_wordwrap($_tmp, 26, "<br>")); ?>


			</a>
		</div>
		<?php endfor; endif; ?>

		<br class="clear" />
		<div id="showpages" >
			<?php echo $this->_tpl_vars['page']; ?>

		</div>

	</div>
</div>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>