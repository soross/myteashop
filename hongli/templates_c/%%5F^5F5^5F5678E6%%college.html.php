<?php /* Smarty version 2.6.26, created on 2011-12-14 11:31:15
         compiled from college.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<div id="content" class="columns180520200">
		<div id="leftColumn" class="column column180">
		<a id='sectionHeader' href='#' style='background:url(<?php if ($this->_tpl_vars['clang'] == 'English'): ?>images/title/baodiedu_en.gif<?php else: ?>images/title/baodiedu_cn.gif<?php endif; ?>);'><span>����ѧԺ</span></a>
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
			<li><a href="
				<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['pid'] == 9): ?>
					javascript:showSonMenu('<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
')
				<?php else: ?>
				college.php?typeid=<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>

				<?php endif; ?>">&dagger;<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['menu_name']; ?>
</a></li>
				<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['pid'] == 9): ?>
					<?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['titleSonRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
					<li id="li<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" name="li<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" style="display:<?php echo $this->_tpl_vars['display']; ?>
;padding-left:30px;"><a href="college.php?typeid=<?php echo $this->_tpl_vars['titleSonRows'][$this->_sections['lt']['index']]['id']; ?>
&show=yes" >&raquo;<?php echo $this->_tpl_vars['titleSonRows'][$this->_sections['lt']['index']]['menu_name']; ?>
</a></li>
					<?php endfor; endif; ?>
				<?php endif; ?>

				<?php unset($this->_sections['lt2']);
$this->_sections['lt2']['name'] = 'lt2';
$this->_sections['lt2']['loop'] = is_array($_loop=$this->_tpl_vars['titleSonRows2']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['lt2']['show'] = true;
$this->_sections['lt2']['max'] = $this->_sections['lt2']['loop'];
$this->_sections['lt2']['step'] = 1;
$this->_sections['lt2']['start'] = $this->_sections['lt2']['step'] > 0 ? 0 : $this->_sections['lt2']['loop']-1;
if ($this->_sections['lt2']['show']) {
    $this->_sections['lt2']['total'] = $this->_sections['lt2']['loop'];
    if ($this->_sections['lt2']['total'] == 0)
        $this->_sections['lt2']['show'] = false;
} else
    $this->_sections['lt2']['total'] = 0;
if ($this->_sections['lt2']['show']):

            for ($this->_sections['lt2']['index'] = $this->_sections['lt2']['start'], $this->_sections['lt2']['iteration'] = 1;
                 $this->_sections['lt2']['iteration'] <= $this->_sections['lt2']['total'];
                 $this->_sections['lt2']['index'] += $this->_sections['lt2']['step'], $this->_sections['lt2']['iteration']++):
$this->_sections['lt2']['rownum'] = $this->_sections['lt2']['iteration'];
$this->_sections['lt2']['index_prev'] = $this->_sections['lt2']['index'] - $this->_sections['lt2']['step'];
$this->_sections['lt2']['index_next'] = $this->_sections['lt2']['index'] + $this->_sections['lt2']['step'];
$this->_sections['lt2']['first']      = ($this->_sections['lt2']['iteration'] == 1);
$this->_sections['lt2']['last']       = ($this->_sections['lt2']['iteration'] == $this->_sections['lt2']['total']);
?>
				<?php if ($this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id'] == $this->_tpl_vars['titleSonRows2'][$this->_sections['lt2']['index']]['pid'] && $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id'] != 9): ?>
					<li id="li<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" name="li<?php echo $this->_tpl_vars['titleRows'][$this->_sections['list']['index']]['id']; ?>
" style="display:<?php echo $this->_tpl_vars['display2']; ?>
;padding-left:30px;"><a href="college.php?typeid=<?php echo $this->_tpl_vars['titleSonRows2'][$this->_sections['lt2']['index']]['id']; ?>
&show=yes2" >&raquo;<?php echo $this->_tpl_vars['titleSonRows2'][$this->_sections['lt2']['index']]['menu_name']; ?>
</a></li>

				<?php endif; ?>
				<?php endfor; endif; ?>
			<?php endfor; endif; ?>
		</ul>

		<div id="testimonial"></div>

		</div>
		<div id="editor" class="column column520">

		<!--��������Start-->
		<div id="galleryList" class="showinfo">
			<!--���ض���-->
			<a name="top" id="top"></a>
		    <div id="maintext" class="maintext">
		    	<div style="background:#ececec;"><h1 style="padding:5px 0 5px 5px;"><?php echo $this->_tpl_vars['eduInfo']['menu_name']; ?>
</h1></div>
		    	<?php echo $this->_tpl_vars['eduInfo']['content']; ?>

				<p>&nbsp;</p></div>
			    <!--����toolbar-->
			    <div class="toolbar">
			    �� <a href="#top">���ض���</a> ��
			   			    <!--
			    �� <a href="javascript:copyText(document.all.maintext)">����</a> ��
			    �� <a href="javascript:window.print();">��ӡ</a> �� -->
			    �� <a href="javascript:window.close();">�ر�</a> ��
		    </div>
		    <!--����ƪ����-->
		    <div class="context"></div>
		</div>
		<!--��������End-->

		</div>
		<!-- end #content -->






		</div>
	</div>









<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>