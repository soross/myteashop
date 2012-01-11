<?php /* Smarty version 2.6.26, created on 2011-12-29 09:22:46
         compiled from college.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<div id="content" class="columns180520200">
		<div id="leftColumn" class="column column180">
		<a id='sectionHeader' href='#' style='background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/baodiedu_en.gif<?php else: ?>images/title/baodiedu_cn.gif<?php endif; ?>);'><span>宝迪学院</span></a>
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
				<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['pid'] == 0): ?>
				<li><a href="<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['link_url']; ?>
">&dagger;<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['menu_name']; ?>
</a></li>
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
						<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id'] == $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['pid']): ?>
							<li id="li<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" name="li<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" style="display:none;padding-left:30px;"><a href="<?php echo $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['link_url']; ?>
&show=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" >&raquo;<?php echo $this->_tpl_vars['titleRows'][$this->_sections['lt']['index']]['menu_name']; ?>
</a></li>
						<?php endif; ?>
					<?php endfor; endif; ?>
				<?php endif; ?>
			<?php endfor; endif; ?>
		</ul>
		<div id="testimonial"></div>
		<?php echo $this->_tpl_vars['script']; ?>

		</div>
		<div id="editor" class="column column520">

		<!--文章内容Start-->
		<div id="galleryList" class="showinfo">
			<!--返回顶部-->
			<a name="top" id="top"></a>
		    <div id="maintext" class="maintext">
		    	<div style="background:#ececec;"><h1 style="padding:5px 0 5px 5px;"><?php echo $this->_tpl_vars['eduInfo']['menu_name']; ?>
</h1></div>
		    	<?php echo $this->_tpl_vars['eduInfo']['content']; ?>

				<p>&nbsp;</p></div>
			    <!--文章toolbar-->
			    <div class="toolbar">
			    【 <a href="#top">返回顶部</a> 】
			   			    <!--
			    【 <a href="javascript:copyText(document.all.maintext)">复制</a> 】
			    【 <a href="javascript:window.print();">打印</a> 】 -->
			    【 <a href="javascript:window.close();">关闭</a> 】
		    </div>
		    <!--上下篇文章-->
		    <div class="context"></div>
		</div>
		<!--文章内容End-->

		</div>
		<!-- end #content -->






		</div>
	</div>









<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>