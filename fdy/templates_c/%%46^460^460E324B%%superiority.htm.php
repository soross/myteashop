<?php /* Smarty version 2.6.26, created on 2012-02-26 05:21:51
         compiled from superiority.htm */ ?>

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
        <div id="position"><a href='about.html'>关于泛地缘</a> &gt; 泛地缘优势</div>
        <div id="title">泛地缘优势</div>
        <div id="content">

          <div class='content'>
			<div id="contactTag" class="Page_Text" style="margin-bottom:15px;">
			<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['superList']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
				<!-- <b style=" font-size:14px;">&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['superList'][$this->_sections['list']['index']]['comm_type']; ?>
</b> -->
				<h2><?php echo $this->_tpl_vars['superList'][$this->_sections['list']['index']]['comm_type']; ?>
</h2>
				<div class="Content_DIV" style="margin-bottom:15px;">
				<?php echo $this->_tpl_vars['superList'][$this->_sections['list']['index']]['comm_value']; ?>

				</div>
			<?php endfor; endif; ?>


<!--
          <h2>优秀的信息化管理平台</h2>
<blockquote>
<p>先进的工作流系统</p>
<p>标准的项目管理信息系统</p>
<p>透明的备件查询系统</p>
<p>在线的客户服务档案系统</p>
<p>开放的、高质量的文档共享平台</p>
</blockquote>
<hr />
<h2>高水平的工程师服务团队</h2>
<blockquote>
<p>泛地缘科技工程师团队人数众多、专业化水平高，由泛地缘科技项目部门统一调度。工程师均接受泛地缘科技内部培训并均持有原厂技术认证。其中80%以上的工程师来自于泛地缘科技内部的工程师培养计划，在泛地缘科技经历大量的项目磨练，具备丰富技术支持经验和项目实施经验。</p>
</blockquote>
<hr />
<h2>经验丰富的项目管理团队</h2>
<blockquote>
<p>泛地缘科技项目管理团队是公司的又一核心团队，负责泛地缘科技所有项目的资源调度，进度计划安排，项目风险监控，项目质量保证等项目管理事务，凭借泛地缘科技一直以来规范的项目管理模式，泛地缘科技项目管理团队的丰富项目经验和项目管理能力饱受客户赞赏。</p>
</blockquote>
<hr />
<h2>精英云集的泛地缘智库</h2>
<blockquote>
<p>为了融合多方面的优势资源，发挥高端人才的价值，泛地缘科技成立了泛地缘智库。泛地缘智库成员均为各个领域的专家、精英、顶尖人才。泛地缘智库的团队智慧为泛地缘服务提供了强有力的专业技术保障和高含金量的运营、管理及发展建议。 泛地缘智库目前已经引入了30多名行业专家，其中12名泛地缘工程师经过严格审核后，加入了泛地缘智库。泛地缘智库成员为泛地缘客户提供必要的免费咨询，以让泛地缘服务可以更多的了解客户在工作中遇到的问题和困惑，通过简洁的咨询为客户问题的解决提供有效帮助。泛地缘智库不断引入高端人才，力求创造一个良好的生态环境，为智库成员在技术、管理、经营等领域提供一个良好的交流圈和成长平台。</p>
</blockquote>
 -->
</div><div class='content'></div>
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

