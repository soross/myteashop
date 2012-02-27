<?php /* Smarty version 2.6.26, created on 2012-02-27 14:41:17
         compiled from news.htm */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'news.htm', 63, false),)), $this); ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php echo '

    <div id="body">
      <div id=\'banner\'><div id=\'picShow_source\'><ul><li><p class=\'pic\'><img src=\'images/content/typeSet197_2010217163240.jpg\'/></p><p class=\'text\'>专注@从不懈怠——我们深知，满足您的真正需求并非易事，我们始终以您的角度关注用户的内心所需，凭借专业技术和项目质量控制体系，想你所未想，以领先业界的专业见解为您制定专属方案...这就是我们的态度：专注@从不懈怠。</p></li></ul></div></div>
      <div id="menu">

<ul>
	<li id="menu_home"><a href="/index.html">网站首页</a></li>
	<li id=\'menu_212\'><a href=\'#\' class=\'menulink\'>栏目导航</a>
		<ul>
			<li id=\'module235\'><a href=\'about.html\'>站内新闻</a></li>
			<li id=\'module236\'><a href=\'superiority.html\'>技术文档</a></li>
			<li id=\'module237\'><a href=\'partner.html\'>留言信息</a></li>
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
        <div id="position"><a href='about.html'>资讯中心</a> &gt; 站内新闻</div>
        <div id="title">泛地缘简介</div>
        <div id="content">
          <div class='content'>
          	 <div id='textList_simple'>
          	 	<ul>
          	 		<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['newsList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
          	 		<li>
          	 			<a class='times'>[<?php echo ((is_array($_tmp=$this->_tpl_vars['newsList'][$this->_sections['list']['index']]['create_date'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 10, "") : smarty_modifier_truncate($_tmp, 10, "")); ?>
]</a>
          	 			<a href="news_<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
_info.html" class='module'>[推广优化]</a>
          	 			<a href='news_<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['id']; ?>
_info.html' title='<?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['title']; ?>
' class='listTitle' ><?php echo $this->_tpl_vars['newsList'][$this->_sections['list']['index']]['title']; ?>
</a>
          	 		</li>
          	 		<?php endfor; else: ?>
          	 		<li>
          	 			<a class='times'>[00-00-00]</a>
          	 			<a href="news.html" class='module'>[资讯中心]</a>
          	 			<a href='news.html' title='没有所要查询的数据...' class='listTitle' >没有所要查询的数据...</a>
          	 		</li>
          	 		<?php endif; ?>
          	 		<!-- -
          	 		<li>

          	 		<a class='times'>[10-07-27]</a>
          	 		<a href="/web/common/main.asp?typeCode=265&id_module=269" class='module'>[推广优化]</a><a href='/html/detail_3251.html' title='搜索引擎优化十大错误做法' class='listTitle' >搜索引擎优化十大错误做法</a></li><li><a class='times'>[10-07-27]</a><a href="/web/common/main.asp?typeCode=265&id_module=269" class='module'>[推广优化]</a><a href='/html/detail_3250.html' title='搜索引擎优化（SEO）常见术语解析' class='listTitle' >搜索引擎优化（SEO）常见术语解析</a></li><li><a class='times'>[10-03-20]</a><a href="/web/common/main.asp?typeCode=265&id_module=272" class='module'>[网页设计]</a><a href='/html/detail_3242.html' title='优化网站设计的五种方法' class='listTitle' >优化网站设计的五种方法</a></li><li><a class='times'>[10-03-15]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3219.html' title='企业网站更新的必要性分析' class='listTitle' >企业网站更新的必要性分析</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3200.html' title='网站可用性对网站的重要性' class='listTitle' >网站可用性对网站的重要性</a></li><li><a class='times'>[10-03-15]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3215.html' title='网站最令人讨厌的几个用户体验' class='listTitle' >网站最令人讨厌的几个用户体验</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3203.html' title='简单是种美' class='listTitle' >简单是种美</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3241.html' title='清楚定义网站目标' class='listTitle' >清楚定义网站目标</a></li><li><a class='times'>[10-03-15]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3213.html' title='企业网站有必要做吗（建设企业网站的好处和目的）' class='listTitle' >企业网站有必要做吗（建设企业网站的好处和目的）</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3207.html' title='企业网站建设中容易出现的问题' class='listTitle' >企业网站建设中容易出现的问题</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=267" class='module'>[系统开发]</a><a href='/html/detail_3240.html' title='WEB系统开发——人事管理系统' class='listTitle' >WEB系统开发——人事管理系统</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=267" class='module'>[系统开发]</a><a href='/html/detail_3239.html' title='WEB系统开发——快件中心物流系统' class='listTitle' >WEB系统开发——快件中心物流系统</a></li><li><a class='times'>[10-03-19]</a><a href="/web/common/main.asp?typeCode=265&id_module=267" class='module'>[系统开发]</a><a href='/html/detail_3238.html' title='WEB系统开发——财务预算报账系统' class='listTitle' >WEB系统开发——财务预算报账系统</a></li><li><a class='times'>[10-03-14]</a><a href="/web/common/main.asp?typeCode=265&id_module=270" class='module'>[网站策划]</a><a href='/html/detail_3206.html' title='企业网站策划方案怎么写?' class='listTitle' >企业网站策划方案怎么写?</a></li>
          	 		-->
        	 	</ul>
          	</div>
          	<div class='clearfloat'></div>
          	<div class='pageBar'>
          		<p class='left'>1-15 of 46, 15条/页, 当前 1/4页</p>
          		<p class='right'>
          			<span class='first'>首页</span>
					<span class='previous'>上页</span>
					<span class='number'>
						<strong>1</strong>
						<a href='main_265_2.html' title='跳到第2页'>2</a>
						<a href='main_265_3.html' title='跳到第3页'>3</a>
						<a href='main_265_4.html' title='跳到第4页'>4</a>
					</span>
					<a href='main_265_2.html' class='next' title='跳到下页'>下页</a>
					<a href='main_265_4.html' class='last' title='跳到最后页'>尾页</a>
				</p>
			</div>
          </div>
      </div>
      <div class="clearfloat"></div>
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

