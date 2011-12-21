<?php /* Smarty version 2.6.26, created on 2011-11-20 12:39:02
         compiled from news.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'news.html', 19, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

	<div id="content" class="columns180520200">
		<div id="leftColumn" class="column column180">
		<a id='sectionHeader' href='news.php' style='background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/news_en.gif<?php else: ?>images/title/news_cn.gif<?php endif; ?>);'><span>新闻中心</span></a>
		<ul id="subNav">
			<?php unset($this->_sections['titleList']);
$this->_sections['titleList']['name'] = 'titleList';
$this->_sections['titleList']['loop'] = is_array($_loop=$this->_tpl_vars['titleRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['titleList']['show'] = true;
$this->_sections['titleList']['max'] = $this->_sections['titleList']['loop'];
$this->_sections['titleList']['step'] = 1;
$this->_sections['titleList']['start'] = $this->_sections['titleList']['step'] > 0 ? 0 : $this->_sections['titleList']['loop']-1;
if ($this->_sections['titleList']['show']) {
    $this->_sections['titleList']['total'] = $this->_sections['titleList']['loop'];
    if ($this->_sections['titleList']['total'] == 0)
        $this->_sections['titleList']['show'] = false;
} else
    $this->_sections['titleList']['total'] = 0;
if ($this->_sections['titleList']['show']):

            for ($this->_sections['titleList']['index'] = $this->_sections['titleList']['start'], $this->_sections['titleList']['iteration'] = 1;
                 $this->_sections['titleList']['iteration'] <= $this->_sections['titleList']['total'];
                 $this->_sections['titleList']['index'] += $this->_sections['titleList']['step'], $this->_sections['titleList']['iteration']++):
$this->_sections['titleList']['rownum'] = $this->_sections['titleList']['iteration'];
$this->_sections['titleList']['index_prev'] = $this->_sections['titleList']['index'] - $this->_sections['titleList']['step'];
$this->_sections['titleList']['index_next'] = $this->_sections['titleList']['index'] + $this->_sections['titleList']['step'];
$this->_sections['titleList']['first']      = ($this->_sections['titleList']['iteration'] == 1);
$this->_sections['titleList']['last']       = ($this->_sections['titleList']['iteration'] == $this->_sections['titleList']['total']);
?>
			<li><a href="news.php?typeid=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['titleList']['index']]['id']; ?>
"><?php echo $this->_tpl_vars['titleRows'][$this->_sections['titleList']['index']]['menu_name']; ?>
</a></li>
			<?php endfor; endif; ?>
		</ul>

		<div id="testimonial">
		</div>

		</div>
		<div id="editor" class="column column520">
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<div class="article">
			<h5 class='title'><?php echo ((is_array($_tmp=$this->_tpl_vars['newsRows'][$this->_sections['list']['index']]['create_date'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 10, "") : smarty_modifier_truncate($_tmp, 10, "")); ?>
</h5>
			<a href='newsinfo.php?newsid=<?php echo $this->_tpl_vars['newsRows'][$this->_sections['list']['index']]['id']; ?>
'  target="_blank">
			<span class='date'><?php echo $this->_tpl_vars['newsRows'][$this->_sections['list']['index']]['title']; ?>
</span>
			</a>
			</div>
			<?php endfor; endif; ?>

		</div>
		<div id="rightColumn" class="column column180">
			<div class="box">
				<h1><?php echo $this->_tpl_vars['lang_news']['ZuiXinZiXin']; ?>
</h1>
				<div class='content'>
					<ul>
					<?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['newsTopRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
					<li><a href='newsinfo.php?newsid=<?php echo $this->_tpl_vars['newsTopRows'][$this->_sections['lt']['index']]['id']; ?>
'  target="_blank"><?php echo $this->_tpl_vars['newsTopRows'][$this->_sections['lt']['index']]['title']; ?>
</a></li>
					<?php endfor; endif; ?>
					</ul>
				</div>

			</div>

		</div>
	</div>















<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>