<?php /* Smarty version 2.6.26, created on 2011-12-02 00:42:44
         compiled from newsinfo.html */ ?>
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

		<div id="testimonial"></div>

		</div>
		<div id="editor" class="column column520">

		<!--文章内容Start-->
		<div id="galleryList" class="showinfo">
			<!--返回顶部-->
			<a name="top" id="top"></a>
		    <div id="maintext" class="maintext">
		    	<div style="background:#ececec;"><h1 style="padding:5px 0 5px 5px;"><?php echo $this->_tpl_vars['newsinfo']['title']; ?>
</h1></div>
		    	<?php echo $this->_tpl_vars['newsinfo']['content']; ?>

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