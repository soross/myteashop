<?php /* Smarty version 2.6.26, created on 2012-02-26 05:21:49
         compiled from about.htm */ ?>

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

      </div>
      <div id="mainBody">
              <div class=\'clearfloat\'></div>
        <div id="position"><a href=\'about.html\'>关于泛地缘</a> &gt; 泛地缘简介</div>
        <div id="title">泛地缘简介</div>
        <div id="content">
          <div class=\'content\'><h2>泛地缘简介</h2>
<blockquote>
<p>&ldquo;泛地缘科技&rdquo;是一个融创意、软件、硬件、集成于一体的专业IT服务商，业务内容涉及软件部署、硬件架构等。</p>
<p>我们有着丰富的实践经验、精良的专业技术和高度的敬业精神，在网络服务陷入白热化竞争的今天，我们依然遵循可用性原则，坚持为企业搭建可用性高、成本低的自动化系统。</p>
<p>我们的专业工程师在各项集成技能上均有超卓的表现。在每一个重要的工序上，我们均会和您有紧密的联系，务使每一个细节均能尽善尽美。</p>
</blockquote>
<hr />
<h2>泛地缘文化</h2>
<blockquote>
<p>积极主动追求卓越 <br />泛地缘科技从不以现有的成就自满，精益求精是每位成员面对自己工作时的基本态度，也是泛地缘科技得以不断成长的原动力。</p>
<p>重视团队合作精神 <br />泛地缘科技以专业团队来完成每位客户的托付，团队成员彼此间的默契与合作精神是泛地缘科技赢取客户信任以及成功的重要关键因素。</p>
<p>客户服务导向 <br />泛地缘科技所提供的产品及服务，向来以协助客户提升网络形象及竞争优势为核心宗旨，不仅是解决客户问题的好伙伴，更是支持客户成长的忠诚力量。</p>
<p>勇于面对市场挑战 <br />泛地缘科技兢兢业业地面对市场变化，以专业素养、坚定的毅力以及迅速的应变能力，面对市场不断的变化与挑战。</p>
</blockquote>
<hr />
<h2>服务宗旨</h2>
<blockquote>
<p>"更高、更快、更贴心" 是我们的服务宗旨，也是對客户的承诺。</p>
<p>「更高」 <br />我们的专业工程师及富有经验的架构师均有十足信心为客户提供高品质的系统集成建设服务，让客户的投入物超所值！</p>
<p>「更快」 <br />急客户之所急，出色而高效率的完成客户交付的任务。</p>
<p>「更贴心」 <br />凭借我们丰富的经验，针对不同客户不同需求，给予专业意见配合他们的经营手法，用我们的创意及技术诚意地为每一位客户创建出贴心的自动化系统，促使企业的高效运作。</p>
</blockquote></div><div class=\'content\'></div>
        </div>
      </div>
      <div class="clearfloat"></div>
    </div>
    <br class="clearfloat" />

'; ?>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/buttom.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>




</div>
</div>

</body>
</html>

