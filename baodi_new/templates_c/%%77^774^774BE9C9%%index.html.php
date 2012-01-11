<?php /* Smarty version 2.6.26, created on 2011-12-26 01:50:49
         compiled from index.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'index.html', 54, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php echo '
<style type="text/css">
    <!--
    *{font-family:Arial, Helvetica, sans-serif;}
	body,html{text-align:center;background:#DAC893 url(images/back.jpg) top left repeat-x;margin:0;padding:0;font-size:12px;color:#221F1F;}
	a{text-decoration:none;}
    #header{height:150px;}
	#logo{top:8px;left:50px;width:480px;height:80px;background:url(images/logoLarge-en.png);}
	#selectText{/*right:15px;text-align:center;top:46px;*/top:45px;}
	#languageSelect{top:40px;}
	#languageList{position:absolute;top:61px;right:15px;width:152px;display:none;}
	#joinSocialMedia{position:absolute;float:right;top:70px;right:15px;width:250px;text-align:right;}
	#joinSocialMedia a {padding: 0 0 0 10px;height: 20px; width:20px;}
	#joinSocialMedia img {height: 20px; width:20px;}
	#mainNav{top:95px;}
	#searchField{top:115px;}
	#go{top:115px;}
	#homeMainImage{height:14px;width:900px;background:url(images/homeMainImage.png);}
	#homeSwf{padding:10px 0 10px 0;background:#F8F9EB}
	#content{border-top:none;border-bottom:20px solid #F8F9EB;width:100%;overflow:auto;background:#F8F9EB}
	.columns280310310{background:url(images/columns280310310.gif) top left repeat-y !important;}
	.column280{width:260px;padding:0 10px 0 10px;}
	.column310{width:290px;padding:0 10px;overflow:hidden;}
	#leftColumn h1{margin:0;padding:0;width:240px;height:25px;}
	#leftColumn h1 span{display:none;}
	.homeItem{margin:10px 0;}
	.homeItem span,.homeItem a{color:#221F1F;}
	.homeItem span{font-weight:bold;float:left;}
	.homeItem a{width:180px;margin:0 0 0 80px;display:block;}
	.homeItem a:hover{color:#B2B2B2;}
	#subTop{position:absolute;top:145px;left:0;height:4px;width:700px;background:#781d7e;overflow:hidden;z-index:999;}
	body {
		background-color: #dbe055;
	}
    -->
</style>
'; ?>

<script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>

	<!--content-->
	<div id="content" class="columns280310310">
		<div id="leftColumn" class="column column280">
			<h1 style="background:url(images/newsAndEvents.gif) top left no-repeat;">
			<?php if ($this->_tpl_vars['clang'] == 'English'): ?>
				<span>News & Events</span><img src="images/nw.jpg" width="240" height="30" />
			<?php else: ?>
				<span>News & Events</span><img src="images/NEWS.jpg" width="240" height="30" />
			<?php endif; ?>
			</h1>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<div class='homeItem'>
				<span><?php echo ((is_array($_tmp=$this->_tpl_vars['newRows'][$this->_sections['list']['index']]['create_date'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 10, "") : smarty_modifier_truncate($_tmp, 10, "")); ?>
</span>
				<a href='newsinfo.php?newsid=<?php echo $this->_tpl_vars['newRows'][$this->_sections['list']['index']]['id']; ?>
' title="<?php echo $this->_tpl_vars['newRows'][$this->_sections['list']['index']]['title']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['newRows'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 28, "") : smarty_modifier_truncate($_tmp, 28, "")); ?>
</a>
			</div>
			<?php endfor; endif; ?>
			<?php if ($this->_tpl_vars['clang'] == 'English'): ?>
			<div class="horizontalDotRepeat" style="width:240px;height:30px;">
				<img src="images/zl.jpg" width="240" height="30" />
			</div>
			<?php else: ?>
			<div class="horizontalDotRepeat" style="width:240px;height:30px;">
				<img src="images/baodzhuanglan.jpg" width="240" height="30" />
			</div>
			<?php endif; ?>
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['blRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<div class='homeItem'>
				<span><?php echo ((is_array($_tmp=$this->_tpl_vars['blRows'][$this->_sections['list']['index']]['create_date'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 10, "") : smarty_modifier_truncate($_tmp, 10, "")); ?>
</span>
				<a href='newsinfo.php?newsid=<?php echo $this->_tpl_vars['blRows'][$this->_sections['list']['index']]['id']; ?>
' title="<?php echo $this->_tpl_vars['blRows'][$this->_sections['list']['index']]['title']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['blRows'][$this->_sections['list']['index']]['title'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 28, "") : smarty_modifier_truncate($_tmp, 28, "")); ?>
</a>
			</div>
			<?php endfor; endif; ?>
		</div>
		<!--leftColumn-->

		<div id="featureLeft">
			<?php $this->assign('tmp', 0); ?>
			<?php unset($this->_sections['adlist']);
$this->_sections['adlist']['name'] = 'adlist';
$this->_sections['adlist']['loop'] = is_array($_loop=$this->_tpl_vars['adRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['adlist']['show'] = true;
$this->_sections['adlist']['max'] = $this->_sections['adlist']['loop'];
$this->_sections['adlist']['step'] = 1;
$this->_sections['adlist']['start'] = $this->_sections['adlist']['step'] > 0 ? 0 : $this->_sections['adlist']['loop']-1;
if ($this->_sections['adlist']['show']) {
    $this->_sections['adlist']['total'] = $this->_sections['adlist']['loop'];
    if ($this->_sections['adlist']['total'] == 0)
        $this->_sections['adlist']['show'] = false;
} else
    $this->_sections['adlist']['total'] = 0;
if ($this->_sections['adlist']['show']):

            for ($this->_sections['adlist']['index'] = $this->_sections['adlist']['start'], $this->_sections['adlist']['iteration'] = 1;
                 $this->_sections['adlist']['iteration'] <= $this->_sections['adlist']['total'];
                 $this->_sections['adlist']['index'] += $this->_sections['adlist']['step'], $this->_sections['adlist']['iteration']++):
$this->_sections['adlist']['rownum'] = $this->_sections['adlist']['iteration'];
$this->_sections['adlist']['index_prev'] = $this->_sections['adlist']['index'] - $this->_sections['adlist']['step'];
$this->_sections['adlist']['index_next'] = $this->_sections['adlist']['index'] + $this->_sections['adlist']['step'];
$this->_sections['adlist']['first']      = ($this->_sections['adlist']['iteration'] == 1);
$this->_sections['adlist']['last']       = ($this->_sections['adlist']['iteration'] == $this->_sections['adlist']['total']);
?>
			<a target='_self' href='<?php echo $this->_tpl_vars['adRows'][$this->_sections['adlist']['index']]['type_content']; ?>
'>
				<img src='<?php echo $this->_tpl_vars['adRows'][$this->_sections['adlist']['index']]['type_code']; ?>
' alt='<?php echo $this->_tpl_vars['adRows'][$this->_sections['adlist']['index']]['remark']; ?>
' style="width:290px;height:266px;"/>
			</a>
			<?php $this->assign('tmp', $this->_tpl_vars['tmp']+1); ?>
			<?php if ($this->_tpl_vars['tmp'] == 3): ?>
			</div>
			<div id="featureRight">
			<?php endif; ?>
			<?php endfor; endif; ?>
		<!--
			<a target='_self' href='/en_US/products/catalogs.html?ic=holidayCatalog'>
				<img src='images/Q4_banner_holiday.jpg' alt='Feature'/>
			</a>
			<a target='_self' href='/en_US/news/2012glc/index.html?ic=GLCDoublePointsUS'>
				<img src='images/GLC_banner_doublepts_english.jpg' alt='Feature'/>
			</a>
		</div>
		<div id="featureRight">
			<a target='_self' href='#'>
				<img src='images/InnerDefense-ThievesHandSanitizer-PV.jpg' alt='Feature'/>
			</a>
			<a target='_self' href='#'>
				<img src='images/Immupower-10percent.jpg' alt='Feature'/>
			</a>-->
		</div>
	</div>
	<!--content end-->
	<?php echo '
	<script language="javascript">
		var interval = 7;
		interval = interval * 1000;
		//$("#featureLeft").hide();
		//$("#featureRight").hide();
		$("#featureLeft").cycle({fx: \'fade\', speed: 300, timeout: interval});
		$("#featureRight").cycle({fx: \'fade\', speed: 300, timeout: interval});
	</script>
	'; ?>



 	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
