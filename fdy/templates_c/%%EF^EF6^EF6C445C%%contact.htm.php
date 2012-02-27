<?php /* Smarty version 2.6.26, created on 2012-02-26 05:20:52
         compiled from contact.htm */ ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php echo '

    <div id="body">
      <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet212_2010217163051.jpg\'/></p><p class=\'text\'>专注@从不懈怠——我们深知，满足您的真正需求并非易事，我们始终以您的角度关注用户的内心所需，凭借专业技术和项目质量控制体系，想你所未想，以领先业界的专业见解为您制定专属方案...这就是我们的态度：专注@从不懈怠。</p></li></ul></div></div>
      <div id="menu">

<ul>
	<li id="menu_home"><a href="/index.html">网站首页</a></li>
	<li id=\'menu_212\'><a href=\'#\' class=\'menulink\'>栏目导航</a>
		<ul>
			<li id=\'module235\'><a href=\'about.html\'>泛地缘简介</a></li>
			<li id=\'module236\'><a href=\'superiority.html\'>泛地缘优势</a></li>
			<li id=\'module237\'><a href=\'partner.html\'>合作伙伴</a></li>
			<li id=\'module260\'><a href=\'contact.html\'>联系方式</a></li>
		</ul>
	</li>
</ul>

<script type="text/javascript">
window.addEvent(\'domready\', function(){

	//左边菜单的动态效果
	var menuAction = $$(\'#menu li.menuOverStyle li a\');
	menuAction.each(function(element) {
		var fx = new Fx.Styles(element, {duration:200, wait:false});

		element.addEvent(\'mouseleave\', function(){
			fx.start({
				\'margin-right\': 10
			});
		});

		element.addEvent(\'mouseenter\', function(){
			fx.start({
				\'margin-right\': 0
			});
		});
	});
	//为信息列表添加动态事件
	if ($("textList_simple")) {
		tagEventEffect(sfHover,"li", "textList_simple");
	}
	if ($("picList_sum")) {
		tagEventEffect(sfHover,"li", "picList_sum");
	}


});
</script>
'; ?>

      </div>
      <div id="mainBody">
        <div class='clearfloat'></div>
        <div id="position"><a href='about.html'>关于泛地缘</a> &gt; 联系我们</div>
        <div id="title">合作伙伴</div>
        <div id="content">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/map.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<div id="contactTag" class="Page_Text" style="margin-bottom:15px;">
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['contactList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<b style=" font-size:14px;">&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['contactList'][$this->_sections['list']['index']]['comm_type']; ?>
</b>
				<div class="Content_DIV" style="margin-bottom:15px;">
				<?php echo $this->_tpl_vars['contactList'][$this->_sections['list']['index']]['comm_value']; ?>

				</div>
			<?php endfor; endif; ?>

			</div>

        </div>
      </div>

    </div>
    <br class="clearfloat" />

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>




</div>
</div>

</body>
</html>